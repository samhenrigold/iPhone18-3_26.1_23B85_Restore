uint64_t closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(*(v12 + 176), *(v12 + 184));
  v13 = OUTLINED_FUNCTION_107();
  v14(v13);

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_63_14();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[4] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v7 = a4 + *a4;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error);

  return (v7)(v4 + 5, v4 + 4, v4 + 2);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 40);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:);

  return static EventManager.hydrateWithEvents(for:locale:)();
}

uint64_t closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4);
}

{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_127();
  return v1();
}

uint64_t ResultHydrator.setASHydrationType(answerSynthesisMetric:resultType:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF35AnswerSynthesisHydrationContentTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF35AnswerSynthesisHydrationContentTypeOSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - v5);
  v7 = *a2;
  if (v7 < 0x1D && ((0x1F47902Fu >> v7) & 1) != 0)
  {
    v8 = qword_2799EE108[*a2];
  }

  else
  {
    *v6 = 0;
    v8 = MEMORY[0x277D1FCD0];
  }

  v9 = *v8;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisHydrationContentType();
  OUTLINED_FUNCTION_17();
  (*(v11 + 104))(v6, v9, v10);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  return MEMORY[0x25F89EA30](v6);
}

void ResultHydrator.segmentResultsForHydration(_:)(uint64_t *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  OUTLINED_FUNCTION_14();
  v151 = v8;
  v152 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v146 = v9;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_4();
  v150 = v17;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v18);
  v20 = &v136 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_2();
  v149 = v22;
  specialized _copySequenceToContiguousArray<A>(_:)(a3);
  v24 = v23;
  v144 = v3;
  v25 = *(v3 + 16);
  v26 = *(v23 + 16);
  if (v26 >= v25)
  {
    v27 = *(v3 + 16);
  }

  else
  {
    v27 = *(v23 + 16);
  }

  v153 = specialized Array.subscript.getter(v27, v26, v23);
  v161 = v153;
  v162 = v28;
  v163 = v29;
  v164 = v30;
  if (v25 < 0)
  {
    goto LABEL_114;
  }

  v31 = v28;
  v32 = v29;
  v33 = v30;
  v156 = v20;
  v34 = specialized Array.subscript.getter(0, v27, v24);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v42 = v40 >> 1;
  v145 = v31;
  if (v40 >> 1 == v38)
  {
    swift_unknownObjectRelease();
    v43 = MEMORY[0x277D84F90];
LABEL_97:
    v130 = OUTLINED_FUNCTION_94();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v130, v131);
    a1[4] = lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [(offset: Int, element: SearchResult)] and conformance [A], &_sSaySi6offset_10OmniSearch0C6ResultV7elementtGMd, &_sSaySi6offset_10OmniSearch0C6ResultV7elementtGMR, MEMORY[0x277D83970]);
    *a1 = v43;
    v132 = OUTLINED_FUNCTION_94();
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v132, v133);
    a2[4] = lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type ArraySlice<(offset: Int, element: SearchResult)> and conformance ArraySlice<A>, &_ss10ArraySliceVySi6offset_10OmniSearch0E6ResultV7elementtGMd, &_ss10ArraySliceVySi6offset_10OmniSearch0E6ResultV7elementtGMR, MEMORY[0x277D83FB0]);
    v134 = swift_allocObject();
    *a2 = v134;
    v135 = v145;
    v134[2] = v153;
    v134[3] = v135;
    v134[4] = v32;
    v134[5] = v33;
    return;
  }

  v44 = v42 - v38;
  if (v42 <= v38)
  {
    goto LABEL_115;
  }

  v136 = a1;
  v137 = a2;
  v45 = *(v151 + 72);
  v140 = "ResultHydrator.fetchFullContent";
  v46 = v36 + v38 * v45;
  v47 = v152;
  v148 = *(v152 + 48);
  *&v41 = 136315394;
  v139 = v41;
  v142 = MEMORY[0x277D84F90];
  v48 = v156;
  v147 = v34;
  v155 = v45;
  while (1)
  {
    v157 = v44;
    v49 = v149;
    outlined init with copy of SpotlightRankingItem?(v46, v149, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v50 = *(v47 + 48);
    *v48 = *v49;
    outlined init with take of SearchResult(v49 + v148, v48 + v50);
    v51 = v150;
    outlined init with copy of SpotlightRankingItem?(v48, v150, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v52 = v51 + *(v47 + 48);
    type metadata accessor for SearchResult(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v53 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_3_37();
    _s10OmniSearch0B6ResultVWOhTm_6(v52, v54);
    v55 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v53);
    if (v56)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0;
    }

    if (v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = 0xE000000000000000;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logging.answerSynthesis);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();

    v62 = OUTLINED_FUNCTION_42_15();
    v154 = v32;
    if (v62)
    {
      v63 = OUTLINED_FUNCTION_90_1();
      a2 = OUTLINED_FUNCTION_260();
      v160[0] = a2;
      *v63 = v139;
      *(v63 + 4) = OUTLINED_FUNCTION_86_12();
      *(v63 + 12) = 2080;
      *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v60, v61, "%s bundleId: %s", v63, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_52_16();
    }

    v64 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v64 = v57 & 0xFFFFFFFFFFFFLL;
    }

    v32 = v33 >> 1;
    if (!v64)
    {
      break;
    }

    v160[0] = v57;
    v160[1] = v58;
    v158 = 0x6C7070612E6D6F63;
    v159 = 0xEA00000000002E65;
    v65 = lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      break;
    }

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();

    if (OUTLINED_FUNCTION_42_15())
    {
      v83 = OUTLINED_FUNCTION_90_1();
      v65 = OUTLINED_FUNCTION_260();
      v160[0] = v65;
      *v83 = v139;
      *(v83 + 4) = OUTLINED_FUNCTION_86_12();
      *(v83 + 12) = 2080;
      a2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v83 + 14) = a2;
      _os_log_impl(&dword_25D85C000, v81, v82, "%s Skip hydration for this 3p bundleId: %s", v83, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_52_16();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    v105 = v153;
    OUTLINED_FUNCTION_113_10();
    outlined init with copy of SpotlightRankingItem?(v106, v107, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v47 = v152;
    OUTLINED_FUNCTION_106_9(*v65);
    if ((v33 & 1) == 0 || (isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), v161 = v105, (isUniquelyReferenced_nonNull & 1) == 0))
    {
      if (__OFSUB__(v32, v154))
      {
        goto LABEL_108;
      }

      specialized ArraySlice._copyToNewBuffer(oldCount:)(v32 - v154);
    }

    OUTLINED_FUNCTION_112_12();
    v109 = a2 - v32;
    v110 = __OFSUB__(a2, v32);
    if (__OFSUB__(a2, v32))
    {
      goto LABEL_102;
    }

    v111 = a2 - v32;
    if (v33)
    {
      v112 = v161;
      type metadata accessor for __ContiguousArrayStorageBase();
      OUTLINED_FUNCTION_112_2();
      swift_unknownObjectRetain();
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_67_14();
      if (v93)
      {
        v114 = *(v113 + 24);

        v115 = (v114 >> 1) - v112;
        v96 = __OFADD__(v109, v115);
        v111 = &v109[v115];
        if (v96)
        {
          goto LABEL_113;
        }
      }

      else
      {

        v111 = a2 - v32;
      }
    }

    v116 = v109 + 1;
    if (v111 < (v109 + 1))
    {
      specialized ArraySlice._copyToNewBuffer(oldCount:)(a2 - v32);
      OUTLINED_FUNCTION_112_12();
      v117 = a2 - v32;
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_103;
      }
    }

    else
    {
      v117 = a2 - v32;
      if (v110)
      {
        goto LABEL_103;
      }
    }

    v80 = v116 - v117;
    if (__OFSUB__(v116, v117))
    {
      goto LABEL_104;
    }

    v153 = v161;
    if (v80)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      v118 = swift_dynamicCastClass();
      if (!v118)
      {
        swift_unknownObjectRelease();
        v118 = MEMORY[0x277D84F90];
      }

      v119 = *(v118 + 16);
      v96 = __OFADD__(v119, v80);
      v120 = v119 + v80;
      if (v96)
      {
        goto LABEL_109;
      }

      *(v118 + 16) = v120;

      v121 = a2 + v80;
      if (__OFADD__(a2, v80))
      {
        goto LABEL_110;
      }

      if ((v121 & 0x8000000000000000) != 0)
      {
        goto LABEL_111;
      }

      v33 = v33 & 1 | (2 * v121);
      v164 = v33;
    }

    OUTLINED_FUNCTION_92_9();
    v104 = v141;
LABEL_84:
    outlined init with take of SearchResultItem?(v104, v103, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v48 = v156;
    v122 = OUTLINED_FUNCTION_64_0();
    outlined destroy of IntentApplication?(v122, v123, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
LABEL_85:
    v46 += v80;
    v44 = v157 - 1;
    if (v157 == 1)
    {
      swift_unknownObjectRelease();
      a2 = v137;
      a1 = v136;
      v43 = v142;
      goto LABEL_97;
    }
  }

  v48 = v156;
  a2 = v143;
  outlined init with copy of SpotlightRankingItem?(v156, v143, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v47 = v152;
  v66 = *(v152 + 48);
  SearchResultItem.type.getter(v160);
  v67 = LOBYTE(v160[0]);
  OUTLINED_FUNCTION_3_37();
  _s10OmniSearch0B6ResultVWOhTm_6(v66 + a2, v68);
  OUTLINED_FUNCTION_133();
  if (*((*(v69 + 200))() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v67);
    v66 = v70;

    if (v66)
    {
      OUTLINED_FUNCTION_113_10();
      outlined init with copy of SpotlightRankingItem?(v71, v72, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      OUTLINED_FUNCTION_106_9(*v66);
      v73 = v142;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v126);
        v73 = v127;
      }

      v32 = v154;
      v142 = v73;
      v75 = *(v73 + 16);
      v74 = *(v73 + 24);
      if (v75 >= v74 >> 1)
      {
        v128 = OUTLINED_FUNCTION_22_5(v74);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v128);
        v142 = v129;
      }

      v76 = OUTLINED_FUNCTION_64_0();
      a2 = &_sSi6offset_10OmniSearch0C6ResultV7elementtMR;
      outlined destroy of IntentApplication?(v76, v77, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      *(v142 + 16) = v75 + 1;
      OUTLINED_FUNCTION_79();
      v80 = v155;
      outlined init with take of SearchResultItem?(v138, v79 + v78 + v75 * v155, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      goto LABEL_85;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_113_10();
  outlined init with copy of SpotlightRankingItem?(v84, v85, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  OUTLINED_FUNCTION_106_9(*v66);
  if ((v33 & 1) == 0 || (v86 = v153, v87 = swift_isUniquelyReferenced_nonNull(), v161 = v86, (v87 & 1) == 0))
  {
    if (__OFSUB__(v32, v154))
    {
      goto LABEL_101;
    }

    specialized ArraySlice._copyToNewBuffer(oldCount:)(v32 - v154);
  }

  OUTLINED_FUNCTION_112_12();
  v88 = a2 - v32;
  v89 = __OFSUB__(a2, v32);
  if (!__OFSUB__(a2, v32))
  {
    v90 = a2 - v32;
    if (v33)
    {
      v91 = v161;
      type metadata accessor for __ContiguousArrayStorageBase();
      OUTLINED_FUNCTION_112_2();
      swift_unknownObjectRetain();
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_67_14();
      if (v93)
      {
        v94 = *(v92 + 24);

        v95 = (v94 >> 1) - v91;
        v96 = __OFADD__(v88, v95);
        v90 = &v88[v95];
        if (v96)
        {
          goto LABEL_112;
        }
      }

      else
      {

        v90 = a2 - v32;
      }
    }

    v97 = v88 + 1;
    if (v90 < (v88 + 1))
    {
      specialized ArraySlice._copyToNewBuffer(oldCount:)(a2 - v32);
      OUTLINED_FUNCTION_112_12();
      v98 = a2 - v32;
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_99;
      }
    }

    else
    {
      v98 = a2 - v32;
      if (v89)
      {
        goto LABEL_99;
      }
    }

    v80 = v97 - v98;
    if (__OFSUB__(v97, v98))
    {
      goto LABEL_100;
    }

    v153 = v161;
    if (v80)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      v99 = swift_dynamicCastClass();
      if (!v99)
      {
        swift_unknownObjectRelease();
        v99 = MEMORY[0x277D84F90];
      }

      v100 = *(v99 + 16);
      v96 = __OFADD__(v100, v80);
      v101 = v100 + v80;
      if (v96)
      {
        goto LABEL_105;
      }

      *(v99 + 16) = v101;

      v102 = a2 + v80;
      if (__OFADD__(a2, v80))
      {
        goto LABEL_106;
      }

      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_107;
      }

      v33 = v33 & 1 | (2 * v102);
      v164 = v33;
    }

    OUTLINED_FUNCTION_92_9();
    v104 = v146;
    goto LABEL_84;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
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
}

uint64_t ResultHydrator.runDataDetectorsOnResults(_:locale:)(uint64_t a1, uint64_t a2, void *a3)
{
  v206 = a3;
  v217 = type metadata accessor for MobileSMSDocument();
  OUTLINED_FUNCTION_14();
  v204 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v216 = (v8 - v7);
  OUTLINED_FUNCTION_78_0();
  v215 = type metadata accessor for EmailDocument();
  OUTLINED_FUNCTION_14();
  v203 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v214 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  MEMORY[0x28223BE20](v14);
  v213 = &v187 - v15;
  OUTLINED_FUNCTION_78_0();
  v221 = type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v187 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v187 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_2();
  v220 = v31;
  OUTLINED_FUNCTION_78_0();
  v219 = type metadata accessor for CalendarEvent();
  OUTLINED_FUNCTION_14();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_36();
  v218 = (v36 - v35);
  v37 = OUTLINED_FUNCTION_78_0();
  v227 = type metadata accessor for SearchResultItem(v37);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  v222 = v40;
  v41 = OUTLINED_FUNCTION_78_0();
  v42 = type metadata accessor for SearchResult(v41);
  v43 = OUTLINED_FUNCTION_21(v42);
  v45 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_39_0();
  v228 = v46;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  v52 = &v187 - v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_2();
  v225 = v54;
  OUTLINED_FUNCTION_133();
  if ((*(v55 + 80))(2))
  {
    v200 = v26;
    type metadata accessor for DataDetectorsController();
    swift_allocObject();
    v56 = DataDetectorsController.init()();
    v57 = *(a1 + 16);
    if (v57)
    {
      v207 = v56;
      v201 = v23;
      v192 = v20;
      v199 = a2;
      OUTLINED_FUNCTION_79();
      v224 = v58;
      v59 = a1 + v58;
      v223 = *(v45 + 72);
      v198 = v33 + 32;
      v202 = (v17 + 16);
      v226 = (v17 + 8);
      v197 = v33 + 16;
      v196 = v33 + 8;
      v195 = v204 + 32;
      v191 = v204 + 16;
      v194 = v204 + 8;
      v193 = v203 + 32;
      v190 = v203 + 16;
      v203 += 8;
      a1 = MEMORY[0x277D84F90];
      v60 = v222;
      v61 = v225;
      do
      {
        _s10OmniSearch0B6ResultVWOcTm_7(v59, v61, type metadata accessor for SearchResult);
        _s10OmniSearch0B6ResultVWOcTm_7(v61, v52, type metadata accessor for SearchResult);
        swift_beginAccess();
        OUTLINED_FUNCTION_5_30();
        _s10OmniSearch0B6ResultVWOcTm_7(v52, v60, v62);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v64 = &loc_25DBC7000;
        v61 = v226 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            OUTLINED_FUNCTION_57_11();
            v86 = v216;
            v107(v216, v60, v217);
            NoteDocument.folderName.getter();
            if (v108)
            {
              v109 = v108;
              OUTLINED_FUNCTION_133();
              (*(v110 + 96))();

              OUTLINED_FUNCTION_109_11();
              if (!v71)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v111 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v111, static Logging.answerSynthesis);
              v112 = v192;
              OUTLINED_FUNCTION_116_6();
              v204 = v113;
              v113();
              v114 = Logger.logObject.getter();
              v115 = static os_log_type_t.info.getter();
              if (OUTLINED_FUNCTION_75_11(v115))
              {
                v188 = OUTLINED_FUNCTION_51_0();
                v189 = OUTLINED_FUNCTION_49_0();
                v231 = v189;
                OUTLINED_FUNCTION_54_16(4.9654e-34);
                OUTLINED_FUNCTION_213_0();
                v116();
                v187 = String.init<A>(describing:)();
                v64 = *v226;
                (*v226)(v112, v221);
                v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                v118 = v188;
                *(v188 + 4) = v117;
                OUTLINED_FUNCTION_55_13();
                _os_log_impl(v119, v120, v121, v122, v118, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v189);
                OUTLINED_FUNCTION_42_0();
                v109 = v221;
                OUTLINED_FUNCTION_42_0();
              }

              else
              {

                v64 = *v226;
                (*v226)(v112, v109);
              }

              v60 = v222;
              v147 = v201;
              OUTLINED_FUNCTION_213_0();
              v148();
              OUTLINED_FUNCTION_73_10();
              v86 = v216;
              MobileSMSDocument.dataDetectorResults.setter();
              (v64)(v147, v109);
              OUTLINED_FUNCTION_57_11();
              v149 = OUTLINED_FUNCTION_119_6();
              v150(v149);
              swift_storeEnumTagMultiPayload();
              outlined assign with take of SearchResultItem(v109, v52);
            }

            OUTLINED_FUNCTION_0_49();
            _s10OmniSearch0B6ResultVWOcTm_7(v52, v211, v151);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v178 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v178, v179, v180, a1);
              a1 = v181;
            }

            OUTLINED_FUNCTION_56_12();
            if (v137)
            {
              v182 = OUTLINED_FUNCTION_22_5(v152);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182, v183, v184, a1);
              a1 = v185;
            }

            OUTLINED_FUNCTION_57_11();
            v153(v216, v217);
            v139 = &v234;
            goto LABEL_79;
          case 2:
            OUTLINED_FUNCTION_57_11();
            v66(v218, v60, v219);
            v67.value._countAndFlagsBits = v199;
            v67.value._object = v206;
            object = CalendarEvent.llmConsumableDescription(locale:)(v67)._object;
            OUTLINED_FUNCTION_133();
            v70 = v220;
            (*(v69 + 96))();

            OUTLINED_FUNCTION_109_11();
            if (!v71)
            {
              OUTLINED_FUNCTION_0_5();
              swift_once();
            }

            v72 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v72, static Logging.answerSynthesis);
            v73 = v205;
            OUTLINED_FUNCTION_116_6();
            v74();
            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_75_11(v76))
            {
              v77 = OUTLINED_FUNCTION_51_0();
              v188 = OUTLINED_FUNCTION_49_0();
              v231 = v188;
              v78 = OUTLINED_FUNCTION_54_16(4.9654e-34);
              v70(v78, v73, v221);
              String.init<A>(describing:)();
              v189 = v70;
              v64 = v79;
              v204 = *v226;
              (v204)(v73, v221);
              v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v77 + 4) = v80;
              OUTLINED_FUNCTION_55_13();
              _os_log_impl(v81, v82, v83, v84, v77, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v188);
              OUTLINED_FUNCTION_37_0();
              object = v221;
              OUTLINED_FUNCTION_42_0();

              v85 = v189;
            }

            else
            {

              v204 = *v226;
              (v204)(v73, object);
              v85 = v70;
            }

            v60 = v222;
            v85(v213, v220, object);
            OUTLINED_FUNCTION_73_10();
            v86 = v218;
            CalendarEvent.dataDetectorResults.setter();
            OUTLINED_FUNCTION_57_11();
            v61 = v212;
            v134(v212, v86, v219);
            swift_storeEnumTagMultiPayload();
            outlined assign with take of SearchResultItem(v61, v52);
            OUTLINED_FUNCTION_0_49();
            _s10OmniSearch0B6ResultVWOcTm_7(v52, v209, v135);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v162 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v162, v163, v164, a1);
              a1 = v165;
            }

            OUTLINED_FUNCTION_56_12();
            if (v137)
            {
              v166 = OUTLINED_FUNCTION_22_5(v136);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v166, v167, v168, a1);
              a1 = v169;
            }

            (v204)(v220, object);
            OUTLINED_FUNCTION_57_11();
            v138(v218, v219);
            v139 = &v232;
            goto LABEL_79;
          case 3:
            type metadata accessor for Photo();
            goto LABEL_47;
          case 4:
            type metadata accessor for NoteDocument();
            goto LABEL_47;
          case 5:
            type metadata accessor for Reminder();
            goto LABEL_47;
          case 6:
            type metadata accessor for PhoneHistory();
            goto LABEL_47;
          case 7:
            type metadata accessor for VoicemailTranscript();
            goto LABEL_47;
          case 8:
            type metadata accessor for JournalEntry();
            goto LABEL_47;
          case 9:
            type metadata accessor for VoiceMemo();
            goto LABEL_47;
          case 10:
            type metadata accessor for Safari();
            goto LABEL_47;
          case 11:
            type metadata accessor for FileDocument();
            goto LABEL_47;
          case 12:
            type metadata accessor for WalletTransaction();
            goto LABEL_47;
          case 13:
            type metadata accessor for WalletPass();
            goto LABEL_47;
          case 14:
            type metadata accessor for Contact();
            goto LABEL_47;
          case 15:
            type metadata accessor for Appointment();
            goto LABEL_47;
          case 16:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);

            type metadata accessor for FlightReservation();
            goto LABEL_47;
          case 17:
            type metadata accessor for HotelReservation();
            goto LABEL_47;
          case 18:
            type metadata accessor for Party();
            goto LABEL_47;
          case 19:
            type metadata accessor for RestaurantReservation();
            goto LABEL_47;
          case 20:
            type metadata accessor for RentalCarReservation();
            goto LABEL_47;
          case 21:
            type metadata accessor for ShippingOrder();
            goto LABEL_47;
          case 22:
            type metadata accessor for TicketedTransportation();
            goto LABEL_47;
          case 23:
            type metadata accessor for TicketedShow();
            goto LABEL_47;
          case 24:
            type metadata accessor for Trip();
            goto LABEL_47;
          case 25:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMd, &_s10OmniSearch10GlobalItemV_SayAA16DialogExperienceCG11experiencestMR);

            v65 = type metadata accessor for GlobalItem;
            goto LABEL_45;
          case 26:
          case 27:
            v65 = type metadata accessor for SearchResultItem;
            goto LABEL_45;
          case 28:
            v65 = type metadata accessor for Answer;
LABEL_45:
            _s10OmniSearch0B6ResultVWOhTm_6(v60, v65);
            goto LABEL_48;
          case 29:
            type metadata accessor for OnScreen();
            goto LABEL_47;
          case 30:
            type metadata accessor for GenericSpotlightItem();
LABEL_47:
            OUTLINED_FUNCTION_17();
            (*(v123 + 8))(v60);
LABEL_48:
            OUTLINED_FUNCTION_109_11();
            if (!v71)
            {
              OUTLINED_FUNCTION_0_5();
              swift_once();
            }

            v124 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v124, static Logging.answerSynthesis);
            v125 = Logger.logObject.getter();
            v126 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v125, v126))
            {
              v127 = OUTLINED_FUNCTION_51_0();
              v128 = OUTLINED_FUNCTION_49_0();
              v231 = v128;
              *v127 = 136315138;
              SearchResultItem.type.getter(&v230);
              v229 = v230;
              lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
              dispatch thunk of CustomStringConvertible.description.getter();
              v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v127 + 4) = v129;
              _os_log_impl(&dword_25D85C000, v125, v126, "Skip running dd on %s", v127, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v128);
              OUTLINED_FUNCTION_42_0();
              v60 = v222;
              OUTLINED_FUNCTION_42_0();
            }

            v61 = v225;
            OUTLINED_FUNCTION_0_49();
            _s10OmniSearch0B6ResultVWOcTm_7(v61, v228, v130);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v154 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v154, v155, v156, a1);
              a1 = v157;
            }

            v64 = *(a1 + 16);
            v131 = *(a1 + 24);
            v86 = (v64 + 1);
            if (v64 >= v131 >> 1)
            {
              v158 = OUTLINED_FUNCTION_22_5(v131);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v158, v159, v160, a1);
              a1 = v161;
            }

            v132 = v228;
            break;
          default:
            OUTLINED_FUNCTION_57_11();
            v86 = v214;
            v87(v214, v60, v215);
            NoteDocument.folderName.getter();
            if (v88)
            {
              OUTLINED_FUNCTION_133();
              v90 = v208;
              (*(v89 + 96))();

              OUTLINED_FUNCTION_109_11();
              v91 = v90;
              if (!v71)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v92 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v92, static Logging.answerSynthesis);
              v93 = v200;
              v94 = v91;
              v95 = v221;
              v204 = *v202;
              (v204)(v200, v94, v221);
              v96 = Logger.logObject.getter();
              v97 = static os_log_type_t.info.getter();
              if (OUTLINED_FUNCTION_75_11(v97))
              {
                v188 = OUTLINED_FUNCTION_51_0();
                v189 = OUTLINED_FUNCTION_49_0();
                v231 = v189;
                OUTLINED_FUNCTION_54_16(4.9654e-34);
                OUTLINED_FUNCTION_213_0();
                v98();
                v187 = String.init<A>(describing:)();
                v99 = *v226;
                (*v226)(v93, v221);
                v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                *(v188 + 4) = v100;
                v101 = v99;
                OUTLINED_FUNCTION_55_13();
                _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v189);
                OUTLINED_FUNCTION_42_0();
                v95 = v221;
                OUTLINED_FUNCTION_42_0();
              }

              else
              {

                v140 = v93;
                v101 = *v226;
                (*v226)(v140, v95);
              }

              v64 = v208;
              OUTLINED_FUNCTION_213_0();
              v141();
              OUTLINED_FUNCTION_73_10();
              v86 = v214;
              EmailDocument.dataDetectorResults.setter();
              v101(v64, v95);
              OUTLINED_FUNCTION_57_11();
              v142 = OUTLINED_FUNCTION_119_6();
              v143(v142);
              swift_storeEnumTagMultiPayload();
              outlined assign with take of SearchResultItem(v95, v52);
              v60 = v222;
            }

            OUTLINED_FUNCTION_0_49();
            _s10OmniSearch0B6ResultVWOcTm_7(v52, v210, v144);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v170 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v170, v171, v172, a1);
              a1 = v173;
            }

            OUTLINED_FUNCTION_56_12();
            if (v137)
            {
              v174 = OUTLINED_FUNCTION_22_5(v145);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v174, v175, v176, a1);
              a1 = v177;
            }

            OUTLINED_FUNCTION_57_11();
            v146(v214, v215);
            v139 = &v233;
LABEL_79:
            v132 = *(v139 - 32);
            break;
        }

        _s10OmniSearch0B6ResultVWOhTm_6(v61, type metadata accessor for SearchResult);
        *(a1 + 16) = v86;
        v133 = v223;
        outlined init with take of SearchResult(v132, a1 + v224 + v64 * v223);
        _s10OmniSearch0B6ResultVWOhTm_6(v52, type metadata accessor for SearchResult);
        v59 += v133;
        --v57;
      }

      while (v57);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
  }

  return a1;
}

uint64_t ResultHydrator.fetchFullContentForMailResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v2 = type metadata accessor for OSSignpostID();
  v0[3] = v2;
  OUTLINED_FUNCTION_21(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_160();
  v0[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {

    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_78();
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(*(v0 + 56), "ResultHydrator.fetchFullContentForMailResults");

  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 56);

  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v1, "ResultHydrator.fetchFullContentForMailResults");

  OUTLINED_FUNCTION_127();

  return v2();
}

uint64_t ResultHydrator.fetchFullContentForPhotosResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[26] = v2;
  v1[27] = v0;
  v3 = type metadata accessor for SpotlightRankingItem();
  v1[28] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[29] = v4;
  v1[30] = OUTLINED_FUNCTION_199();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v1[31] = OUTLINED_FUNCTION_160();
  v1[32] = swift_task_alloc();
  v6 = type metadata accessor for SearchResultItem(0);
  v1[33] = v6;
  OUTLINED_FUNCTION_114(v6);
  v1[34] = OUTLINED_FUNCTION_160();
  v1[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v1[36] = OUTLINED_FUNCTION_199();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v1[37] = OUTLINED_FUNCTION_199();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v1[38] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v1[39] = OUTLINED_FUNCTION_199();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v1[40] = OUTLINED_FUNCTION_160();
  v1[41] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v1[42] = OUTLINED_FUNCTION_160();
  v1[43] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PhotoVSgMd, &_s15OmniSearchTypes5PhotoVSgMR);
  OUTLINED_FUNCTION_114(v13);
  v1[44] = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for Photo();
  v1[45] = v14;
  OUTLINED_FUNCTION_21(v14);
  v1[46] = v15;
  v1[47] = OUTLINED_FUNCTION_160();
  v1[48] = swift_task_alloc();
  v16 = type metadata accessor for IndexSet();
  v1[49] = v16;
  OUTLINED_FUNCTION_21(v16);
  v1[50] = v17;
  v1[51] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for SearchResult(0);
  v1[52] = v18;
  OUTLINED_FUNCTION_21(v18);
  v1[53] = v19;
  v1[54] = OUTLINED_FUNCTION_160();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v20 = type metadata accessor for OSSignpostID();
  v1[59] = v20;
  OUTLINED_FUNCTION_21(v20);
  v1[60] = v21;
  v1[61] = OUTLINED_FUNCTION_160();
  v1[62] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v22);
}

uint64_t ResultHydrator.fetchFullContentForPhotosResults(_:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    goto LABEL_124;
  }

  while (1)
  {
    v13 = type metadata accessor for OSSignposter();
    OUTLINED_FUNCTION_200(v13, static Logging.searchSignposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v14 = OSSignposter.logHandle.getter();
    static os_signpost_type_t.begin.getter();
    if (OUTLINED_FUNCTION_190_6())
    {
      v15 = OUTLINED_FUNCTION_172();
      v16 = OUTLINED_FUNCTION_159_5(v15);
      OUTLINED_FUNCTION_193(&dword_25D85C000, v17, v18, v16, "ResultHydrator.fetchFullContentForPhotosResults", "");
      OUTLINED_FUNCTION_37_0();
    }

    v19 = *(v12 + 496);
    v20 = *(v12 + 472);
    v21 = *(v12 + 480);
    v22 = v12;
    v23 = *(v12 + 208);

    v24 = OUTLINED_FUNCTION_59_12();
    v25(v24, v19, v20);
    v26 = type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_170(v26);
    OUTLINED_FUNCTION_45_4();
    v365 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v21 + 8))(v19, v20);
    v27 = *(v23 + 16);
    v28 = MEMORY[0x277D84F90];
    v385 = v12;
    v378 = v27;
    if (v27)
    {
      v29 = *(v12 + 424);
      v30 = *(v22 + 208);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v31 = v28;
      OUTLINED_FUNCTION_79();
      v33 = v30 + v32;
      v34 = *(v29 + 72);
      do
      {
        v35 = v385[58];
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_7(v33, v35, v36);
        SearchResultItem.associatedValue.getter(v385 + 2);
        __swift_project_boxed_opaque_existential_1(v385 + 2, v385[5]);
        v37 = OUTLINED_FUNCTION_54_0();
        v39 = v38(v37);
        v41 = v40;
        OUTLINED_FUNCTION_3_37();
        _s10OmniSearch0B6ResultVWOhTm_6(v35, v42);
        __swift_destroy_boxed_opaque_existential_1Tm(v385 + 2);
        v44 = *(v28 + 16);
        v43 = *(v28 + 24);
        if (v44 >= v43 >> 1)
        {
          v46 = OUTLINED_FUNCTION_26_3(v43);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46, v44 + 1, 1);
        }

        *(v28 + 16) = v44 + 1;
        v45 = v28 + 16 * v44;
        *(v45 + 32) = v39;
        *(v45 + 40) = v41;
        v33 += v34;
        --v27;
      }

      while (v27);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    v47 = [objc_allocWithZone(MEMORY[0x277CD9880]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_25DBC8180;
    *(v48 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v48 + 40) = v49;
    v50 = OUTLINED_FUNCTION_107();
    outlined bridged method (mbnn) of @objc PHFetchOptions.addFetchPropertySets(_:)(v50, v51);
    v52 = objc_opt_self();
    v53 = &off_2799EF000;
    v380 = v31;
    v366 = v47;
    if ([v52 isMultiLibraryModeEnabled])
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static Logging.answerSynthesis);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_11(v56))
      {
        v57 = OUTLINED_FUNCTION_51_0();
        v387 = OUTLINED_FUNCTION_49_0();
        *v57 = 136315138;
        *(v57 + 4) = OUTLINED_FUNCTION_81_13();
        OUTLINED_FUNCTION_76_11(&dword_25D85C000, v58, v59, "%s Multi Library mode enabled");
        __swift_destroy_boxed_opaque_existential_1Tm(v387);
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_42_0();
      }

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_11(v61))
      {
        v62 = OUTLINED_FUNCTION_51_0();
        v388 = OUTLINED_FUNCTION_49_0();
        *v62 = 136315138;
        OUTLINED_FUNCTION_98_2();
        *(v62 + 4) = OUTLINED_FUNCTION_81_13();
        OUTLINED_FUNCTION_76_11(&dword_25D85C000, v63, v64, "%s Fetching from system library");
        __swift_destroy_boxed_opaque_existential_1Tm(v388);
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_42_0();
      }

      v385[24] = 0;
      v65 = [v52 openPhotoLibraryWithWellKnownIdentifier:1 error:v385 + 24];
      v66 = v385[24];
      if (!v65)
      {
        v109 = v66;
        v110 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v99 = MEMORY[0x277D84F90];
LABEL_29:
        v112 = v110;
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = OUTLINED_FUNCTION_90_1();
          swift_slowAlloc();
          v390 = OUTLINED_FUNCTION_163();
          *v115 = 136315394;
          OUTLINED_FUNCTION_98_2();
          *(v115 + 4) = OUTLINED_FUNCTION_81_13();
          *(v115 + 12) = 2112;
          v116 = v110;
          v117 = _swift_stdlib_bridgeErrorToNSError();
          *(v115 + 14) = v117;
          *v53 = v117;
          OUTLINED_FUNCTION_115_8();
          _os_log_impl(v118, v119, v120, v121, v122, 0x16u);
          outlined destroy of IntentApplication?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_33_0();
          __swift_destroy_boxed_opaque_existential_1Tm(v390);
          OUTLINED_FUNCTION_72_9();
          OUTLINED_FUNCTION_52_16();
        }

        else
        {
        }

        v98 = v385;
        goto LABEL_33;
      }

      v67 = v65;
      v68 = v66;
      [v47 setPhotoLibrary_];

      v69 = objc_opt_self();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v71 = v47;
      v72 = [v69 fetchAssetsWithLocalIdentifiers:isa options:v71];

      if (([v72 &selRef_visibleForUse_] & 0x8000000000000000) != 0)
      {
        goto LABEL_126;
      }

      v73 = v385[50];
      IndexSet.init(integersIn:)();
      IndexSet._bridgeToObjectiveC()(v74);
      v76 = v75;
      v77 = *(v73 + 8);
      v78 = OUTLINED_FUNCTION_100_4();
      v77(v78);
      v79 = [v72 objectsAtIndexes_];

      v53 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for PHAsset, 0x277CD97A8);
      v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v386 = v80;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      v370 = v80;
      if (OUTLINED_FUNCTION_16_11(v82))
      {
        v83 = OUTLINED_FUNCTION_51_0();
        v389 = OUTLINED_FUNCTION_49_0();
        *v83 = 136315138;
        OUTLINED_FUNCTION_98_2();
        *(v83 + 4) = OUTLINED_FUNCTION_81_13();
        OUTLINED_FUNCTION_76_11(&dword_25D85C000, v84, v85, "%s Fetching from syndication library");
        __swift_destroy_boxed_opaque_existential_1Tm(v389);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_42_0();
      }

      v385[25] = 0;
      v86 = [v52 openPhotoLibraryWithWellKnownIdentifier:3 error:v385 + 25];
      v87 = v385[25];
      if (!v86)
      {
        v111 = v87;

        v110 = _convertNSErrorToError(_:)();
        swift_willThrow();

        v31 = v380;
        v99 = v370;
        goto LABEL_29;
      }

      v88 = v86;
      v89 = v87;
      [v71 setPhotoLibrary_];

      v90 = Array._bridgeToObjectiveC()().super.isa;
      v91 = [v69 fetchAssetsWithLocalIdentifiers:v90 options:v71];

      if (([v91 count] & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      IndexSet.init(integersIn:)();
      IndexSet._bridgeToObjectiveC()(v92);
      v94 = v93;
      v95 = OUTLINED_FUNCTION_100_4();
      v77(v95);
      v96 = [v91 objectsAtIndexes_];

      v97 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      specialized Array.append<A>(contentsOf:)(v97);

      v98 = v385;
      v99 = v386;
      v31 = v380;
    }

    else
    {
      v100 = objc_opt_self();
      v101 = Array._bridgeToObjectiveC()().super.isa;
      v102 = [v100 fetchAssetsWithLocalIdentifiers:v101 options:v47];

      if (([v102 count] & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
      }

      v98 = v385;
      IndexSet.init(integersIn:)();
      IndexSet._bridgeToObjectiveC()(v103);
      v105 = v104;
      v106 = OUTLINED_FUNCTION_100_4();
      v107(v106);
      v108 = [v102 objectsAtIndexes_];

      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for PHAsset, 0x277CD97A8);
      v99 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

LABEL_33:
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for PHAsset, 0x277CD97A8);
    v381 = Dictionary.init(dictionaryLiteral:)();
    v123 = v378;
    v379 = specialized Array.count.getter();
    v371 = v99;
    if (!v379)
    {
      break;
    }

    v124 = v99;
    v12 = 0;
    v372 = (v98 + 22);
    v374 = (v124 & 0xC000000000000001);
    v367 = v124 + 32;
    v368 = v124 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v374)
      {
        v125 = MEMORY[0x25F89FFD0](v12, v371);
      }

      else
      {
        if (v12 >= *(v368 + 16))
        {
          goto LABEL_123;
        }

        v125 = *(v367 + 8 * v12);
      }

      v126 = v125;
      v127 = __OFADD__(v12++, 1);
      if (v127)
      {
        goto LABEL_118;
      }

      v128 = [v125 localIdentifier];
      v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v130;

      v98[22] = 47;
      v98[23] = 0xE100000000000000;
      v132 = swift_task_alloc();
      *(v132 + 16) = v372;
      v133 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(1, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v132, v129, v131, v372);

      v134 = *(v133 + 16);
      if (v134)
      {
        v382 = v126;
        v391 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134, 0);
        v135 = 0;
        v136 = v391;
        v137 = (v133 + 56);
        while (v135 < *(v133 + 16))
        {
          v138 = *(v137 - 3);
          v139 = *(v137 - 2);
          v140 = *(v137 - 1);
          v141 = *v137;

          v142 = MEMORY[0x25F89F5B0](v138, v139, v140, v141);
          v144 = v143;

          v146 = v391[2];
          v145 = v391[3];
          if (v146 >= v145 >> 1)
          {
            v148 = OUTLINED_FUNCTION_26_3(v145);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v148, v146 + 1, 1);
          }

          ++v135;
          v391[2] = v146 + 1;
          v147 = &v391[2 * v146];
          v147[4] = v142;
          v147[5] = v144;
          v137 += 4;
          if (v134 == v135)
          {

            v126 = v382;
            goto LABEL_48;
          }
        }

        __break(1u);
        OUTLINED_FUNCTION_93_11();

        $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v365, "ResultHydrator.fetchFullContentForPhotosResults");

        OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_63_14();

        return v342(v341, v342, v343, v344, v345, v346, v347, v348, a9, a10, a11, a12);
      }

      v136 = MEMORY[0x277D84F90];
LABEL_48:
      v123 = v378;
      if (!v136[2])
      {
        goto LABEL_119;
      }

      v149 = v136[4];
      v150 = v136[5];

      v151 = v126;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v153 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v150);
      v155 = v381[2];
      v156 = (v154 & 1) == 0;
      v157 = v155 + v156;
      if (__OFADD__(v155, v156))
      {
        break;
      }

      v158 = v153;
      v159 = v154;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo7PHAssetCGMd, &_ss17_NativeDictionaryVySSSo7PHAssetCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v157))
      {
        v160 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v150);
        if ((v159 & 1) != (v161 & 1))
        {
          OUTLINED_FUNCTION_63_14();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v158 = v160;
      }

      if (v159)
      {
        v162 = v381[7];
        v163 = *(v162 + 8 * v158);
        *(v162 + 8 * v158) = v151;

        v151 = v163;
      }

      else
      {
        OUTLINED_FUNCTION_84_9(&v381[v158 >> 6]);
        v164 = (v381[6] + 16 * v158);
        *v164 = v149;
        v164[1] = v150;
        *(v381[7] + 8 * v158) = v151;
        v165 = v381[2];
        v127 = __OFADD__(v165, 1);
        v166 = v165 + 1;
        if (v127)
        {
          goto LABEL_122;
        }

        v381[2] = v166;
      }

      v31 = v380;
      v98 = v385;
      if (v12 == v379)
      {
        goto LABEL_58;
      }
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

LABEL_58:
  v364 = v98[52];
  v167 = v98[46];
  v12 = v98[29];

  v168 = 0;
  v169 = *(v31 + 16);
  v362 = (v12 + 32);
  v363 = (v167 + 8);
  v170 = v31 + 40;
  v171 = MEMORY[0x277D84F90];
  v373 = v169;
  v369 = v31 + 40;
LABEL_59:
  v383 = (v170 + 16 * v168);
  while (v169 != v168)
  {
    if (v168 >= *(v380 + 16))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    if (v381[2])
    {
      v172 = *(v383 - 1);
      v173 = *v383;

      v174 = specialized __RawDictionaryStorage.find<A>(_:)(v172, v173);
      LOBYTE(v172) = v175;

      if (v172)
      {
        v375 = *(v381[7] + 8 * v174);
        v376 = v168;
        v207 = v168 + 1;
        ResultHydrator.ocrOutput(for:)(v375);
        if (v208)
        {
          if (v376 >= v378)
          {
            goto LABEL_128;
          }

          OUTLINED_FUNCTION_42_16();
          v211 = v210 & ~v209;
          v359 = *(v212 + 72);
          SearchResultItem.associatedValue.getter(v98 + 17);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
          if (swift_dynamicCast())
          {
            v377 = v211;
            v213 = v98[58];
            __swift_storeEnumTagSinglePayload(v98[44], 0, 1, v98[45]);
            v214 = OUTLINED_FUNCTION_63_0();
            v215(v214);
            OUTLINED_FUNCTION_0_49();
            v216 = OUTLINED_FUNCTION_100_4();
            _s10OmniSearch0B6ResultVWOcTm_7(v216, v217, v218);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
            v219 = CodableNSSecureCoding.wrappedValue.getter();
            OUTLINED_FUNCTION_3_37();
            _s10OmniSearch0B6ResultVWOhTm_6(v213, v220);
            WalletPass.id.getter();
            WalletPass.title.getter();
            MEMORY[0x25F89D070]();
            MEMORY[0x25F89D150]();
            MEMORY[0x25F89D0F0]();
            Photo.snippet.getter();
            v358 = v221;
            Photo.date.getter();
            Photo.businessNames.getter();
            Photo.peopleNames.getter();
            Photo.peopleContactIdentifiers.getter();
            Photo.peoplePersonIdentifiers.getter();
            type metadata accessor for PartialExtractedAttributes();
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v222, v223, v224, v225);
            type metadata accessor for FeatureFlagService();
            v357 = swift_allocObject();
            v226 = one-time initialization token for search;
            v227 = v219;
            if (v226 != -1)
            {
              swift_once();
            }

            v228 = type metadata accessor for Logger();
            __swift_project_value_buffer(v228, static Logging.search);
            v229 = v227;
            v230 = Logger.logObject.getter();
            v231 = static os_log_type_t.info.getter();

            v360 = v207;
            if (os_log_type_enabled(v230, v231))
            {
              OUTLINED_FUNCTION_51_0();
              v392 = OUTLINED_FUNCTION_163();
              *v219 = 136315138;
              v232 = [v229 attributeSet];
              CSSearchableItemAttributeSet.keyStrings.getter();
              v234 = v233;

              MEMORY[0x25F89F8A0](v234, MEMORY[0x277D837D0]);
              OUTLINED_FUNCTION_102_5();

              OUTLINED_FUNCTION_26_2();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
              OUTLINED_FUNCTION_37_3();

              *(v219 + 1) = v232;
              OUTLINED_FUNCTION_126_10(&dword_25D85C000, v230, v231, "Photo: parsing attribute keys: %s", v349);
              __swift_destroy_boxed_opaque_existential_1Tm(v392);
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_33_0();
            }

            v235 = v229;
            v236 = Logger.logObject.getter();
            v237 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v236, v237))
            {
              OUTLINED_FUNCTION_51_0();
              v393 = OUTLINED_FUNCTION_163();
              *v219 = 136642819;
              v238 = [v235 attributeSet];
              CSSearchableItemAttributeSet.kvStrings.getter();
              v240 = v239;

              v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
              MEMORY[0x25F89F8A0](v240, v241);
              OUTLINED_FUNCTION_102_5();

              OUTLINED_FUNCTION_26_2();
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
              OUTLINED_FUNCTION_37_3();

              *(v219 + 1) = v238;
              OUTLINED_FUNCTION_126_10(&dword_25D85C000, v236, v237, "Photo: parsing attributes: %{sensitive}s");
              __swift_destroy_boxed_opaque_existential_1Tm(v393);
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_33_0();
            }

            else
            {
            }

            v355 = v385[56];
            v351 = v385[43];
            v273 = v385[40];
            v274 = v385[41];
            v350 = v274;
            v275 = v385[38];
            v276 = v385[39];
            v277 = v385[37];
            v352 = v385[35];
            v356 = v385[31];
            v353 = v385[32];
            v354 = v385[28];
            outlined init with copy of SpotlightRankingItem?(v351, v385[42], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined init with copy of SpotlightRankingItem?(v274, v273, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
            v278 = v235;

            PreExtractedCard.init(item:featureFlagService:)(v278, v357, v276);
            v279 = v278;

            PreExtractedContact.init(item:featureFlagService:)(v279, v357, v275);
            v280 = v279;
            PreExtractedSharedLink.init(item:)(v280, v277);
            v281 = v280;

            PreExtractedBreadcrumb.init(item:featureFlagService:)(v281, v357);
            v349 = v358;
            Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

            outlined destroy of IntentApplication?(v350, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
            outlined destroy of IntentApplication?(v351, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v282 = OUTLINED_FUNCTION_100_4();
            v283(v282);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v284, v285, v286, v354);
            *(v355 + v364[7]) = MEMORY[0x277D84F90];
            v287 = (v355 + v364[10]);
            *v287 = 0;
            v287[1] = 0;
            OUTLINED_FUNCTION_5_30();
            _s10OmniSearch0B6ResultVWOcTm_7(v352, v355, v288);
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
            lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
            v289 = v281;
            v290 = v385;
            v384 = v289;
            CodableNSSecureCoding.init(wrappedValue:)();
            outlined init with copy of SpotlightRankingItem?(v353, v356, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v356, 1, v354);
            v292 = v385[56];
            v293 = v385[35];
            v294 = v385[31];
            if (EnumTagSinglePayload == 1)
            {
              outlined destroy of IntentApplication?(v294, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_97_7();
              OUTLINED_FUNCTION_97_7();
              OUTLINED_FUNCTION_97_7();
              OUTLINED_FUNCTION_97_7();
              OUTLINED_FUNCTION_97_7();
              v349 = (v295 << 32);
              SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
              v296 = OUTLINED_FUNCTION_99_11();
              outlined destroy of IntentApplication?(v296, v297, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_7_27();
              _s10OmniSearch0B6ResultVWOhTm_6(v293, v298);
            }

            else
            {
              v299 = v385[30];
              v300 = v385[28];
              v301 = OUTLINED_FUNCTION_99_11();
              outlined destroy of IntentApplication?(v301, v302, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_7_27();
              _s10OmniSearch0B6ResultVWOhTm_6(v293, v303);
              v304 = *v362;
              (*v362)(v299, v294, v300);
              v305 = v300;
              v290 = v385;
              v304(v292 + v364[5], v299, v305);
            }

            v306 = v290[56];
            v307 = v290[57];
            *(v306 + v364[8]) = 1;
            *(v306 + v364[9]) = 1;
            outlined init with take of SearchResult(v306, v307);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v323 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v323, v324, v325, v171);
              v171 = v326;
            }

            v309 = *(v171 + 16);
            v308 = *(v171 + 24);
            if (v309 >= v308 >> 1)
            {
              v327 = OUTLINED_FUNCTION_22_5(v308);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v327, v328, v329, v171);
              v171 = v330;
            }

            v12 = v290[57];
            v310 = v290[48];
            v311 = v385[45];

            v312 = *v363;
            v313 = OUTLINED_FUNCTION_64_0();
            v312(v313);
            v314 = v311;
            v98 = v385;
            (v312)(v310, v314);
            *(v171 + 16) = v309 + 1;
            outlined init with take of SearchResult(v12, v171 + v377 + v309 * v359);
            v123 = v378;
            v169 = v373;
            v170 = v369;
            v168 = v360;
            goto LABEL_59;
          }

          v243 = v98[44];
          v242 = v98[45];

          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v244, v245, v246, v242);
          outlined destroy of IntentApplication?(v243, &_s15OmniSearchTypes5PhotoVSgMd, &_s15OmniSearchTypes5PhotoVSgMR);
        }

        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v247 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v247, static Logging.answerSynthesis);

        v248 = Logger.logObject.getter();
        v249 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v248, v249))
        {
          v361 = v207;
          v250 = OUTLINED_FUNCTION_51_0();
          v251 = OUTLINED_FUNCTION_49_0();
          *v250 = 136315138;
          v252 = v376;
          if (v376 >= v378)
          {
            goto LABEL_130;
          }

          v253 = v251;
          v254 = v385[34];
          OUTLINED_FUNCTION_42_16();
          OUTLINED_FUNCTION_5_30();
          _s10OmniSearch0B6ResultVWOcTm_7(v255, v254, v256);
          SearchResultItem.associatedValue.getter(v385 + 12);
          v257 = v385[16];
          __swift_project_boxed_opaque_existential_1(v385 + 12, v385[15]);
          v258 = OUTLINED_FUNCTION_112_2();
          v260 = v259(v258, v257);
          OUTLINED_FUNCTION_7_27();
          _s10OmniSearch0B6ResultVWOhTm_6(v254, v261);
          __swift_destroy_boxed_opaque_existential_1Tm(v385 + 12);
          OUTLINED_FUNCTION_107();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_112_2();

          *(v250 + 4) = v260;
          _os_log_impl(&dword_25D85C000, v248, v249, "Could not populate ocr string for photo with id: %s", v250, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v253);
          OUTLINED_FUNCTION_33_0();
          OUTLINED_FUNCTION_42_0();

          v169 = v373;
          v262 = v361;
        }

        else
        {
          v262 = v207;

          v252 = v376;
        }

        if (v252 >= v378)
        {
          goto LABEL_127;
        }

        v98 = v385;
        OUTLINED_FUNCTION_42_16();
        v265 = v264 & ~v263;
        v267 = *(v266 + 72);
        OUTLINED_FUNCTION_0_49();
        _s10OmniSearch0B6ResultVWOcTm_7(v268, v269, v270);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v315 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v315, v316, v317, v171);
          v171 = v318;
        }

        v168 = v262;
        v272 = *(v171 + 16);
        v271 = *(v171 + 24);
        if (v272 >= v271 >> 1)
        {
          v319 = OUTLINED_FUNCTION_22_5(v271);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v319, v320, v321, v171);
          v171 = v322;
        }

        v12 = v385[55];

        *(v171 + 16) = v272 + 1;
        outlined init with take of SearchResult(v12, v171 + v265 + v272 * v267);
        v123 = v378;
        v170 = v369;
        goto LABEL_59;
      }
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v12 = v98[26];
    v176 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v176, static Logging.answerSynthesis);

    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v177, v178))
    {
      OUTLINED_FUNCTION_51_0();
      v179 = OUTLINED_FUNCTION_163();
      *v169 = 136315138;
      if (v168 >= v123)
      {
        goto LABEL_121;
      }

      v180 = v179;
      v12 = v385[34];
      OUTLINED_FUNCTION_42_16();
      OUTLINED_FUNCTION_5_30();
      _s10OmniSearch0B6ResultVWOcTm_7(v181, v12, v182);
      SearchResultItem.associatedValue.getter(v385 + 7);
      v183 = v171;
      v184 = v385[11];
      __swift_project_boxed_opaque_existential_1(v385 + 7, v385[10]);
      v185 = OUTLINED_FUNCTION_37_3();
      v186 = v184;
      v171 = v183;
      v187(v185, v186);
      OUTLINED_FUNCTION_102_5();
      OUTLINED_FUNCTION_7_27();
      _s10OmniSearch0B6ResultVWOhTm_6(v12, v188);
      v123 = v378;
      __swift_destroy_boxed_opaque_existential_1Tm(v385 + 7);
      OUTLINED_FUNCTION_26_2();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_37_3();

      *(v169 + 4) = v12;
      OUTLINED_FUNCTION_126_10(&dword_25D85C000, v177, v178, "Could not fetch photo asset with id: %s", v349);
      __swift_destroy_boxed_opaque_existential_1Tm(v180);
      OUTLINED_FUNCTION_52_16();
      OUTLINED_FUNCTION_33_0();

      v169 = v373;
    }

    else
    {
    }

    if (v168 >= v123)
    {
      goto LABEL_117;
    }

    v98 = v385;
    OUTLINED_FUNCTION_42_16();
    v12 = v190 & ~v189;
    v192 = *(v191 + 72);
    OUTLINED_FUNCTION_0_49();
    _s10OmniSearch0B6ResultVWOcTm_7(v193, v194, v195);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v199, v200, v201, v171);
      v171 = v202;
    }

    v197 = *(v171 + 16);
    v196 = *(v171 + 24);
    if (v197 >= v196 >> 1)
    {
      v203 = OUTLINED_FUNCTION_22_5(v196);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v203, v204, v205, v171);
      v171 = v206;
    }

    v198 = v385[54];
    *(v171 + 16) = v197 + 1;
    outlined init with take of SearchResult(v198, v171 + v12 + v197 * v192);
    v383 += 2;
    ++v168;
  }

  OUTLINED_FUNCTION_93_11();

  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v365, "ResultHydrator.fetchFullContentForPhotosResults");

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_63_14();

  return v333(v331, v332, v333, v334, v335, v336, v337, v338, a9, a10, a11, a12);
}

uint64_t ResultHydrator.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:)()
{
  OUTLINED_FUNCTION_48();
  v1[42] = v2;
  v1[43] = v0;
  v1[41] = v3;
  v4 = type metadata accessor for OSSignpostID();
  v1[44] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[45] = v5;
  v1[46] = OUTLINED_FUNCTION_160();
  v1[47] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    *OUTLINED_FUNCTION_172() = 0;
    v3 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_77_11(&dword_25D85C000, v4, v5, v3, "ResultHydrator.fetchFullContentForMessagesResultAndIdentifier", "");
    OUTLINED_FUNCTION_2_8();
  }

  v6 = v0[47];
  v7 = v0[44];
  v8 = v0[42];
  v9 = v0[43];

  v10 = OUTLINED_FUNCTION_59_12();
  v11(v10, v6, v7);
  v12 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v12);
  OUTLINED_FUNCTION_45_4();
  v0[48] = OSSignpostIntervalState.init(id:isOpen:)();
  v13 = OUTLINED_FUNCTION_63_0();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
  v0[49] = Dictionary.init(dictionaryLiteral:)();
  (*(*v9 + 144))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch17MessageIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch17MessageIdentifier_pGMR);
  inited = swift_initStackObject();
  v0[50] = inited;
  *(inited + 16) = xmmword_25DBC8180;
  outlined init with copy of ChatMessageRecord(v8, inited + 32);
  v16 = swift_task_alloc();
  v0[51] = v16;
  *v16 = v0;
  v16[1] = ResultHydrator.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:);

  return MessageBodyManager.retrieveMessages(for:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1;
  OUTLINED_FUNCTION_19_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v2 + 416) = v6;

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  outlined destroy of MessageBodyManager(v2 + 88);
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = *(v0 + 416);
  v42 = *(v1 + 16);
  if (!v42)
  {
LABEL_16:

    specialized Collection.first.getter(v1, v0 + 168);

    if (*(v0 + 192))
    {
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 168), *(v0 + 328));
      goto LABEL_23;
    }

    outlined destroy of IntentApplication?(v0 + 168, &_s10OmniSearch17ChatMessageRecord_pSgMd, &_s10OmniSearch17ChatMessageRecord_pSgMR);
    if (one-time initialization token for answerSynthesis == -1)
    {
LABEL_19:
      v25 = *(v0 + 336);
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logging.answerSynthesis);
      outlined init with copy of ChatMessageRecord(v25, v0 + 208);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_88_0(v28))
      {
        v29 = OUTLINED_FUNCTION_90_1();
        OUTLINED_FUNCTION_260();
        *v29 = 136315394;
        OUTLINED_FUNCTION_98_2();
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v29 + 12) = 2080;
        outlined init with copy of ChatMessageRecord(v0 + 208, v0 + 248);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17MessageIdentifier_pMd, &_s10OmniSearch17MessageIdentifier_pMR);
        String.init<A>(describing:)();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
        OUTLINED_FUNCTION_63_0();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v29 + 14) = v30;
        OUTLINED_FUNCTION_115_8();
        _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_52_16();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      }

      v36 = *(v0 + 328);
      *(v36 + 32) = 0;
      *v36 = 0u;
      *(v36 + 16) = 0u;
LABEL_23:
      $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(*(v0 + 384), "ResultHydrator.fetchFullContentForMessagesResultAndIdentifier");

      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_83_0();

      __asm { BRAA            X1, X16 }
    }

LABEL_32:
    OUTLINED_FUNCTION_0_5();
    swift_once();
    goto LABEL_19;
  }

  v2 = 0;
  v3 = v1 + 32;
  v4 = *(v0 + 392);
  v41 = *(v0 + 416);
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    outlined init with copy of ChatMessageRecord(v3, v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
    OUTLINED_FUNCTION_26_2();
    v5 = ChatMessageRecord.guid.getter();
    if (v6)
    {
      break;
    }

LABEL_14:
    ++v2;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
    v3 += 40;
    if (v42 == v2)
    {
      v1 = *(v0 + 416);
      goto LABEL_16;
    }
  }

  v7 = v5;
  v8 = v6;
  v9 = v0;
  outlined init with copy of ChatMessageRecord(v0 + 128, v0 + 288);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v4;
  v0 = v7;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  v13 = v4[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    goto LABEL_30;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMd, &_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
  {
    goto LABEL_9;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  if ((v17 & 1) == (v19 & 1))
  {
    v16 = v18;
LABEL_9:
    if (v17)
    {

      v4 = v43;
      v20 = (v43[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v0 = v9;
      outlined init with take of ResponseOverrideMatcherProtocol((v9 + 288), v20);
    }

    else
    {
      v4 = v43;
      OUTLINED_FUNCTION_84_9(&v43[v16 >> 6]);
      v21 = (v43[6] + 16 * v16);
      *v21 = v7;
      v21[1] = v8;
      v0 = v9;
      outlined init with take of ResponseOverrideMatcherProtocol((v9 + 288), v43[7] + 40 * v16);
      v22 = v43[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_31;
      }

      v43[2] = v24;
    }

    v1 = v41;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_83_0();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t ResultHydrator.fetchFullContentForCalendarResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for OSSignpostID();
  v1[4] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_160();
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    *OUTLINED_FUNCTION_172() = 0;
    v3 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_77_11(&dword_25D85C000, v4, v5, v3, "ResultHydrator.fetchFullContentForCalendarResults", "");
    OUTLINED_FUNCTION_2_8();
  }

  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];

  v11 = OUTLINED_FUNCTION_114_9();
  v12(v11);
  v13 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v13);
  OUTLINED_FUNCTION_112_2();
  v14 = OSSignpostIntervalState.init(id:isOpen:)();
  v15 = (*(v8 + 8))(v6, v7);
  v16 = (*(*v9 + 168))(v15);
  v17 = CalendarManager.fetchEventsAndHydrate(calendarResults:)(v10, v16);

  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v14, "ResultHydrator.fetchFullContentForCalendarResults");

  OUTLINED_FUNCTION_62();

  return v18(v17);
}

uint64_t ResultHydrator.fetchFullContentForMessagesResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[47] = v2;
  v1[48] = v0;
  v3 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v3);
  v1[49] = v4;
  v1[50] = OUTLINED_FUNCTION_199();
  v5 = type metadata accessor for OSSignpostID();
  v1[51] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[52] = v6;
  v1[53] = OUTLINED_FUNCTION_160();
  v1[54] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_121_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v3 = OUTLINED_FUNCTION_172();
    v4 = OUTLINED_FUNCTION_159_5(v3);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v5, v6, v4, "ResultHydrator.fetchFullContentForMessagesResults", "");
    OUTLINED_FUNCTION_37_0();
  }

  v7 = *(v0 + 376);

  v8 = OUTLINED_FUNCTION_30_16();
  v9(v8);
  v10 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v10);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 440) = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = *(v0 + 392);
    v15 = MEMORY[0x277D84F90];
    v16 = *(v0 + 376) + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    while (1)
    {
      v18 = *(v0 + 400);
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v16, v18, v19);
      SearchResultItem.associatedValue.getter((v0 + 96));
      OUTLINED_FUNCTION_3_37();
      _s10OmniSearch0B6ResultVWOhTm_6(v18, v20);
      v21 = OUTLINED_FUNCTION_54_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      v23 = OUTLINED_FUNCTION_179_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
      if (swift_dynamicCast())
      {
        if (*(v0 + 80))
        {
          outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v0 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v27;
          }

          v26 = *(v15 + 16);
          v25 = *(v15 + 24);
          if (v26 >= v25 >> 1)
          {
            OUTLINED_FUNCTION_22_5(v25);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v28;
          }

          *(v15 + 16) = v26 + 1;
          outlined init with take of ResponseOverrideMatcherProtocol((v0 + 16), v15 + 40 * v26 + 32);
          goto LABEL_16;
        }
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      outlined destroy of IntentApplication?(v0 + 56, &_s10OmniSearch17MessageIdentifier_pSgMd, &_s10OmniSearch17MessageIdentifier_pSgMR);
LABEL_16:
      v16 += v17;
      if (!--v13)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 448) = v15;
  v29 = *(v15 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v53 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v30 = v53;
    v31 = v15 + 32;
    do
    {
      outlined init with copy of ChatMessageRecord(v31, v0 + 136);
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      v32 = OUTLINED_FUNCTION_179_0();
      v34 = v33(v32);
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v38 = *(v53 + 16);
      v37 = *(v53 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = OUTLINED_FUNCTION_26_3(v37);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v38 + 1, 1);
      }

      *(v53 + 16) = v38 + 1;
      v39 = v53 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v31 += 40;
      --v29;
    }

    while (v29);
  }

  *(v0 + 456) = v30;
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  *(v0 + 464) = OUTLINED_FUNCTION_200(v41, static Logging.answerSynthesis);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_260();
    *v44 = 136315394;
    OUTLINED_FUNCTION_98_2();
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v44 + 12) = 2080;
    MEMORY[0x25F89F8A0](v30, MEMORY[0x277D837D0]);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v44 + 14) = v45;
    OUTLINED_FUNCTION_125_7(&dword_25D85C000, v46, v47, "%s Message ranked identifiers: %s");
    OUTLINED_FUNCTION_109_10();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

  *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17ChatMessageRecord_pMd, &_s10OmniSearch17ChatMessageRecord_pMR);
  *(v0 + 480) = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_133();
  v49 = *(v48 + 144);
  *(v0 + 488) = v49;
  *(v0 + 496) = (v48 + 144) & 0xFFFFFFFFFFFFLL | 0x27D7000000000000;
  v49();
  v50 = swift_task_alloc();
  *(v0 + 504) = v50;
  *v50 = v0;
  v50[1] = ResultHydrator.fetchFullContentForMessagesResults(_:locale:);
  OUTLINED_FUNCTION_63_14();

  return MessageBodyManager.retrieveMessages(for:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1;
  OUTLINED_FUNCTION_19_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v2 + 512) = v6;

  outlined destroy of MessageBodyManager(v2 + 176);
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = *(v0 + 512);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v4 = *(v0 + 480);
LABEL_18:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v33))
    {
      v34 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_260();
      *v34 = 136315650;
      OUTLINED_FUNCTION_98_2();
      *(v34 + 4) = OUTLINED_FUNCTION_103_11();
      *(v34 + 12) = 2048;
      *(v34 + 14) = v4[2];
      *(v34 + 22) = 2080;

      Dictionary.Keys.description.getter();

      OUTLINED_FUNCTION_179_0();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v34 + 24) = v35;
      _os_log_impl(&dword_25D85C000, v32, v33, "%s Original spiMessageDict size %ld, GUIDs: %s", v34, 0x20u);
      OUTLINED_FUNCTION_105_9();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_2_8();
    }

    static MessageBodyManager.dedupMessageDict(_:basedOn:)();
    v37 = v36;

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v39))
    {
      v40 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_260();
      *v40 = 136315650;
      OUTLINED_FUNCTION_98_2();
      *(v40 + 4) = OUTLINED_FUNCTION_103_11();
      *(v40 + 12) = 2048;
      *(v40 + 14) = *(v37 + 16);

      *(v40 + 22) = 2080;
      Dictionary.Keys.description.getter();

      OUTLINED_FUNCTION_179_0();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v40 + 24) = v41;
      OUTLINED_FUNCTION_115_8();
      _os_log_impl(v42, v43, v44, v45, v46, 0x20u);
      OUTLINED_FUNCTION_105_9();
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_52_16();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v47 = *(v0 + 440);
    (*(v0 + 488))();

    MessageBodyManager.hydrateMessageBody(origMessages:enrichedMessages:)();

    outlined destroy of MessageBodyManager(v0 + 256);

    $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v47, "ResultHydrator.fetchFullContentForMessagesResults");

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_15_6();

    __asm { BRAA            X2, X16 }
  }

  v3 = v1 + 32;
  v4 = *(v0 + 480);
  while (1)
  {
    outlined init with copy of ChatMessageRecord(v3, v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    OUTLINED_FUNCTION_26_2();
    v5 = ChatMessageRecord.guid.getter();
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = v5;
    v8 = v6;
    outlined init with copy of ChatMessageRecord(v0 + 216, v0 + 296);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v4;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v12 = v4[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = result;
    v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMd, &_ss17_NativeDictionaryVySS10OmniSearch17ChatMessageRecord_pGMR);
    v17 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14);
    v4 = v52;
    if (v17)
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if ((v16 & 1) != (v19 & 1))
      {
        OUTLINED_FUNCTION_15_6();

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v15 = v18;
    }

    if (v16)
    {
      v20 = (v52[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 296), v20);
    }

    else
    {
      OUTLINED_FUNCTION_84_9(&v52[v15 >> 6]);
      v21 = (v52[6] + 16 * v15);
      *v21 = v7;
      v21[1] = v8;
      result = outlined init with take of ResponseOverrideMatcherProtocol((v0 + 296), v52[7] + 40 * v15);
      v22 = v52[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_30;
      }

      v52[2] = v24;
    }

    outlined init with copy of ChatMessageRecord(v0 + 216, v0 + 336);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_42_15())
    {
      v27 = OUTLINED_FUNCTION_49_0();
      swift_slowAlloc();
      *v27 = 136315650;
      *(v27 + 4) = OUTLINED_FUNCTION_103_11();
      *(v27 + 12) = 2080;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v27 + 14) = v28;
      *(v27 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
      OUTLINED_FUNCTION_19_14();
      v30 = v29;
      OUTLINED_FUNCTION_199();
      v51 = v2;
      (*(v30 + 16))();
      v4 = v52;
      String.init<A>(describing:)();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v27 + 24) = v31;
      v2 = v51;
      _os_log_impl(&dword_25D85C000, v25, v26, "%s Added this into spiMessageDict guid=%s -> %s", v27, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_33_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    }

LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    v3 += 40;
    if (!--v2)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t ResultHydrator.fetchFullContentForContactsResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for OSSignpostID();
  v1[4] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_160();
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    *OUTLINED_FUNCTION_172() = 0;
    v3 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_77_11(&dword_25D85C000, v4, v5, v3, "ResultHydrator.fetchFullContentForContactsResults", "");
    OUTLINED_FUNCTION_2_8();
  }

  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  v10 = OUTLINED_FUNCTION_114_9();
  v11(v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v12);
  OUTLINED_FUNCTION_112_2();
  v13 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v6, v7);
  OUTLINED_FUNCTION_133();
  v15 = (*(v14 + 112))(v9);
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v13, "ResultHydrator.fetchFullContentForContactsResults");

  OUTLINED_FUNCTION_62();

  return v16(v15);
}

uint64_t ResultHydrator.fetchFullContentForEventsResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for OSSignpostID();
  v1[6] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_160();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_75();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v3 = OUTLINED_FUNCTION_172();
    v4 = OUTLINED_FUNCTION_159_5(v3);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v5, v6, v4, "ResultHydrator.fetchFullContentForEventsResults", "");
    OUTLINED_FUNCTION_37_0();
  }

  v7 = v0[5];

  v8 = OUTLINED_FUNCTION_30_16();
  v9(v8);
  v10 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v10);
  OUTLINED_FUNCTION_45_4();
  v0[10] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  type metadata accessor for ResultHydrator();
  v13 = ResultHydrator.__allocating_init()();
  v0[11] = v13;
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = ResultHydrator.fetchFullContentForEventsResults(_:locale:);
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];

  return _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5(v17, v7 + 96, v13, v15, v16);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(*(v0 + 80), "ResultHydrator.fetchFullContentForEventsResults");

  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t ResultHydrator.fetchFullContentForFileResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v2 = type metadata accessor for OSSignpostID();
  v0[3] = v2;
  OUTLINED_FUNCTION_21(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_160();
  v0[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_72();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v3 = OUTLINED_FUNCTION_172();
    v4 = OUTLINED_FUNCTION_159_5(v3);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v5, v6, v4, "ResultHydrator.fetchFullContentForFileResults", "");
    OUTLINED_FUNCTION_37_0();
  }

  v7 = OUTLINED_FUNCTION_30_16();
  v8(v7);
  v9 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v9);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 56) = OSSignpostIntervalState.init(id:isOpen:)();
  v10 = OUTLINED_FUNCTION_54_0();
  v11(v10);
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_110_9(v12);

  return static FileContentManager.hydrateFileContent(from:)(v13);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_78();
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(*(v0 + 56), "ResultHydrator.fetchFullContentForFileResults");

  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 80);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_78();
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(*(v0 + 56), "ResultHydrator.fetchFullContentForFileResults");

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t ResultHydrator.fetchFullContentForNotesResults(_:locale:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v2 = type metadata accessor for SearchResult(0);
  v0[3] = v2;
  OUTLINED_FUNCTION_21(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_199();
  v4 = type metadata accessor for OSSignpostID();
  v0[6] = v4;
  OUTLINED_FUNCTION_21(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_160();
  v0[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6);
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    v3 = OUTLINED_FUNCTION_172();
    v4 = OUTLINED_FUNCTION_159_5(v3);
    OUTLINED_FUNCTION_193(&dword_25D85C000, v5, v6, v4, "ResultHydrator.fetchFullContentForNotesResults", "");
    OUTLINED_FUNCTION_37_0();
  }

  v7 = v0[2];

  v8 = OUTLINED_FUNCTION_30_16();
  v9(v8);
  v10 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v10);
  OUTLINED_FUNCTION_45_4();
  v0[10] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  v13 = MEMORY[0x277D84F90];
  v48 = v0;
  v49 = MEMORY[0x277D84F90];
  v14 = *(v7 + 16);
  if (v14)
  {
    v15 = v0[4];
    v16 = v0[2] + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      v18 = v0[5];
      OUTLINED_FUNCTION_0_49();
      _s10OmniSearch0B6ResultVWOcTm_7(v16, v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      CodableNSSecureCoding.wrappedValue.getter();
      OUTLINED_FUNCTION_3_37();
      v21 = _s10OmniSearch0B6ResultVWOhTm_6(v18, v20);
      MEMORY[0x25F89F850](v21);
      v22 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v22);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 += v17;
      --v14;
      v0 = v48;
    }

    while (v14);
    v13 = v49;
  }

  v23 = specialized Array.count.getter();
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
LABEL_11:
  v0[11] = v25;
  while (v23 != v24)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x25F89FFD0](v24, v13);
    }

    else
    {
      if (v24 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v26 = *(v13 + 8 * v24 + 32);
    }

    v27 = v26;
    v0 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v28 = CSSearchableItem.associatedAppEntityId.getter();
    v30 = v29;

    ++v24;
    if (v30)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35);
        v25 = v36;
      }

      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1);
        v25 = v37;
      }

      *(v25 + 16) = v33 + 1;
      v34 = v25 + 16 * v33;
      *(v34 + 32) = v28;
      *(v34 + 40) = v30;
      v24 = v0;
      v0 = v48;
      goto LABEL_11;
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = v48;
  v48[12] = OUTLINED_FUNCTION_200(v38, static Logging.answerSynthesis);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_42_15())
  {
    v42 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_260();
    *v42 = 136315394;
    OUTLINED_FUNCTION_98_2();
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v42 + 12) = 2080;
    MEMORY[0x25F89F8A0](v25, MEMORY[0x277D837D0]);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v39 = v48;

    *(v42 + 14) = v43;
    _os_log_impl(&dword_25D85C000, v40, v41, "%s MDItemAppEntityInstanceIdentifier: %s", v42, 0x16u);
    OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_2_8();
  }

  v44 = swift_task_alloc();
  v39[13] = v44;
  *v44 = v39;
  v44[1] = ResultHydrator.fetchFullContentForNotesResults(_:locale:);
  OUTLINED_FUNCTION_83_0();

  return static NoteContentManager.retrieveNotesViaLinkServices(for:)(v45);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_159();
  v1 = *(v0 + 112);
  if (!v1)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v12))
    {
      v13 = OUTLINED_FUNCTION_51_0();
      v18 = OUTLINED_FUNCTION_49_0();
      *v13 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v13 + 4) = OUTLINED_FUNCTION_108_7();
      _os_log_impl(&dword_25D85C000, v11, OS_LOG_TYPE_DEFAULT, "%s Unable to get notes via LinkServices. It's OK, will just return original notesResults", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    goto LABEL_11;
  }

  v2 = static NoteContentManager.parseLNQueryOutput(from:)(*(v0 + 112));
  if (!v2)
  {
    v11 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v14))
    {
      v15 = OUTLINED_FUNCTION_51_0();
      v19 = OUTLINED_FUNCTION_49_0();
      *v15 = 136315138;
      OUTLINED_FUNCTION_98_2();
      *(v15 + 4) = OUTLINED_FUNCTION_108_7();
      _os_log_impl(&dword_25D85C000, v11, v14, "%s Unable to parse LNQueryOutput. It's OK, will just return original notesResults", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_72_9();
      OUTLINED_FUNCTION_37_0();
    }

LABEL_11:
    v3 = *(v0 + 16);

    goto LABEL_12;
  }

  v3 = static NoteContentManager.hydrateNoteFullContent(from:with:)(*(v0 + 16), v2);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_260();
    *v7 = 136315395;
    OUTLINED_FUNCTION_98_2();
    *(v7 + 4) = OUTLINED_FUNCTION_108_7();
    *(v7 + 12) = 2085;
    MEMORY[0x25F89F8A0](v3, v6);
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v7 + 14) = v8;
    OUTLINED_FUNCTION_125_7(&dword_25D85C000, v9, v10, "%s hydratedResults: %{sensitive}s");
    OUTLINED_FUNCTION_109_10();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_37_0();
  }

LABEL_12:
  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(*(v0 + 80), "ResultHydrator.fetchFullContentForNotesResults");

  OUTLINED_FUNCTION_62();

  return v16(v3);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 80);

  $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v1, "ResultHydrator.fetchFullContentForNotesResults");

  OUTLINED_FUNCTION_127();

  return v2();
}

uint64_t $defer #1 () in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(uint64_t a1, const char *a2)
{
  v2 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  v9 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v15 = v14 - v13;
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v16 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v16, static Logging.searchSignposter);
  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v8, v2) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v8, v2);
      v19 = "";
    }

    v20 = OUTLINED_FUNCTION_172();
    *v20 = 0;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v17, v18, v21, a2, v19, v20, 2u);
    OUTLINED_FUNCTION_72_9();
  }

  return (*(v11 + 8))(v15, v9);
}

id ResultHydrator.ocrOutput(for:)(void *a1)
{
  result = [a1 characterRecognitionProperties];
  if (result)
  {
    outlined bridged method (ob) of @objc PHAssetCharacterRecognitionProperties.characterRecognitionData.getter(result);
    if (v3 >> 60 != 15)
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for VNDocumentObservation, 0x277CE2CC8);
      v4 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v1 || (v5 = v4) == 0)
      {
        OUTLINED_FUNCTION_127_10();
      }

      else
      {
        v6 = [v4 getTranscript];
        if (v6)
        {
          v7 = v6;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_127_10();
        }

        else
        {
          OUTLINED_FUNCTION_127_10();
        }
      }
    }

    return OUTLINED_FUNCTION_63_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ResultHydrator.deinit()
{

  outlined destroy of IntentApplication?(v0 + 40, &_s10OmniSearch18MessageBodyManagerVSgMd, &_s10OmniSearch18MessageBodyManagerVSgMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  return v0;
}

uint64_t ResultHydrator.__deallocating_deinit()
{
  ResultHydrator.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ResultHydration.fetchFullContent(for:locale:answerSynthesisResultForMetrics:) in conformance ResultHydrator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 224) + **(**v4 + 224));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for ResultHydration.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:) in conformance ResultHydrator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 280) + **(**v3 + 280));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v10(a1, a2, a3);
}

uint64_t outlined assign with take of MessageBodyManager?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18MessageBodyManagerVSgMd, &_s10OmniSearch18MessageBodyManagerVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #2 in implicit closure #1 in ResultHydrator.hydrationFunctions.getter(v3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error)()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_6_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_48(v1);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #4 in implicit closure #3 in ResultHydrator.hydrationFunctions.getter(v3);
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #6 in implicit closure #5 in ResultHydrator.hydrationFunctions.getter(v3);
}

uint64_t partial apply for implicit closure #8 in implicit closure #7 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #8 in implicit closure #7 in ResultHydrator.hydrationFunctions.getter(v3);
}

uint64_t partial apply for implicit closure #10 in implicit closure #9 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #10 in implicit closure #9 in ResultHydrator.hydrationFunctions.getter(v3);
}

uint64_t partial apply for implicit closure #12 in implicit closure #11 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #12 in implicit closure #11 in ResultHydrator.hydrationFunctions.getter(v3);
}

uint64_t partial apply for implicit closure #14 in implicit closure #13 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #14 in implicit closure #13 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #18 in implicit closure #17 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #20 in implicit closure #19 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #22 in implicit closure #21 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #24 in implicit closure #23 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #26 in implicit closure #25 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #28 in implicit closure #27 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #30 in implicit closure #29 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #16 in implicit closure #15 in ResultHydrator.hydrationFunctions.getter(v3, v4, v5);
}

uint64_t partial apply for implicit closure #32 in implicit closure #31 in ResultHydrator.hydrationFunctions.getter()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_33(v1);

  return implicit closure #32 in implicit closure #31 in ResultHydrator.hydrationFunctions.getter(v3);
}

void specialized MutableCollection<>.sort(by:)(size_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9);
  *a1 = v3;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v106 = a1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v113 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v110 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v105 - v9;
  MEMORY[0x28223BE20](v10);
  v123 = (&v105 - v11);
  MEMORY[0x28223BE20](v12);
  v122 = (&v105 - v13);
  v14 = a3[1];
  v115 = a3;
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_101:
    v117 = v16;
    v16 = *v106;
    if (!*v106)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v116;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v98 = (v117 + 16);
      for (i = *(v117 + 2); i >= 2; *v98 = i)
      {
        if (!*v115)
        {
          goto LABEL_138;
        }

        v100 = &v117[16 * i];
        v101 = *v100;
        v102 = &v98[2 * i];
        v103 = *(v102 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v115 + *(v113 + 72) * *v100, *v115 + *(v113 + 72) * *v102, *v115 + *(v113 + 72) * v103, v16);
        if (v4)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v98)
        {
          goto LABEL_127;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v98 - i;
        if (*v98 < i)
        {
          goto LABEL_128;
        }

        i = *v98 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v102 + 16, v104, v102);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v117 = specialized _ArrayBuffer._consumeAndCreateNew()(v117);
    goto LABEL_103;
  }

  v105 = a4;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v107 = v15;
    if (v15 + 1 < v14)
    {
      v117 = v16;
      v118 = v15 + 1;
      v19 = *v115;
      v20 = *(v113 + 72);
      v16 = *v115 + v20 * v18;
      v21 = v122;
      outlined init with copy of SpotlightRankingItem?(v16, v122, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v22 = v123;
      outlined init with copy of SpotlightRankingItem?(v19 + v20 * v17, v123, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v23 = *v21;
      v111 = *v22;
      v112 = v23;
      outlined destroy of IntentApplication?(v22, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      outlined destroy of IntentApplication?(v21, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v24 = v17 + 2;
      v114 = v20;
      v25 = v19 + v20 * (v17 + 2);
      while (1)
      {
        v26 = v24;
        if (++v118 >= v14)
        {
          break;
        }

        LODWORD(v119) = v112 < v111;
        v27 = v122;
        outlined init with copy of SpotlightRankingItem?(v25, v122, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v28 = v14;
        v29 = v123;
        outlined init with copy of SpotlightRankingItem?(v16, v123, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v4 = *v27;
        v30 = *v29;
        v31 = v29;
        v14 = v28;
        outlined destroy of IntentApplication?(v31, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        outlined destroy of IntentApplication?(v27, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
        v25 += v114;
        v16 += v114;
        v24 = v26 + 1;
        if (((v119 ^ (v4 >= v30)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v118 = v14;
LABEL_9:
      if (v112 >= v111)
      {
        v16 = v117;
        v18 = v118;
        v17 = v107;
      }

      else
      {
        v18 = v118;
        if (v118 < v107)
        {
          goto LABEL_132;
        }

        if (v107 >= v118)
        {
          v16 = v117;
          v17 = v107;
        }

        else
        {
          if (v14 >= v26)
          {
            v32 = v26;
          }

          else
          {
            v32 = v14;
          }

          v33 = v114 * (v32 - 1);
          v34 = v114 * v32;
          v4 = v107 * v114;
          v35 = v107;
          v17 = v107;
          do
          {
            if (v35 != --v18)
            {
              v36 = *v115;
              if (!*v115)
              {
                goto LABEL_139;
              }

              outlined init with take of SearchResultItem?(v36 + v4, v110, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
              v37 = v4 < v33 || v36 + v4 >= v36 + v34;
              if (v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of SearchResultItem?(v110, v36 + v33, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
              v17 = v107;
            }

            ++v35;
            v33 -= v114;
            v34 -= v114;
            v4 += v114;
          }

          while (v35 < v18);
          v16 = v117;
          v18 = v118;
        }
      }
    }

    v38 = v115[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_131;
      }

      if (v18 - v17 < v105)
      {
        break;
      }
    }

LABEL_47:
    if (v18 < v17)
    {
      goto LABEL_130;
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v18;
    if ((v50 & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
      v16 = v95;
    }

    v52 = *(v16 + 16);
    v51 = *(v16 + 24);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1, v16);
      v16 = v96;
    }

    *(v16 + 16) = v53;
    v54 = v16 + 32;
    v55 = (v16 + 32 + 16 * v52);
    v56 = v118;
    *v55 = v17;
    v55[1] = v56;
    v119 = *v106;
    if (!v119)
    {
      goto LABEL_140;
    }

    if (v52)
    {
      v117 = v16;
      while (1)
      {
        v57 = v53 - 1;
        v58 = (v54 + 16 * (v53 - 1));
        v59 = (v16 + 16 * v53);
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v60 = *(v16 + 32);
          v61 = *(v16 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_68:
          if (v63)
          {
            goto LABEL_117;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_120;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_125;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v53 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v53 < 2)
        {
          goto LABEL_119;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_83:
        if (v78)
        {
          goto LABEL_122;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_124;
        }

        if (v85 < v77)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v57 - 1 >= v53)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v115)
        {
          goto LABEL_137;
        }

        v89 = (v54 + 16 * (v57 - 1));
        v90 = *v89;
        v91 = v54;
        v92 = v57;
        v16 = v54 + 16 * v57;
        v4 = *(v16 + 8);
        v93 = v116;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v115 + *(v113 + 72) * *v89, *v115 + *(v113 + 72) * *v16, *v115 + *(v113 + 72) * v4, v119);
        v116 = v93;
        if (v93)
        {
          goto LABEL_99;
        }

        if (v4 < v90)
        {
          goto LABEL_112;
        }

        v94 = *(v117 + 2);
        if (v92 > v94)
        {
          goto LABEL_113;
        }

        *v89 = v90;
        v89[1] = v4;
        if (v92 >= v94)
        {
          goto LABEL_114;
        }

        v53 = v94 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v16 + 16), v94 - 1 - v92, v16);
        v16 = v117;
        *(v117 + 2) = v94 - 1;
        v54 = v91;
        if (v94 <= 2)
        {
          goto LABEL_97;
        }
      }

      v64 = v54 + 16 * v53;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_115;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_116;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_118;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_121;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v62 < v88)
        {
          v57 = v53 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v14 = v115[1];
    v15 = v118;
    if (v118 >= v14)
    {
      goto LABEL_101;
    }
  }

  v39 = v17 + v105;
  if (__OFADD__(v17, v105))
  {
    goto LABEL_133;
  }

  if (v39 >= v38)
  {
    v39 = v115[1];
  }

  if (v39 < v17)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v39)
  {
    goto LABEL_47;
  }

  v117 = v16;
  v40 = *(v113 + 72);
  v41 = *v115 + v40 * (v18 - 1);
  v4 = -v40;
  v42 = v17 - v18;
  v119 = *v115;
  v108 = v40;
  v109 = v39;
  v43 = v119 + v18 * v40;
LABEL_40:
  v118 = v18;
  v111 = v43;
  v112 = v42;
  v114 = v41;
  v44 = v41;
  while (1)
  {
    v45 = v122;
    outlined init with copy of SpotlightRankingItem?(v43, v122, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v46 = v123;
    outlined init with copy of SpotlightRankingItem?(v44, v123, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v47 = *v45;
    v48 = *v46;
    outlined destroy of IntentApplication?(v46, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    outlined destroy of IntentApplication?(v45, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if (v47 >= v48)
    {
LABEL_45:
      v18 = v118 + 1;
      v41 = v114 + v108;
      v42 = v112 - 1;
      v43 = v111 + v108;
      if (v118 + 1 == v109)
      {
        v18 = v109;
        v16 = v117;
        v17 = v107;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v119)
    {
      break;
    }

    v49 = v120;
    outlined init with take of SearchResultItem?(v43, v120, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of SearchResultItem?(v49, v44, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    v44 += v4;
    v43 += v4;
    v37 = __CFADD__(v42++, 1);
    if (v37)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  MEMORY[0x28223BE20](v58);
  v59 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v60 = (&v51 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v17 = v13 / v12;
  v64 = a1;
  v63 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v15 / v12, a4);
    v33 = a4 + v18 * v12;
    v34 = -v12;
    v35 = v33;
    v54 = -v12;
    v55 = a4;
    v61 = a1;
LABEL_36:
    v36 = a2 + v34;
    v52 = v35;
    v56 = a2 + v34;
    while (1)
    {
      if (v33 <= a4)
      {
        v64 = a2;
        v62 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v35;
      v37 = a2;
      v38 = a3 + v34;
      v39 = v33 + v34;
      v40 = v60;
      v41 = v36;
      v42 = v33;
      outlined init with copy of SpotlightRankingItem?(v33 + v34, v60, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v43 = v41;
      v44 = v59;
      outlined init with copy of SpotlightRankingItem?(v43, v59, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v57 = *v40;
      v45 = v44;
      v46 = *v44;
      outlined destroy of IntentApplication?(v45, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      outlined destroy of IntentApplication?(v40, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      if (v57 < v46)
      {
        if (a3 < v37 || v38 >= v37)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v53;
          v34 = v54;
          a4 = v55;
          a3 = v38;
          a1 = v61;
          v33 = v42;
        }

        else
        {
          v34 = v54;
          v35 = v53;
          v14 = a3 == v37;
          a4 = v55;
          v49 = v56;
          a2 = v56;
          a3 = v38;
          a1 = v61;
          v33 = v42;
          if (!v14)
          {
            v50 = v53;
            swift_arrayInitWithTakeBackToFront();
            v33 = v42;
            a2 = v49;
            v35 = v50;
          }
        }

        goto LABEL_36;
      }

      v47 = a3 < v42 || v38 >= v42;
      a2 = v37;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v34;
        v33 = v39;
        v35 = v39;
        v34 = v54;
        a4 = v55;
        a1 = v61;
        v36 = v56;
      }

      else
      {
        v35 = v39;
        v14 = v42 == a3;
        a3 += v34;
        v33 = v39;
        v34 = v54;
        a4 = v55;
        a1 = v61;
        v36 = v56;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v38;
          v33 = v39;
          v35 = v39;
        }
      }
    }

    v64 = a2;
    v62 = v52;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v13 / v12, a4);
    v56 = a3;
    v57 = a4 + v17 * v12;
    v62 = v57;
    v19 = a1;
    while (a4 < v57 && a2 < a3)
    {
      v61 = v19;
      v21 = v12;
      v22 = a2;
      v23 = a2;
      v24 = v60;
      outlined init with copy of SpotlightRankingItem?(v22, v60, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v25 = a4;
      v26 = a4;
      v27 = v59;
      outlined init with copy of SpotlightRankingItem?(v25, v59, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      v28 = *v24;
      v29 = *v27;
      outlined destroy of IntentApplication?(v27, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      outlined destroy of IntentApplication?(v24, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
      if (v28 >= v29)
      {
        v12 = v21;
        a4 = v26 + v21;
        v30 = v61;
        if (v61 < v26 || v61 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (v61 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v26 + v21;
      }

      else
      {
        v12 = v21;
        a2 = v23 + v21;
        v30 = v61;
        v31 = v61 < v23 || v61 >= a2;
        a4 = v26;
        if (v31)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v61 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v19 = v30 + v12;
      v64 = v19;
      a3 = v56;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v64, &v63, &v62);
}

{
  v8 = type metadata accessor for MessageAccumulationContext.Message(0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v85 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    return;
  }

  v20 = a2 - a1;
  v21 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_136;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_137;
  }

  v81 = v15;
  v24 = v20 / v19;
  v90 = a1;
  v89 = a4;
  v83 = v8;
  v84 = v19;
  v25 = v22 / v19;
  if (v20 / v19 < v22 / v19)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v20 / v19, a4);
    v26 = v84;
    v86 = a4 + v24 * v84;
    v88 = v86;
    v82 = a3;
    while (1)
    {
      if (a4 >= v86 || a2 >= a3)
      {
        goto LABEL_134;
      }

      outlined init with copy of MessageAccumulationContext.Message(a2, v17, type metadata accessor for MessageAccumulationContext.Message);
      outlined init with copy of MessageAccumulationContext.Message(a4, v13, type metadata accessor for MessageAccumulationContext.Message);
      v28 = *(v8 + 20);
      v29 = v17[v28];
      v30 = v13[v28];
      if (v29 != v30)
      {
        v35 = v29 < v30;
        goto LABEL_21;
      }

      v87 = a2;
      v31 = *(v8 + 24);
      v32 = v17[v31];
      if (v17[v31])
      {
        if (v32 == 1)
        {
          v33 = 0xE700000000000000;
          v34 = 0x73757361676570;
        }

        else
        {
          v34 = 0x7953726577736E61;
          v33 = 0xEF7369736568746ELL;
        }
      }

      else
      {
        v34 = 0x6867696C746F7073;
        v33 = 0xE900000000000074;
      }

      v37 = v13[v31];
      if (v13[v31])
      {
        if (v37 == 1)
        {
          v38 = 0x73757361676570;
        }

        else
        {
          v38 = 0x7953726577736E61;
        }

        if (v37 == 1)
        {
          v39 = 0xE700000000000000;
        }

        else
        {
          v39 = 0xEF7369736568746ELL;
        }
      }

      else
      {
        v38 = 0x6867696C746F7073;
        v39 = 0xE900000000000074;
      }

      if (v34 == v38 && v33 == v39)
      {
LABEL_61:

LABEL_62:
        outlined destroy of MessageAccumulationContext.Message(v13);
        outlined destroy of MessageAccumulationContext.Message(v17);
        a3 = v82;
        v8 = v83;
        a2 = v87;
        v26 = v84;
        goto LABEL_63;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_62;
      }

      if (v32)
      {
        if (v32 == 1)
        {
          v42 = 0xE700000000000000;
          v43 = 0x73757361676570;
          if (!v37)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v43 = 0x7953726577736E61;
          v42 = 0xEF7369736568746ELL;
          if (!v37)
          {
LABEL_54:
            v45 = 0x6867696C746F7073;
            v44 = 0xE900000000000074;
            goto LABEL_56;
          }
        }
      }

      else
      {
        v43 = 0x6867696C746F7073;
        v42 = 0xE900000000000074;
        if (!v37)
        {
          goto LABEL_54;
        }
      }

      if (v37 == 1)
      {
        v44 = 0xE700000000000000;
        v45 = 0x73757361676570;
      }

      else
      {
        v45 = 0x7953726577736E61;
        v44 = 0xEF7369736568746ELL;
      }

LABEL_56:
      v8 = v83;
      if (v43 == v45 && v42 == v44)
      {
        goto LABEL_61;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v87;
      a3 = v82;
      v26 = v84;
LABEL_21:
      outlined destroy of MessageAccumulationContext.Message(v13);
      outlined destroy of MessageAccumulationContext.Message(v17);
      if (v35)
      {
        if (a1 < a2 || a1 >= a2 + v26)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v26;
        goto LABEL_72;
      }

LABEL_63:
      if (a1 < a4 || a1 >= a4 + v26)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v89 = a4 + v26;
      a4 += v26;
LABEL_72:
      a1 += v26;
      v90 = a1;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v22 / v19, a4);
  v48 = a4 + v25 * v84;
  v49 = -v84;
  v50 = v48;
  v51 = v81;
  v84 = -v84;
LABEL_74:
  v80 = a2 + v49;
  v86 = a3;
  v87 = a2;
  v52 = v50;
  v82 = v50;
  while (1)
  {
    if (v48 <= a4)
    {
      v90 = a2;
      v88 = v52;
      goto LABEL_134;
    }

    if (a2 <= a1)
    {
      break;
    }

    v79 = v52;
    v53 = v48 + v49;
    v54 = v85;
    outlined init with copy of MessageAccumulationContext.Message(v48 + v49, v85, type metadata accessor for MessageAccumulationContext.Message);
    outlined init with copy of MessageAccumulationContext.Message(v80, v51, type metadata accessor for MessageAccumulationContext.Message);
    v55 = *(v8 + 20);
    v56 = *(v54 + v55);
    v57 = *(v51 + v55);
    if (v56 != v57)
    {
      v62 = v56 < v57;
      goto LABEL_103;
    }

    v58 = *(v8 + 24);
    v59 = *(v54 + v58);
    if (*(v54 + v58))
    {
      if (v59 == 1)
      {
        v60 = 0xE700000000000000;
        v61 = 0x73757361676570;
      }

      else
      {
        v61 = 0x7953726577736E61;
        v60 = 0xEF7369736568746ELL;
      }
    }

    else
    {
      v61 = 0x6867696C746F7073;
      v60 = 0xE900000000000074;
    }

    v63 = *(v51 + v58);
    if (*(v51 + v58))
    {
      if (v63 == 1)
      {
        v64 = 0x73757361676570;
      }

      else
      {
        v64 = 0x7953726577736E61;
      }

      if (v63 == 1)
      {
        v65 = 0xE700000000000000;
      }

      else
      {
        v65 = 0xEF7369736568746ELL;
      }
    }

    else
    {
      v64 = 0x6867696C746F7073;
      v65 = 0xE900000000000074;
    }

    if (v61 == v64 && v60 == v65)
    {
      goto LABEL_101;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v62 = 0;
    v8 = v83;
    if (v67)
    {
      goto LABEL_103;
    }

    if (v59)
    {
      if (v59 == 1)
      {
        v68 = 0xE700000000000000;
        v69 = 0x73757361676570;
        if (v63)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v69 = 0x7953726577736E61;
        v68 = 0xEF7369736568746ELL;
        if (v63)
        {
LABEL_113:
          if (v63 == 1)
          {
            v73 = 0xE700000000000000;
            v74 = 0x73757361676570;
          }

          else
          {
            v74 = 0x7953726577736E61;
            v73 = 0xEF7369736568746ELL;
          }

          goto LABEL_118;
        }
      }
    }

    else
    {
      v69 = 0x6867696C746F7073;
      v68 = 0xE900000000000074;
      if (v63)
      {
        goto LABEL_113;
      }
    }

    v74 = 0x6867696C746F7073;
    v73 = 0xE900000000000074;
LABEL_118:
    if (v69 != v74 || v68 != v73)
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      goto LABEL_102;
    }

LABEL_101:

    v62 = 0;
LABEL_102:
    v8 = v83;
LABEL_103:
    v70 = v86;
    a3 = v86 + v84;
    v51 = v81;
    outlined destroy of MessageAccumulationContext.Message(v81);
    outlined destroy of MessageAccumulationContext.Message(v85);
    if (v62)
    {
      if (v70 < v87 || a3 >= v87)
      {
        a2 = v80;
        swift_arrayInitWithTakeFrontToBack();
        v50 = v79;
        v49 = v84;
      }

      else
      {
        v50 = v79;
        v77 = v80;
        v21 = v70 == v87;
        a2 = v80;
        v49 = v84;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v77;
          v50 = v79;
        }
      }

      goto LABEL_74;
    }

    v71 = v70 < v48 || a3 >= v48;
    v72 = v70;
    a2 = v87;
    if (v71)
    {
      swift_arrayInitWithTakeFrontToBack();
      v86 = a3;
      v48 = v53;
      v52 = v53;
      v49 = v84;
      v50 = v82;
    }

    else
    {
      v52 = v53;
      v21 = v48 == v72;
      v86 = a3;
      v48 = v53;
      v49 = v84;
      v50 = v82;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v82;
        v86 = a3;
        v48 = v53;
        v52 = v53;
      }
    }
  }

  v90 = a2;
  v88 = v50;
LABEL_134:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v90, &v89, &v88);
}

uint64_t partial apply for closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_75();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  v11[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v4, v2, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_35_20();

  return closure #7 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v3);
}

uint64_t specialized ArraySlice._copyToNewBuffer(oldCount:)(uint64_t a1)
{
  specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v6 = v3;
  v4 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v6, a1, 0, v4);
}

void specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v13 = *(v11 + 16);
  if (a4 + *(v12 + 72) * a5 + *(v12 + 72) * v8 == v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v13)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v13;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  v18 = v17;
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v18 = MEMORY[0x277D84F90];
    }

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
    v20 = *(v18 + 16);
    if (a4 + *(v19 + 72) * a5 + *(v19 + 72) * v8 == v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v20)
    {
      v23 = *(v18 + 24);

      v24 = (v23 >> 1) - v20;
      v25 = __OFADD__(v8, v24);
      v8 += v24;
      if (v25)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x277D84F90];
  }

  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v22 = *(v18 + 16);
  if (a4 + *(v21 + 72) * a5 + *(v21 + 72) * v8 == v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v22)
  {
    v26 = *(v18 + 24);

    v27 = (v26 >> 1) - v22;
    v25 = __OFADD__(v8, v27);
    v8 += v27;
    if (!v25)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v28 = v7;
  }

  else
  {
    v28 = v8;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi6offset_10OmniSearch0J6ResultV7elementt_Tt1g5(v6, v28);
}

uint64_t *specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v6 = v4[2];
  v7 = v4[3] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_26;
  }

  v10 = *result;
  v11 = *(*result + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v35 = v15;
  v38 = v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v18 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
  v19 = v10 + v18;
  v20 = *(*(v40 - 8) + 72);
  v21 = v10 + v18 + v20 * a2;
  v36 = v8;
  result = specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(v8);
  v37 = v10;
  if (!result)
  {
    v27 = v5[2];
    v28 = v27 + a2;
    if (!__OFADD__(v27, a2))
    {
      if (v28 >= v27)
      {
        if (!__OFSUB__(v28, v27))
        {
          swift_arrayInitWithCopy();
          result = a4(v19 + a2 * v20, a3);
          v29 = v28 + v38;
          if (!__OFADD__(v28, v38))
          {
            v30 = v5[3] >> 1;
            if (v30 >= v29)
            {
              if (!__OFSUB__(v30, v29))
              {
                swift_arrayInitWithCopy();
                goto LABEL_24;
              }

              goto LABEL_36;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = result;
  v34 = v5[2];
  v23 = v5[1] + v34 * v20;
  v24 = result + v18;
  if (v23 - v24 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_37;
  }

  swift_arrayDestroy();
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v23, a2, v19);
  swift_arrayDestroy();
  a4(v21, a3);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v23 + v20 * a2 + v20 * v38, v35, v21 + v20 * a3);
  result = (v23 + v20 * v36);
  if (v24 + *(v22 + 16) * v20 - result != 0x8000000000000000 || v20 != -1)
  {
    swift_arrayDestroy();
    *(v22 + 16) = 0;

    v27 = v34;
LABEL_24:

    swift_unknownObjectRelease();
    result = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfCSi6offset_10OmniSearch0L6ResultV7elementt_Tt1g5(v37, v27);
    *v5 = result;
    v5[1] = v31;
    v5[2] = v32;
    v5[3] = v33;
    return result;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (ob) of @objc PHAssetCharacterRecognitionProperties.characterRecognitionData.getter(void *a1)
{
  v2 = [a1 characterRecognitionData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc PHFetchOptions.addFetchPropertySets(_:)(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 addFetchPropertySets_];
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v9 = *(v8 + 72);
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12 = v11 + v9 * a1;
  swift_arrayDestroy();
  v13 = a3 - v10;
  if (__OFSUB__(a3, v10))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9 * a3;
  if (!v13)
  {
    goto LABEL_7;
  }

  v15 = *(v7 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_15;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11 + v9 * a2, v15 - a2, v12 + v14);
  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v13);
  v18 = v16 + v13;
  if (v17)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  *(v7 + 16) = v18;
LABEL_7:
  if (a3 >= 1 && v14 > 0)
  {
    goto LABEL_17;
  }
}

uint64_t dispatch thunk of ResultHydration.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_159();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v16 = (*(v0 + 16) + **(v0 + 16));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_63(v12);
  *v13 = v14;
  v13[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);

  return v16(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of ResultHydration.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:)()
{
  OUTLINED_FUNCTION_75();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14 = (*(v0 + 24) + **(v0 + 24));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_23(v10);
  *v11 = v12;
  v11[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v14(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_75();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_133();
  v13 = (*(v8 + 224) + **(v8 + 224));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_63(v9);
  *v10 = v11;
  v10[1] = dispatch thunk of AnswerResolver.extractInfo(query:results:assistantLocale:);

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of ResultHydrator.fetchFullContentForMessagesResultAndIdentifier(_:messageIdentifier:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_133();
  v5 = (*(v0 + 280) + **(v0 + 280));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_23(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_35_20();

  return v5();
}

uint64_t _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a1;
  v5[18] = a2;
  v7 = type metadata accessor for OSSignpostID();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[5] = type metadata accessor for ResultHydrator();
  v5[6] = &protocol witness table for ResultHydrator;
  v5[2] = a3;

  return MEMORY[0x2822009F8](_s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TY0_);
}

uint64_t _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TY0_()
{
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v2, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = OUTLINED_FUNCTION_172();
    v6 = OUTLINED_FUNCTION_159_5(v5);
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v3, v4, v6, "EventManager.hydrateWithSourceDocuments", "", v1, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 144);

  v12 = OUTLINED_FUNCTION_59_12();
  v13(v12, v7, v8);
  v14 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v14);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 200) = OSSignpostIntervalState.init(id:isOpen:)();
  v15 = OUTLINED_FUNCTION_64_0();
  v16(v15);
  outlined init with copy of ChatMessageRecord(v11, v0 + 56);
  outlined init with copy of ChatMessageRecord(v0 + 16, v0 + 96);
  v17 = swift_allocObject();
  *(v0 + 208) = v17;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 56), v17 + 16);
  *(v17 + 56) = v10;
  *(v17 + 64) = v9;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 96), v17 + 72);

  v18 = swift_task_alloc();
  *(v0 + 216) = v18;
  *v18 = v0;
  v18[1] = _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TQ1_;
  v19 = *(v0 + 136);

  return (specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:))(0, &async function pointer to partial apply for closure #1 in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:), v17, v19);
}

uint64_t _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TQ1_()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 224) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

uint64_t _s10OmniSearch12EventManagerV26hydrateWithSourceDocuments3for11itemFetcher14resultHydrator6localeSayAA0B6ResultVGAK_AA04ItemK8Protocol_pAA0O9Hydration_pSSSgtYaFZTf4nnenn_nAA0oM0C_Tt3g5TY2_()
{
  OUTLINED_FUNCTION_78();
  $defer #1 () in static EventManager.hydrateWithSourceDocuments(for:itemFetcher:resultHydrator:locale:)(v0[25]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_62();
  v2 = v0[28];

  return v1(v2);
}

uint64_t specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v1[1];
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR) - 8);
  v12 = *(v10 + 16);
  if (v9 + *(v11 + 72) * v7 + *(v11 + 72) * v8 != v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v12)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v10 + 24);

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    v2 = MEMORY[0x277D84F90];
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v18 = *(v17 - 8);
  result = v17 - 8;
  v19 = v18;
  v20 = *(v18 + 72);
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v9 + v20 * v7 - (v2 + ((*(v19 + 80) + 32) & ~*(v19 + 80)));
  if (v20 != -1 || v21 != 0x8000000000000000)
  {
    v23 = v21 / v20;
    result = v8 + v23;
    if (!__OFADD__(v8, v23))
    {
      v5 = *(v2 + 16);
      if (result >= v5)
      {
        return v2;
      }

LABEL_25:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(result, v5, 0);
      return v2;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_6(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_159();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_63_14();

  return closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_204();

  return closure #1 in closure #1 in closure #2 in ResultHydrator.fetchFullContent(for:locale:answerSynthesisResultForMetrics:)(v3, v4, v5, v6, v7, v8);
}

uint64_t outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed [SearchResult], @in_guaranteed String?) -> (@out [SearchResult], @error @owned Error)()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_6_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v1[1] = dispatch thunk of AnswerResolvable.extractInfo(query:results:assistantLocale:);
  OUTLINED_FUNCTION_204();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

void OUTLINED_FUNCTION_52_16()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_58_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D85838];

  return lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(a1, a2, a3, v4);
}

BOOL OUTLINED_FUNCTION_75_11(int a1)
{
  *(v2 - 452) = a1;

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_76_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_77_11(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v6, a4, a5, a6, v7, 2u);
}

uint64_t OUTLINED_FUNCTION_81_13()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_86_12()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_103_11()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_105_9()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_106_9@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;

  return outlined init with take of SearchResult(v3 + v1, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_108_7()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

double OUTLINED_FUNCTION_124_10(uint64_t a1, ...)
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_125_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_126_10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_127_10()
{

  return outlined consume of Data?(v1, v0);
}

uint64_t one-time initialization function for shared()
{
  v0 = type metadata accessor for LLMQUModelServer(0);
  swift_allocObject();
  v1 = LLMQUModelServer.init()();
  type metadata accessor for LLMQueryParser();
  v2 = swift_allocObject();
  v5 = v0;
  v6 = &protocol witness table for LLMQUModelServer;
  *&v4 = v1;
  result = outlined init with take of ResponseOverrideMatcherProtocol(&v4, v2 + 16);
  static LLMQueryParser.shared = v2;
  return result;
}

{
  type metadata accessor for MemoryCreationQUNetworkService(0);
  v0 = MemoryCreationQUNetworkService.__allocating_init()();
  v1 = type metadata accessor for ECRClient();
  OUTLINED_FUNCTION_128_2();
  swift_allocObject();

  v2 = ECRClient.init()();
  if (v2)
  {
    v3 = &protocol witness table for ECRClient;
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  v7[0] = v2;
  v7[3] = v1;
  v7[4] = v3;
  type metadata accessor for MemoryCreationQueryParser();
  OUTLINED_FUNCTION_128_2();
  v4 = swift_allocObject();
  *(v4 + 16) = [objc_opt_self() spotlightManager];
  type metadata accessor for MemoryCreationQUController();
  swift_allocObject();
  OUTLINED_FUNCTION_111();

  v5 = specialized MemoryCreationQUController.init(llmQUNetworkService:ecrClient:queryParser:)(v0, v7, v4, v1);

  static MemoryCreationQUController.shared = v5;
  return result;
}

{
  v0 = [objc_allocWithZone(MEMORY[0x277D65728]) init];
  type metadata accessor for LocalSearchManager();
  v1 = swift_allocObject();
  result = specialized LocalSearchManager.init(infinitePatience:session:)(1, v0, v1);
  static LocalSearchManager.shared = result;
  return result;
}

{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  result = JSONEncoder.init()();
  static JSONEncoder.shared = result;
  return result;
}

{
  type metadata accessor for ContextManager();
  swift_allocObject();
  result = ContextManager.().init()();
  static ContextManager.shared = result;
  return result;
}

uint64_t LLMQueryParser.__allocating_init(llmQUModelServer:)(void *a1)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_12_24(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_7_28();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t static LLMQueryParser.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t LLMQueryParser.llmQUModelServer.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  outlined init with take of ResponseOverrideMatcherProtocol(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t LLMQueryParser.init(llmQUModelServer:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_12_24(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_7_28();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t LLMQueryParser.parse(_:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v1[330] = v0;
  v1[329] = v2;
  v1[328] = v3;
  v1[327] = v4;
  v1[326] = v5;
  v1[325] = v6;
  v1[331] = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  OUTLINED_FUNCTION_28_0();
  v1[332] = v7;
  v1[333] = swift_task_alloc();
  v1[334] = type metadata accessor for Date();
  OUTLINED_FUNCTION_28_0();
  v1[335] = v8;
  v1[336] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMQueryParser.parse(_:clientId:));
}

{
  v32 = v0;
  static SearchOverrides.match(rewrittenQuery:)(v0[326], v0[327], &v25);
  v11 = v26;
  if (v26 && (v12 = v30, v13 = v31, v15 = v28, v14 = v29, v16 = v27, v17 = v25, , outlined consume of SearchOverride?(v17, v11, v16, v15, v14, v12, v13), v13))
  {
    if (one-time initialization token for llmQU != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logging.llmQU);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v19, v20, "LLMQU override found, skipping LLMQU model call and using override: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x25F8A1050](v22, -1, -1);
      MEMORY[0x25F8A1050](v21, -1, -1);
    }

    LLMQUModelResponse.init(jsonString:query:)(v0[325]);

    OUTLINED_FUNCTION_127();

    return v23();
  }

  else
  {
    Date.init()();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = v0[330];
    v0[337] = static MetricsLogger.shared;
    OUTLINED_FUNCTION_133();
    v3 = (*(v2 + 144))();
    (*(*v1 + 88))(v3);
    v4 = v0[323];
    v5 = v0[324];
    __swift_project_boxed_opaque_existential_1(v0 + 320, v4);
    OUTLINED_FUNCTION_28_0();
    v24 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[338] = v7;
    *v7 = v0;
    v7[1] = LLMQueryParser.parse(_:clientId:);
    v8 = v0[327];
    v9 = v0[326];

    return (v24)(v0 + 2, v9, v8, 0, 1, v4, v5);
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *(v4 + 2712) = v0;

  if (v0)
  {
    v5 = LLMQueryParser.parse(_:clientId:);
  }

  else
  {
    v5 = LLMQueryParser.parse(_:clientId:);
  }

  return MEMORY[0x2822009F8](v5);
}

{
  v13 = v0;
  v1 = *(v0 + 2696);
  v2 = *(v0 + 2688);
  v3 = *(v0 + 2680);
  v4 = *(v0 + 2672);
  v5 = *(v0 + 2632);
  v6 = *(v0 + 2624);
  v7 = *(v0 + 2600);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2560));
  *(v0 + 360) = (*(*v1 + 312))(v2);
  *(v0 + 364) = 0;
  memcpy((v0 + 1168), (v0 + 16), 0x17DuLL);
  memcpy(__dst, (v0 + 16), 0x17DuLL);
  OUTLINED_FUNCTION_133();
  v9 = *(v8 + 152);
  outlined init with copy of LLMQUResult(v0 + 1168, v0 + 1552);
  v9(v6, v5, __dst);
  memcpy((v0 + 784), __dst, 0x17DuLL);
  outlined destroy of LLMQUResult(v0 + 784);
  (*(v3 + 8))(v2, v4);
  memcpy((v0 + 1936), (v0 + 16), 0x138uLL);
  memcpy((v0 + 400), (v0 + 16), 0x17DuLL);
  outlined init with copy of LLMQUModelResponse(v0 + 1936, v0 + 2248);
  outlined destroy of LLMQUResult(v0 + 400);
  memcpy(v7, (v0 + 1936), 0x138uLL);

  OUTLINED_FUNCTION_127();

  return v10();
}

{
  v1 = v0[339];
  v2 = v0[337];
  v13 = v0[336];
  v3 = v0[335];
  v4 = v0[334];
  v5 = v0[333];
  v6 = v0[332];
  v7 = v0[331];
  v8 = v0[329];
  v9 = v0[328];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 320);
  (*(*v2 + 320))(v1);
  OUTLINED_FUNCTION_133();
  (*(v10 + 160))(v9, v8, v5);
  (*(v6 + 8))(v5, v7);
  swift_willThrow();
  (*(v3 + 8))(v13, v4);

  OUTLINED_FUNCTION_127();

  return v11();
}

Swift::Void __swiftcall LLMQueryParser.prewarmModel()()
{
  OUTLINED_FUNCTION_133();
  (*(v0 + 88))(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 processIdentifier];

  (*(v2 + 8))(v4, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t LLMQueryParser.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for QueryParsing.parse(_:clientId:) in conformance LLMQueryParser(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 120) + **(**v5 + 120));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = protocol witness for QueryParsing.parse(_:clientId:) in conformance LLMQueryParser;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for QueryParsing.parse(_:clientId:) in conformance LLMQueryParser()
{
  OUTLINED_FUNCTION_48();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t specialized LLMQueryParser.init(llmQUModelServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  outlined init with take of ResponseOverrideMatcherProtocol(&v9, a2 + 16);
  return a2;
}

uint64_t dispatch thunk of QueryParsing.parse(_:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_28_0();
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for QueryParsing.parse(_:clientId:) in conformance LLMQueryParser;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of LLMQueryParser.parse(_:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_133();
  v14 = (*(v11 + 120) + **(v11 + 120));
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of LLMQueryParser.parse(_:clientId:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return specialized LLMQueryParser.init(llmQUModelServer:)(v3, v0, v1, v2);
}

double LLMQUModelResponse.init(jsonString:query:)@<D0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  memset(v54, 0, 32);
  v54[32] = 2;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 514;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v64 = 2;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 2;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  outlined destroy of LLMQUModelResponse(v54);
  static String.Encoding.utf8.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;

  (*(v6 + 8))(v9, v4);
  if (v12 >> 60 == 15)
  {
    lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type LLMQUModelResponse and conformance LLMQUModelResponse();
    v15 = v75;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v10, v12);

    if (!v15)
    {
      v16 = v28;
      v17 = v35;
      v18 = v39;
      v19 = v40;
      v20 = v45;
      v21 = v50;
      v22 = v53;
      v23 = v27[1];
      *a3 = v27[0];
      *(a3 + 16) = v23;
      *(a3 + 32) = v16;
      *(a3 + 33) = *v29;
      *(a3 + 36) = *&v29[3];
      *(a3 + 40) = v30;
      *(a3 + 56) = v31;
      *(a3 + 72) = v32;
      *(a3 + 88) = v33;
      *(a3 + 104) = v34;
      *(a3 + 120) = v17;
      *(a3 + 122) = v36;
      *(a3 + 126) = v37;
      *(a3 + 128) = v38;
      *(a3 + 144) = v18;
      *(a3 + 152) = v19;
      v24 = *v41;
      *(a3 + 156) = *&v41[3];
      *(a3 + 153) = v24;
      v25 = v43;
      *(a3 + 160) = v42;
      *(a3 + 176) = v25;
      *(a3 + 192) = v44;
      *(a3 + 208) = v20;
      *(a3 + 212) = *&v46[3];
      *(a3 + 209) = *v46;
      *(a3 + 216) = v47;
      *(a3 + 232) = v48;
      *(a3 + 248) = v49;
      *(a3 + 264) = v21;
      result = *&v51;
      v26 = v52;
      *(a3 + 272) = v51;
      *(a3 + 288) = v26;
      *(a3 + 304) = v22;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LLMQUModelResponse and conformance LLMQUModelResponse()
{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse and conformance LLMQUModelResponse;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse and conformance LLMQUModelResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse and conformance LLMQUModelResponse);
  }

  return result;
}

uint64_t LLMQUResult.parse.getter()
{
  memcpy(__dst, v0, 0x138uLL);
  v1 = OUTLINED_FUNCTION_94();
  memcpy(v1, v2, 0x138uLL);
  return outlined init with copy of LLMQUModelResponse(__dst, v4);
}

void *LLMQUResult.parse.setter(const void *a1)
{
  memcpy(v4, v1, 0x138uLL);
  outlined destroy of LLMQUModelResponse(v4);
  return memcpy(v1, a1, 0x138uLL);
}

uint64_t LLMQUResult.loggingMetrics.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 312), 0x45uLL);
  memcpy(a1, (v1 + 312), 0x45uLL);
  return outlined init with copy of LLMQULoggingMetrics(__dst, &v4);
}

void *LLMQUResult.loggingMetrics.setter(const void *a1)
{
  memcpy(__dst, (v1 + 312), 0x45uLL);
  outlined destroy of LLMQULoggingMetrics(__dst);
  return memcpy((v1 + 312), a1, 0x45uLL);
}

void *LLMQUResult.init(parse:loggingMetrics:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(a3, __src, 0x138uLL);

  return memcpy((a3 + 312), a2, 0x45uLL);
}

uint64_t LLMQULoggingMetrics.modelNumber.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LLMQULoggingMetrics.requestLength.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.responseLength.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.overallTime.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.promptGenerationTime.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.modelPrewarmTime.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.modelInferenceTime.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t LLMQULoggingMetrics.postProcessTime.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

void LLMQULoggingMetrics.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
}

uint64_t LLMQULoggingMetrics.init(modelNumber:requestLength:responseLength:overallTime:promptGenerationTime:modelPrewarmTime:modelInferenceTime:postProcessTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 44) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  *(a9 + 60) = BYTE4(a8) & 1;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return result;
}

uint64_t LLMQUModelResponse.app_entity_status.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LLMQUModelResponse.contains_type.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t LLMQUModelResponse.filter_type.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t LLMQUModelResponse.flag_color.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t LLMQUModelResponse.location.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t LLMQUModelResponse.location_arrival.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t LLMQUModelResponse.location_departure.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t LLMQUModelResponse.order_by_time.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t LLMQUModelResponse.person.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t LLMQUModelResponse.preferred_type.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t LLMQUModelResponse.receiver.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t LLMQUModelResponse.rewritten_query.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t LLMQUModelResponse.simplified_query.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t LLMQUModelResponse.search_term.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t LLMQUModelResponse.sender.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t LLMQUModelResponse.source_type.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t LLMQUModelResponse.tag_name.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t LLMQUModelResponse.temporal_reference.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return result;
}

uint64_t LLMQUModelResponse.time.setter(uint64_t a1)
{

  *(v1 + 264) = a1;
  return result;
}

uint64_t LLMQUModelResponse.message_time.setter(uint64_t a1)
{

  *(v1 + 272) = a1;
  return result;
}

uint64_t LLMQUModelResponse.app.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 280) = v2;
  *(v1 + 288) = v0;
  return result;
}

uint64_t LLMQUModelResponse.extracted_type.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 296) = v2;
  *(v1 + 304) = v0;
  return result;
}

double LLMQUModelResponse.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 514;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 2;
  *(a1 + 216) = 0u;
  v2 = (a1 + 216);
  v2[4] = 0u;
  v2[5] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[1] = 0u;
  return result;
}

Swift::Void __swiftcall LLMQUModelResponse.postProcess()()
{
  if (*(v0 + 104))
  {
    v1 = v0;
    if (*(v0 + 121) == 2)
    {
      if (one-time initialization token for llmQU != -1)
      {
        OUTLINED_FUNCTION_55_14(&one-time initialization token for llmQU);
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logging.llmQU);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_25D85C000, v3, v4, "Order by time is set but pick one is not; defaulting pick one to be true", v5, 2u);
        MEMORY[0x25F8A1050](v5, -1, -1);
      }

      *(v1 + 121) = 1;
    }
  }
}

void LLMQUModelResponse.toStructuredQuery()(uint64_t a1@<X8>)
{
  type metadata accessor for PersonQueryEntity(0);
  OUTLINED_FUNCTION_14();
  v320 = v3;
  v321 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  v289 = &v282 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  v334 = &v282 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v19);
  v333 = &v282 - v20;
  v332 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v21);
  v23 = &v282 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Entity = type metadata accessor for LocationQueryEntity(0);
  OUTLINED_FUNCTION_14();
  *&v330 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  v323 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  v322 = v28;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  v327 = v30;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_4();
  v326 = v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  v35 = &v282 - v34;
  MEMORY[0x28223BE20](v36);
  v328 = (&v282 - v37);
  v38 = v1[1];
  v319 = *v1;
  v39 = v1[2];
  v40 = v1[3];
  v41 = *(v1 + 32);
  v42 = v1[6];
  v329 = v1[5];
  v43 = v1[7];
  v44 = v1[8];
  v324 = v39;
  v325 = v43;
  v45 = v1[9];
  v316 = v1[10];
  v46 = v1[12];
  v315 = v1[11];
  v288 = v46;
  v47 = v1[14];
  v299 = v1[13];
  v300 = v47;
  v301 = *(v1 + 120);
  v306 = *(v1 + 121);
  v48 = v1[17];
  v294 = v1[16];
  v307 = v48;
  v304 = v1[18];
  v305 = *(v1 + 152);
  OUTLINED_FUNCTION_59_13(v1[25]);
  v296 = v49;
  v309 = v50;
  v51 = v1[30];
  v297 = v1[29];
  v310 = v51;
  v52 = v1[32];
  v298 = v1[31];
  v311 = v52;
  v53 = v1[34];
  v312 = v1[33];
  v313 = v53;
  OUTLINED_FUNCTION_62_13(v1[38]);
  StructuredQueryEntity.init()();
  v317 = a1;
  if (v38)
  {
    v54._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v55 = String.camelCased(with:)(v54);
    AppEntityStatus.init(rawValue:)(v55);
    v56 = v336;
    type metadata accessor for StructuredQueryEntity(0);
    v335 = v56;
    EntityProperty.wrappedValue.setter();
  }

  if (v40)
  {
    v57._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v58 = String.camelCased(with:)(v57);
    ContainsType.init(rawValue:)(v58);
    if (v336 != 38)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch12ContainsTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch12ContainsTypeOGMR);
      v60 = OUTLINED_FUNCTION_79_12(v59);
      OUTLINED_FUNCTION_69_10(v60, xmmword_25DBC8180);
      type metadata accessor for StructuredQueryEntity(0);
      v336 = v60;
      EntityProperty.wrappedValue.setter();
    }
  }

  if (v41 != 2)
  {
    type metadata accessor for StructuredQueryEntity(0);
    LOBYTE(v336) = v41 & 1;
    EntityProperty.wrappedValue.setter();
  }

  if (v42)
  {
    v61._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v62 = String.camelCased(with:)(v61);
    FilterType.init(rawValue:)(v62);
    if (v336 != 39)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch10FilterTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch10FilterTypeOGMR);
      v64 = OUTLINED_FUNCTION_79_12(v63);
      OUTLINED_FUNCTION_69_10(v64, xmmword_25DBC8180);
      type metadata accessor for StructuredQueryEntity(0);
      v336 = v64;
      EntityProperty.wrappedValue.setter();
    }
  }

  if (v44)
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v66 = OUTLINED_FUNCTION_78_14(v65);
    *(v66 + 16) = xmmword_25DBC8180;
    *(v66 + 32) = v325;
    *(v66 + 40) = v44;
    type metadata accessor for StructuredQueryEntity(0);
    v336 = v66;

    EntityProperty.wrappedValue.setter();
  }

  v67 = MEMORY[0x277D84F90];
  if (v45)
  {
    v68 = v45;
  }

  else
  {
    v68 = MEMORY[0x277D84F90];
  }

  v318 = *(v68 + 16);
  v329 = "llmQUModelServer";

  v69 = 0;
  v319 = v68;
  v70 = (v68 + 40);
  v71 = v67;
  while (v318 != v69)
  {
    if (v69 >= *(v319 + 16))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v324 = v70;
    v325 = v69;
    v44 = *(v70 - 1);
    v72 = *v70;

    OUTLINED_FUNCTION_51_14();
    v75 = OUTLINED_FUNCTION_77_12(v333, v73, v74, v332);
    OUTLINED_FUNCTION_50_13(v75);
    v76 = v328;
    DisplayRepresentation.init(title:subtitle:image:)();
    v77 = v35;
    v78 = Entity;
    v79 = *(Entity + 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    OUTLINED_FUNCTION_28_19();
    v80 = EntityProperty<>.init(title:)();
    *(v76 + v79) = v80;
    v81 = *(v78 + 6);
    OUTLINED_FUNCTION_45_13();
    *(v76 + v81) = EntityProperty<>.init(title:)();
    v82 = *(v78 + 7);
    v35 = v77;
    OUTLINED_FUNCTION_34_22();
    *(v76 + v82) = EntityProperty<>.init(title:)();
    v336 = v44;
    v337 = v72;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_21_22();
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v76, v77, v83);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v88, v89, v90, v71);
      v71 = v91;
    }

    OUTLINED_FUNCTION_66_14();
    if (v85)
    {
      v92 = OUTLINED_FUNCTION_22_5(v84);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v92, v93, v94, v71);
      v71 = v95;
    }

    OUTLINED_FUNCTION_13_19();
    outlined init with take of LocationQueryEntity(v77, v86, v87);
    outlined destroy of LocationQueryEntity(v328, v80);
    v70 = v324 + 2;
    v69 = v325 + 1;
  }

  if (v316)
  {
    v96 = v316;
  }

  else
  {
    v96 = MEMORY[0x277D84F90];
  }

  v324 = *(v96 + 16);

  v97 = 0;
  v325 = v96;
  v98 = (v96 + 40);
  while (v324 != v97)
  {
    if (v97 >= *(v325 + 16))
    {
      goto LABEL_149;
    }

    v44 = *(v98 - 1);
    v99 = *v98;
    v328 = v98;

    OUTLINED_FUNCTION_51_14();
    v102 = OUTLINED_FUNCTION_77_12(v333, v100, v101, v332);
    OUTLINED_FUNCTION_50_13(v102);
    v103 = v326;
    DisplayRepresentation.init(title:subtitle:image:)();
    v104 = Entity;
    v105 = *(Entity + 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    OUTLINED_FUNCTION_28_19();
    *(v103 + v105) = EntityProperty<>.init(title:)();
    v106 = *(v104 + 6);
    OUTLINED_FUNCTION_45_13();
    v107 = EntityProperty<>.init(title:)();
    *(v103 + v106) = v107;
    v108 = *(v104 + 7);
    OUTLINED_FUNCTION_34_22();
    *(v103 + v108) = EntityProperty<>.init(title:)();
    v336 = v44;
    v337 = v99;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_21_22();
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v103, v327, v109);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v113, v114, v115, v71);
      v71 = v116;
    }

    OUTLINED_FUNCTION_66_14();
    if (v85)
    {
      v117 = OUTLINED_FUNCTION_22_5(v110);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v117, v118, v119, v71);
      v71 = v120;
    }

    OUTLINED_FUNCTION_13_19();
    outlined init with take of LocationQueryEntity(v327, v111, v112);
    outlined destroy of LocationQueryEntity(v326, v107);
    v98 = v328 + 2;
    v97 = (v97 + 1);
  }

  if (v315)
  {
    v121 = v315;
  }

  else
  {
    v121 = MEMORY[0x277D84F90];
  }

  v327 = *(v121 + 16);

  v122 = 0;
  v328 = v121;
  v123 = (v121 + 40);
  v124 = Entity;
  while (v327 != v122)
  {
    if (v122 >= v328[2])
    {
      goto LABEL_150;
    }

    v44 = *(v123 - 1);
    v125 = *v123;

    OUTLINED_FUNCTION_51_14();
    v128 = OUTLINED_FUNCTION_77_12(v333, v126, v127, v332);
    OUTLINED_FUNCTION_50_13(v128);
    v129 = v322;
    DisplayRepresentation.init(title:subtitle:image:)();
    v130 = v124[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
    OUTLINED_FUNCTION_28_19();
    *(v129 + v130) = EntityProperty<>.init(title:)();
    v131 = v124[6];
    OUTLINED_FUNCTION_45_13();
    *(v129 + v131) = EntityProperty<>.init(title:)();
    v132 = v124[7];
    OUTLINED_FUNCTION_34_22();
    v133 = EntityProperty<>.init(title:)();
    *(v129 + v132) = v133;
    v336 = v44;
    v337 = v125;
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_21_22();
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v129, v323, v134);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v138, v139, v140, v71);
      v71 = v141;
    }

    OUTLINED_FUNCTION_66_14();
    if (v85)
    {
      v142 = OUTLINED_FUNCTION_22_5(v135);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v142, v143, v144, v71);
      v71 = v145;
    }

    OUTLINED_FUNCTION_13_19();
    outlined init with take of LocationQueryEntity(v323, v136, v137);
    outlined destroy of LocationQueryEntity(v322, v133);
    v123 += 2;
    ++v122;
  }

  if (*(v71 + 16))
  {
    type metadata accessor for StructuredQueryEntity(0);
    v336 = v71;

    EntityProperty.wrappedValue.setter();
  }

  if (v299)
  {
    v146._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v147 = String.camelCased(with:)(v146);
    v148 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LLMQUModelResponse.toStructuredQuery(), v147);

    if (v148 == 1)
    {
      v149 = 1;
    }

    else
    {
      v149 = 2;
    }

    if (v148)
    {
      v150 = v149;
    }

    else
    {
      v150 = 0;
    }

    type metadata accessor for StructuredQueryEntity(0);
    LOBYTE(v336) = v150;
    EntityProperty.wrappedValue.setter();
  }

  v334 = v23;
  v329 = v71;
  if (v300)
  {
    v151 = v300;
  }

  else
  {
    v151 = MEMORY[0x277D84F90];
  }

  v152 = *(v151 + 16);
  v328 = v151;
  if (v152)
  {
    v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMR);
    Entity = "Source Document UT Type";
    v332 = v153;

    v154 = MEMORY[0x277D84F90];
    v155 = v151 + 40;
    v330 = xmmword_25DBC8180;
    v156 = v290;
    v157 = v289;
    do
    {
      OUTLINED_FUNCTION_75_12();
      PersonQueryEntity.init()(v157);
      OUTLINED_FUNCTION_57_12();
      EntityProperty<>.init(title:)();
      OUTLINED_FUNCTION_47_15();
      lazy protocol witness table accessor for type ContactHandleType and conformance ContactHandleType();
      v158 = OUTLINED_FUNCTION_74_17();
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v160 = OUTLINED_FUNCTION_78_14(v159);
      OUTLINED_FUNCTION_46_17(v160);

      EntityProperty.wrappedValue.setter();
      v161 = *(v157 + v320[5]);
      v336 = v44;
      v337 = v158;
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_3_38();
      _s10OmniSearch19LocationQueryEntityVWOcTm_0(v157, v156, v162);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v166 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v166, v167, v168, v154);
        v154 = v169;
      }

      OUTLINED_FUNCTION_65_16();
      if (v85)
      {
        v170 = OUTLINED_FUNCTION_22_5(v163);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v170, v171, v172, v154);
        v154 = v173;
      }

      *(v154 + 16) = v161;
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_2_33();
      outlined init with take of LocationQueryEntity(v156, v164, v165);
      OUTLINED_FUNCTION_88_9();
      v155 += 16;
      --v152;
    }

    while (v152);
  }

  else
  {

    v154 = MEMORY[0x277D84F90];
  }

  if (v301 != 2 && (v301 & 1) != 0)
  {
    v174 = v282;
    PersonQueryEntity.init()(v282);
    if (one-time initialization token for oneself != -1)
    {
      OUTLINED_FUNCTION_26_15(&one-time initialization token for oneself);
    }

    v175 = unk_27FC6EAE0;
    v336 = static Person.oneself;
    v337 = unk_27FC6EAE0;

    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_3_38();
    v176 = v283;
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v174, v283, v177);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v267 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v267, v268, v269, v154);
      v154 = v270;
    }

    OUTLINED_FUNCTION_64_12();
    if (v85)
    {
      OUTLINED_FUNCTION_54_17(v178);
      v154 = v271;
    }

    *(v154 + 16) = v175;
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_2_33();
    outlined init with take of LocationQueryEntity(v176, v179, v180);
    OUTLINED_FUNCTION_88_9();
  }

  if (v302)
  {
    v181 = v302;
  }

  else
  {
    v181 = MEMORY[0x277D84F90];
  }

  v182 = *(v181 + 16);
  v328 = v181;
  if (v182)
  {
    v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMR);
    Entity = "Source Document UT Type";
    v332 = v183;

    v184 = v181 + 40;
    v330 = xmmword_25DBC8180;
    v185 = v292;
    v186 = v291;
    do
    {
      OUTLINED_FUNCTION_75_12();
      PersonQueryEntity.init()(v186);
      OUTLINED_FUNCTION_57_12();
      EntityProperty<>.init(title:)();
      OUTLINED_FUNCTION_47_15();
      lazy protocol witness table accessor for type ContactHandleType and conformance ContactHandleType();
      v187 = OUTLINED_FUNCTION_74_17();
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v189 = OUTLINED_FUNCTION_78_14(v188);
      OUTLINED_FUNCTION_46_17(v189);

      EntityProperty.wrappedValue.setter();
      v190 = *(v186 + v320[6]);
      v336 = v44;
      v337 = v187;
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_3_38();
      _s10OmniSearch19LocationQueryEntityVWOcTm_0(v186, v185, v191);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v195, v196, v197, v154);
        v154 = v198;
      }

      OUTLINED_FUNCTION_65_16();
      if (v85)
      {
        v199 = OUTLINED_FUNCTION_22_5(v192);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v199, v200, v201, v154);
        v154 = v202;
      }

      *(v154 + 16) = v190;
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_2_33();
      outlined init with take of LocationQueryEntity(v185, v193, v194);
      OUTLINED_FUNCTION_88_9();
      v184 += 16;
      --v182;
    }

    while (v182);
  }

  else
  {
  }

  if (v303 != 2 && (v303 & 1) != 0)
  {
    v203 = v284;
    PersonQueryEntity.init()(v284);
    if (one-time initialization token for oneself != -1)
    {
      OUTLINED_FUNCTION_26_15(&one-time initialization token for oneself);
    }

    v204 = unk_27FC6EAE0;
    v336 = static Person.oneself;
    v337 = unk_27FC6EAE0;

    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_3_38();
    v205 = v285;
    _s10OmniSearch19LocationQueryEntityVWOcTm_0(v203, v285, v206);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v272 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v272, v273, v274, v154);
      v154 = v275;
    }

    OUTLINED_FUNCTION_64_12();
    if (v85)
    {
      OUTLINED_FUNCTION_54_17(v207);
      v154 = v276;
    }

    *(v154 + 16) = v204;
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_2_33();
    outlined init with take of LocationQueryEntity(v205, v208, v209);
    OUTLINED_FUNCTION_88_9();
  }

  v210 = v304;
  if (v304)
  {
    v211 = v304;
  }

  else
  {
    v211 = MEMORY[0x277D84F90];
  }

  v212 = *(v211 + 16);
  v328 = v211;
  if (v212)
  {
    v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch17ContactHandleTypeOGSgGMR);
    Entity = "Source Document UT Type";
    v332 = v213;

    v214 = v211 + 40;
    v330 = xmmword_25DBC8180;
    v215 = v295;
    v216 = v293;
    do
    {
      OUTLINED_FUNCTION_75_12();
      PersonQueryEntity.init()(v216);
      OUTLINED_FUNCTION_57_12();
      EntityProperty<>.init(title:)();
      OUTLINED_FUNCTION_47_15();
      lazy protocol witness table accessor for type ContactHandleType and conformance ContactHandleType();
      v210 = OUTLINED_FUNCTION_74_17();
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v218 = OUTLINED_FUNCTION_78_14(v217);
      OUTLINED_FUNCTION_46_17(v218);

      EntityProperty.wrappedValue.setter();
      v219 = *(v216 + v320[7]);
      v336 = v44;
      v337 = v210;
      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_3_38();
      _s10OmniSearch19LocationQueryEntityVWOcTm_0(v216, v215, v220);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v224, v225, v226, v154);
        v154 = v227;
      }

      OUTLINED_FUNCTION_65_16();
      if (v85)
      {
        v228 = OUTLINED_FUNCTION_22_5(v221);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v228, v229, v230, v154);
        v154 = v231;
      }

      *(v154 + 16) = v219;
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_2_33();
      outlined init with take of LocationQueryEntity(v215, v222, v223);
      outlined destroy of LocationQueryEntity(v216, v210);
      v214 += 16;
      --v212;
    }

    while (v212);
  }

  else
  {
  }

  if (v305 == 2)
  {
    v232 = v314;
    v233 = v313;
    v234 = v312;
    OUTLINED_FUNCTION_86_13();
  }

  else
  {
    v232 = v314;
    v233 = v313;
    v234 = v312;
    if (v305)
    {
      v235 = v287;
      PersonQueryEntity.init()(v287);
      if (one-time initialization token for oneself != -1)
      {
        OUTLINED_FUNCTION_26_15(&one-time initialization token for oneself);
      }

      v210 = unk_27FC6EAE0;
      v336 = static Person.oneself;
      v337 = unk_27FC6EAE0;

      EntityProperty.wrappedValue.setter();
      OUTLINED_FUNCTION_3_38();
      v236 = v235;
      v151 = v286;
      _s10OmniSearch19LocationQueryEntityVWOcTm_0(v236, v286, v237);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v277 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v277, v278, v279, v154);
        v154 = v280;
      }

      OUTLINED_FUNCTION_64_12();
      if (v85)
      {
        OUTLINED_FUNCTION_54_17(v238);
        v154 = v281;
      }

      *(v154 + 16) = v210;
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_2_33();
      outlined init with take of LocationQueryEntity(v151, v239, v240);
      outlined destroy of LocationQueryEntity(v287, v210);
    }

    OUTLINED_FUNCTION_86_13();
  }

  if (*(v154 + 16))
  {
    type metadata accessor for StructuredQueryEntity(0);
    v336 = v154;

    EntityProperty.wrappedValue.setter();
  }

  if (v151 != 2)
  {
    type metadata accessor for StructuredQueryEntity(0);
    LOBYTE(v336) = v151 & 1;
    EntityProperty.wrappedValue.setter();
  }

  if (v210)
  {
    v241._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v242 = String.camelCased(with:)(v241);
    PreferredType.init(rawValue:)(v242);
    if (v336 != 58)
    {
      v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch13PreferredTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch13PreferredTypeOGMR);
      v244 = OUTLINED_FUNCTION_79_12(v243);
      OUTLINED_FUNCTION_69_10(v244, xmmword_25DBC8180);
      type metadata accessor for StructuredQueryEntity(0);
      v336 = v244;
      EntityProperty.wrappedValue.setter();
    }
  }

  if (v308)
  {
    v245 = v308;
  }

  else
  {
    v245 = MEMORY[0x277D84F90];
  }

  type metadata accessor for StructuredQueryEntity(0);
  v336 = v245;
  EntityProperty.wrappedValue.setter();
  if (v309)
  {
    v246._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v247 = String.camelCased(with:)(v246);
    SourceType.init(rawValue:)(v247);
    if (v336 != 26)
    {
      v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch10SourceTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch10SourceTypeOGMR);
      v249 = OUTLINED_FUNCTION_79_12(v248);
      v336 = OUTLINED_FUNCTION_69_10(v249, xmmword_25DBC8180);
      EntityProperty.wrappedValue.setter();
    }
  }

  v250 = v310;
  if (v310)
  {
    v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v252 = OUTLINED_FUNCTION_78_14(v251);
    *(v252 + 16) = xmmword_25DBC8180;
    *(v252 + 32) = v297;
    *(v252 + 40) = v250;
    v336 = v252;

    EntityProperty.wrappedValue.setter();
  }

  if (v311)
  {
    v253._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v254 = String.camelCased(with:)(v253);
    v255 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TemporalReference.init(rawValue:), v254);

    v256 = 3;
    if (v255 < 3)
    {
      v256 = v255;
    }

    LOBYTE(v336) = v256;
    EntityProperty.wrappedValue.setter();
  }

  v336 = v234;

  EntityProperty.wrappedValue.setter();
  v336 = v233;

  EntityProperty.wrappedValue.setter();
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  v257 = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_llmQUExtractedType);
  if (v232)
  {
    LOBYTE(v23) = v257;
    v258._countAndFlagsBits = OUTLINED_FUNCTION_58_9();
    v259 = String.camelCased(with:)(v258);
    ExtractedType.init(rawValue:)(v259);
    if (((v336 != 13) & v23) == 1)
    {
      v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch13ExtractedTypeOGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch13ExtractedTypeOGMR);
      v261 = OUTLINED_FUNCTION_79_12(v260);
      v336 = OUTLINED_FUNCTION_69_10(v261, xmmword_25DBC8180);
      EntityProperty.wrappedValue.setter();
      return;
    }

    if (one-time initialization token for llmQU != -1)
    {
LABEL_151:
      OUTLINED_FUNCTION_55_14(&one-time initialization token for llmQU);
    }

    v262 = type metadata accessor for Logger();
    __swift_project_value_buffer(v262, static Logging.llmQU);

    v263 = Logger.logObject.getter();
    v264 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v263, v264))
    {
      v265 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      v336 = v266;
      *v265 = 136315394;
      *(v265 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v265 + 12) = 1024;
      *(v265 + 14) = v23 & 1;
      _os_log_impl(&dword_25D85C000, v263, v264, "Dropping extracted_type %s because it is either an unsupported type, or llmQUExtractedType FF is not enabled. Enablement status: %{BOOL}d", v265, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v266);
      MEMORY[0x25F8A1050](v266, -1, -1);
      MEMORY[0x25F8A1050](v265, -1, -1);
    }
  }
}

uint64_t LLMQUModelResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000025DBF5600 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6961746E6F63 && a2 == 0xED0000657079745FLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562697263736564 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x745F7265746C6966 && a2 == 0xEB00000000657079;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6F635F67616C66 && a2 == 0xEA0000000000726FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x800000025DBF5620 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000025DBF5640 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79625F726564726FLL && a2 == 0xED0000656D69745FLL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x695F6E6F73726570 && a2 == 0xEC000000656D5F73;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656E6F5F6B636970 && a2 == 0xE800000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6572726566657270 && a2 == 0xEE00657079745F64;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x7265766965636572 && a2 == 0xE800000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7265766965636572 && a2 == 0xEE00656D5F73695FLL;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6574746972776572 && a2 == 0xEF79726575715F6ELL;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000010 && 0x800000025DBF5660 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x745F686372616573 && a2 == 0xEB000000006D7265;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x695F7265646E6573 && a2 == 0xEC000000656D5F73;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x745F656372756F73 && a2 == 0xEB00000000657079;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x656D616E5F676174 && a2 == 0xE800000000000000;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x800000025DBF5680 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 1701669236 && a2 == 0xE400000000000000;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x5F6567617373656DLL && a2 == 0xEC000000656D6974;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 7368801 && a2 == 0xE300000000000000;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else if (a1 == 0x6574636172747865 && a2 == 0xEE00657079745F64)
                                                    {

                                                      return 26;
                                                    }

                                                    else
                                                    {
                                                      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                      if (v32)
                                                      {
                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        return 27;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t LLMQUModelResponse.CodingKeys.stringValue.getter(char a1)
{
  result = 0x736E6961746E6F63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x6562697263736564;
    case 3:
      v3 = 0x7265746C6966;
      goto LABEL_15;
    case 4:
      return 0x6C6F635F67616C66;
    case 5:
      return 0x6E6F697461636F6CLL;
    case 6:
      return 0xD000000000000010;
    case 7:
    case 22:
      return 0xD000000000000012;
    case 8:
      return 0x79625F726564726FLL;
    case 9:
      return 0x6E6F73726570;
    case 10:
      v4 = 0x6E6F73726570;
      goto LABEL_26;
    case 11:
      return 0x656E6F5F6B636970;
    case 12:
      return 0x6572726566657270;
    case 13:
    case 14:
      return 0x7265766965636572;
    case 15:
      return 0x6574746972776572;
    case 16:
      return 0xD000000000000010;
    case 17:
      return 0x745F686372616573;
    case 18:
      return 0x7265646E6573;
    case 19:
      v4 = 0x7265646E6573;
LABEL_26:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x695F000000000000;
      break;
    case 20:
      v3 = 0x656372756F73;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      break;
    case 21:
      result = 0x656D616E5F676174;
      break;
    case 23:
      result = 1701669236;
      break;
    case 24:
      result = 0x5F6567617373656DLL;
      break;
    case 25:
      result = 7368801;
      break;
    case 26:
      result = 0x6574636172747865;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LLMQUModelResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LLMQUModelResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LLMQUModelResponse.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = LLMQUModelResponse.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LLMQUModelResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LLMQUModelResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LLMQUModelResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch18LLMQUModelResponseV10CodingKeys33_435326338C7AADA9B71CF25FC4E73CA6LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch18LLMQUModelResponseV10CodingKeys33_435326338C7AADA9B71CF25FC4E73CA6LLOGMR);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = *(v1 + 16);
  v66 = *(v1 + 24);
  v67 = v9;
  v65 = *(v1 + 32);
  v10 = *(v1 + 40);
  v63 = *(v1 + 48);
  v64 = v10;
  v11 = *(v1 + 56);
  v61 = *(v1 + 64);
  v62 = v11;
  v12 = *(v1 + 72);
  v59 = *(v1 + 80);
  v60 = v12;
  v13 = *(v1 + 88);
  v14 = *(v1 + 96);
  v15 = *(v1 + 112);
  v57 = *(v1 + 104);
  v58 = v13;
  v55 = v15;
  v56 = v14;
  LODWORD(v13) = *(v1 + 120);
  v53 = *(v1 + 121);
  v54 = v13;
  v16 = *(v1 + 136);
  v51 = *(v1 + 128);
  v52 = v16;
  v50 = *(v1 + 144);
  v49 = *(v1 + 152);
  v17 = *(v1 + 168);
  v47 = *(v1 + 160);
  v48 = v17;
  v18 = *(v1 + 184);
  v45 = *(v1 + 176);
  v46 = v18;
  OUTLINED_FUNCTION_59_13(*(v1 + 200));
  v34 = v19;
  v35 = v20;
  v21 = *(v1 + 240);
  v36 = *(v1 + 232);
  v37 = v21;
  v22 = *(v1 + 256);
  v38 = *(v1 + 248);
  v39 = v22;
  v23 = *(v1 + 272);
  v40 = *(v1 + 264);
  v41 = v23;
  OUTLINED_FUNCTION_62_13(*(v1 + 288));
  v24 = *(v1 + 304);
  v43 = *(v1 + 296);
  v44 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v70) = 0;
  v25 = v68;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v25)
  {
    return (*(v5 + 8))(v8, v3);
  }

  v26 = v64;
  v27 = v62;
  v68 = v5;
  OUTLINED_FUNCTION_48_10(1);
  OUTLINED_FUNCTION_89_12(v67);
  OUTLINED_FUNCTION_67_15(2);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(3);
  OUTLINED_FUNCTION_89_12(v26);
  OUTLINED_FUNCTION_48_10(4);
  OUTLINED_FUNCTION_89_12(v27);
  v70 = v60;
  v69 = 5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v29 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_61_15(&v70);
  v70 = v59;
  v30 = OUTLINED_FUNCTION_27_18(6);
  OUTLINED_FUNCTION_61_15(v30);
  v70 = v58;
  v31 = OUTLINED_FUNCTION_27_18(7);
  OUTLINED_FUNCTION_61_15(v31);
  v66 = v29;
  v67 = v28;
  OUTLINED_FUNCTION_48_10(8);
  OUTLINED_FUNCTION_89_12(v56);
  v70 = v55;
  OUTLINED_FUNCTION_27_18(9);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_67_15(10);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_67_15(11);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(12);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v70 = v50;
  OUTLINED_FUNCTION_19_23(13);
  OUTLINED_FUNCTION_67_15(14);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(15);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(16);
  OUTLINED_FUNCTION_32_23(v45);
  OUTLINED_FUNCTION_80_10(&v63);
  OUTLINED_FUNCTION_19_23(17);
  OUTLINED_FUNCTION_80_10(&v64);
  OUTLINED_FUNCTION_19_23(18);
  OUTLINED_FUNCTION_67_15(19);
  OUTLINED_FUNCTION_39_16();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_48_10(20);
  OUTLINED_FUNCTION_32_23(v34);
  OUTLINED_FUNCTION_48_10(21);
  OUTLINED_FUNCTION_32_23(v36);
  OUTLINED_FUNCTION_48_10(22);
  OUTLINED_FUNCTION_32_23(v38);
  OUTLINED_FUNCTION_80_10(&v70);
  OUTLINED_FUNCTION_19_23(23);
  OUTLINED_FUNCTION_80_10(&v71);
  OUTLINED_FUNCTION_19_23(24);
  OUTLINED_FUNCTION_48_10(25);
  OUTLINED_FUNCTION_32_23(v42);
  OUTLINED_FUNCTION_48_10(26);
  OUTLINED_FUNCTION_32_23(v43);
  return (*(v68 + 8))(0, v3);
}

uint64_t LLMQUModelResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch18LLMQUModelResponseV10CodingKeys33_435326338C7AADA9B71CF25FC4E73CA6LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch18LLMQUModelResponseV10CodingKeys33_435326338C7AADA9B71CF25FC4E73CA6LLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v98 = v2;
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_12_29();
    OUTLINED_FUNCTION_81_14();
    OUTLINED_FUNCTION_16_25();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 2;
    v81 = v2;
    v82 = v6;
    v83 = v64;
    v84 = v66;
    *v80 = v97[0];
    *&v80[3] = *(v97 + 3);
    v85 = v62;
    v86 = v60;
    OUTLINED_FUNCTION_49_17();
    v88 = v96;
    v87 = *(v7 + 14);
    OUTLINED_FUNCTION_60_10();
    *(v89 + 3) = *(v8 + 10);
    v89[0] = *(v8 + 7);
    OUTLINED_FUNCTION_42_17();
    *(v90 + 3) = *(v9 + 3);
    v90[0] = *v93;
    OUTLINED_FUNCTION_33_20();
    v92 = 0;
    v91 = 0;
  }

  else
  {
    LOBYTE(v75) = 0;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v11;
    OUTLINED_FUNCTION_7_29(1);
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v12;
    OUTLINED_FUNCTION_7_29(2);
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_7_29(3);
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v13;
    OUTLINED_FUNCTION_7_29(4);
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    LOBYTE(v73[0]) = 5;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_6_24(6);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v63 = v75;
    OUTLINED_FUNCTION_6_24(7);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = v75;
    v59 = v75;
    OUTLINED_FUNCTION_7_29(8);
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v15;
    OUTLINED_FUNCTION_6_24(9);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v56 = v75;
    OUTLINED_FUNCTION_4_34(10);
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_34(11);
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_34(12);
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v16;
    OUTLINED_FUNCTION_6_24(13);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v55 = v75;
    OUTLINED_FUNCTION_4_34(14);
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_34(15);
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = v17;
    OUTLINED_FUNCTION_4_34(16);
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v18;
    OUTLINED_FUNCTION_6_24(17);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v50 = v75;
    OUTLINED_FUNCTION_6_24(18);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = v75;
    OUTLINED_FUNCTION_4_34(19);
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_4_34(20);
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v19;
    OUTLINED_FUNCTION_4_34(21);
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v20;
    OUTLINED_FUNCTION_4_34(22);
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = v21;
    OUTLINED_FUNCTION_6_24(23);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v75;
    OUTLINED_FUNCTION_6_24(24);
    OUTLINED_FUNCTION_35_21();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = v75;
    OUTLINED_FUNCTION_4_34(25);
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v22;
    v74 = 26;
    OUTLINED_FUNCTION_35_21();
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v98 = 0;
    v24 = v23;
    v25 = OUTLINED_FUNCTION_10_26();
    v26(v25);
    *(&v73[19] + 1) = *v94;
    HIDWORD(v73[26]) = *&v93[3];
    *(&v73[26] + 1) = *v93;
    *(&v73[4] + 1) = v97[0];
    HIDWORD(v73[4]) = *(v97 + 3);
    *(&v73[15] + 2) = v95;
    HIWORD(v73[15]) = v96;
    HIDWORD(v73[19]) = *&v94[3];
    v73[0] = v36;
    v73[1] = v37;
    v73[2] = v34;
    v73[3] = v35;
    LOBYTE(v73[4]) = v33;
    v73[5] = v31;
    v73[6] = v32;
    v73[7] = v65;
    v73[8] = v67;
    v73[9] = v63;
    v73[10] = v61;
    v73[11] = v59;
    v73[12] = v57;
    v73[13] = v58;
    v73[14] = v56;
    LOBYTE(v73[15]) = v72;
    BYTE1(v73[15]) = v71;
    v73[16] = v69;
    v73[17] = v70;
    v73[18] = v55;
    LOBYTE(v73[19]) = v68;
    v73[20] = v52;
    v73[21] = v54;
    v73[22] = v51;
    v73[23] = v53;
    v73[24] = v50;
    v73[25] = v47;
    LOBYTE(v73[26]) = v38;
    v73[27] = v39;
    v73[28] = v42;
    v73[29] = v40;
    v73[30] = v46;
    v73[31] = v43;
    v73[32] = v48;
    v73[33] = v45;
    v73[34] = v41;
    v73[35] = v44;
    v73[36] = v49;
    v73[37] = v30;
    v73[38] = v24;
    memcpy(a2, v73, 0x138uLL);
    outlined init with copy of LLMQUModelResponse(v73, &v75);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v75 = v36;
    v76 = v37;
    v77 = v34;
    v78 = v35;
    v79 = v33;
    v81 = v31;
    v82 = v32;
    v83 = v65;
    v84 = v67;
    v85 = v63;
    v86 = v61;
    *v80 = v97[0];
    *&v80[3] = *(v97 + 3);
    OUTLINED_FUNCTION_49_17();
    *(v27 + 122) = v95;
    v88 = v96;
    OUTLINED_FUNCTION_60_10();
    *(v28 + 153) = *v94;
    *(v89 + 3) = *&v94[3];
    OUTLINED_FUNCTION_42_17();
    *(v90 + 3) = *&v93[3];
    *(v29 + 209) = *v93;
    OUTLINED_FUNCTION_33_20();
    v91 = v30;
    v92 = v24;
  }

  return outlined destroy of LLMQUModelResponse(&v75);
}

uint64_t LLMQUModelResponse.description.getter()
{
  type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_14();
  v161 = v2;
  v162 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_39_0();
  v159 = v3;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_4();
  v158 = v5;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v6);
  v160 = &v126 - v7;
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  v15 = *(v0 + 64);
  v127 = *(v0 + 56);
  v16 = *(v0 + 72);
  v137 = *(v0 + 80);
  v17 = *(v0 + 96);
  v138 = *(v0 + 88);
  v128 = v17;
  OUTLINED_FUNCTION_62_13(*(v0 + 112));
  v141 = *(v0 + 120);
  v142 = *(v0 + 121);
  v18 = *(v0 + 136);
  v129 = *(v0 + 128);
  v143 = v18;
  v144 = *(v0 + 144);
  v145 = *(v0 + 152);
  v19 = *(v0 + 168);
  v130 = *(v0 + 160);
  v146 = v19;
  v20 = *(v0 + 184);
  v131 = *(v0 + 176);
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v147 = v20;
  v148 = v22;
  v149 = v21;
  v150 = *(v0 + 208);
  v23 = *(v0 + 224);
  v132 = *(v0 + 216);
  v151 = v23;
  v24 = *(v0 + 240);
  v133 = *(v0 + 232);
  v152 = v24;
  v25 = *(v0 + 256);
  v134 = *(v0 + 248);
  v27 = *(v0 + 264);
  v26 = *(v0 + 272);
  v153 = v25;
  v154 = v27;
  v155 = v26;
  v28 = *(v0 + 288);
  v135 = *(v0 + 280);
  v156 = v28;
  v29 = *(v0 + 304);
  v136 = *(v0 + 296);
  v157 = v29;
  v165 = 0;
  v166 = 0xE000000000000000;
  if (v9)
  {
    v164[0] = 0;
    v164[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    OUTLINED_FUNCTION_44_6();
    v164[0] = 0xD000000000000013;
    v164[1] = v30;
    MEMORY[0x25F89F6C0](v8, v9);
    v31 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v31);
    v0 = &v165;
    MEMORY[0x25F89F6C0](v164[0], v164[1]);
  }

  if (v11)
  {
    v164[0] = 0;
    v164[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v164[0] = 0x736E6961746E6F63;
    v164[1] = 0xEF203A657079745FLL;
    MEMORY[0x25F89F6C0](v10, v11);
    v32 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v32);
    v10 = v164[1];
    v0 = &v165;
    MEMORY[0x25F89F6C0](v164[0], v164[1]);
  }

  if (v12 != 2)
  {
    strcpy(v164, "describe: ");
    BYTE3(v164[1]) = 0;
    HIDWORD(v164[1]) = -369098752;
    if (v12)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (v12)
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    MEMORY[0x25F89F6C0](v33, v34);

    v35 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v35);
    v10 = v164[1];
    v0 = &v165;
    MEMORY[0x25F89F6C0](v164[0], v164[1]);
  }

  if (v13)
  {
    OUTLINED_FUNCTION_84_10(0x745F7265746C6966);
    MEMORY[0x25F89F6C0](v14, v13);
    v36 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v36);
    OUTLINED_FUNCTION_143_5();
  }

  if (v15)
  {
    OUTLINED_FUNCTION_84_10(0x6C6F635F67616C66);
    MEMORY[0x25F89F6C0](v127, v15);
    v37 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v37);
    OUTLINED_FUNCTION_143_5();
  }

  OUTLINED_FUNCTION_68_12();
  if (v16)
  {
    strcpy(v164, "location: ");
    BYTE3(v164[1]) = 0;
    HIDWORD(v164[1]) = -369098752;
    v38 = MEMORY[0x277D84F90];
    if (*(v16 + 16))
    {
      v163 = MEMORY[0x277D84F90];
      v39 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v40, v41);
      v38 = v163;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v14 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v38 = v163;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v42);
    }

    v163 = v38;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v43 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v43);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v44 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v44);
    OUTLINED_FUNCTION_143_5();
  }

  v45 = v137;
  if (v137)
  {
    OUTLINED_FUNCTION_44_6();
    v164[0] = v15 + 2;
    v164[1] = v46;
    v47 = MEMORY[0x277D84F90];
    if (*(v45 + 16))
    {
      v163 = MEMORY[0x277D84F90];
      v48 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v49, v50);
      v47 = v163;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v14 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v47 = v163;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v42);
    }

    v163 = v47;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v51 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v51);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v52 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v52);
    OUTLINED_FUNCTION_143_5();
  }

  if (v138)
  {
    OUTLINED_FUNCTION_44_6();
    v164[0] = v15 + 4;
    v164[1] = v53;
    v55 = MEMORY[0x277D84F90];
    if (*(v54 + 16))
    {
      v163 = MEMORY[0x277D84F90];
      v56 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56, v57, v58);
      v55 = v163;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v14 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v55 = v163;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v42);
    }

    v163 = v55;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v59 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v59);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v60 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v60);
    OUTLINED_FUNCTION_143_5();
  }

  if (v139)
  {
    OUTLINED_FUNCTION_84_10(0x79625F726564726FLL);
    MEMORY[0x25F89F6C0](v128);
    v61 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v61);
    OUTLINED_FUNCTION_143_5();
  }

  if (v140)
  {
    OUTLINED_FUNCTION_85_11(0x203A6E6F73726570);
    v62 = MEMORY[0x277D84F90];
    if (v10)
    {
      v163 = MEMORY[0x277D84F90];
      v63 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63, v64, v65);
      v62 = v163;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v14 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v62 = v163;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v42);
    }

    v163 = v62;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v66 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v66);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v67 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v67);
    OUTLINED_FUNCTION_143_5();
  }

  if (v141 != 2)
  {
    strcpy(v164, "person_is_me: ");
    HIBYTE(v164[1]) = -18;
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_90_7();

    v68 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v68);
    OUTLINED_FUNCTION_143_5();
  }

  if (v142 != 2)
  {
    strcpy(v164, "pick_one: ");
    BYTE3(v164[1]) = 0;
    HIDWORD(v164[1]) = -369098752;
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_90_7();

    v69 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v69);
    OUTLINED_FUNCTION_143_5();
  }

  if (v143)
  {
    OUTLINED_FUNCTION_44_6();
    v164[0] = v15;
    v164[1] = v70;
    v0 = v164;
    MEMORY[0x25F89F6C0](v129);
    v71 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v71);
    OUTLINED_FUNCTION_143_5();
  }

  if (v144)
  {
    strcpy(v164, "receiver: ");
    BYTE3(v164[1]) = 0;
    HIDWORD(v164[1]) = -369098752;
    v72 = MEMORY[0x277D84F90];
    if (*(v144 + 16))
    {
      v163 = MEMORY[0x277D84F90];
      v73 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73, v74, v75);
      OUTLINED_FUNCTION_82_12();
      do
      {
        OUTLINED_FUNCTION_36_16();
        if (v15 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v72 = v163;
        }

        OUTLINED_FUNCTION_25_20();
      }

      while (!v42);
      OUTLINED_FUNCTION_68_12();
    }

    v163 = v72;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v76 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v76);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v77 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v77);
    OUTLINED_FUNCTION_143_5();
  }

  if (v145 != 2)
  {
    OUTLINED_FUNCTION_44_6();
    v164[0] = v15;
    v164[1] = v78;
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_90_7();

    v79 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v79);
    OUTLINED_FUNCTION_143_5();
  }

  if (v146)
  {
    OUTLINED_FUNCTION_44_6();
    v164[0] = v15 + 1;
    v164[1] = v80;
    v0 = v164;
    MEMORY[0x25F89F6C0](v130);
    v81 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v81);
    OUTLINED_FUNCTION_143_5();
  }

  if (v147)
  {
    OUTLINED_FUNCTION_44_6();
    v164[0] = v15 + 2;
    v164[1] = v82;
    v0 = v164;
    MEMORY[0x25F89F6C0](v131);
    v83 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v83);
    OUTLINED_FUNCTION_143_5();
  }

  if (v148)
  {
    OUTLINED_FUNCTION_85_11(0x745F686372616573);
    v84 = MEMORY[0x277D84F90];
    if (v10)
    {
      v163 = MEMORY[0x277D84F90];
      v85 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v85, v86, v87);
      OUTLINED_FUNCTION_82_12();
      do
      {
        OUTLINED_FUNCTION_36_16();
        if (v15 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v84 = v163;
        }

        OUTLINED_FUNCTION_25_20();
      }

      while (!v42);
      OUTLINED_FUNCTION_68_12();
    }

    v163 = v84;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v88 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v88);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v89 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v89);
    OUTLINED_FUNCTION_143_5();
  }

  if (v149)
  {
    OUTLINED_FUNCTION_85_11(0x203A7265646E6573);
    v90 = MEMORY[0x277D84F90];
    if (v10)
    {
      v163 = MEMORY[0x277D84F90];
      v91 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v91, v92, v93);
      OUTLINED_FUNCTION_82_12();
      do
      {
        OUTLINED_FUNCTION_36_16();
        if (v15 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v90 = v163;
        }

        OUTLINED_FUNCTION_25_20();
      }

      while (!v42);
      OUTLINED_FUNCTION_68_12();
    }

    v163 = v90;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v94 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v94);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v95 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v95);
    OUTLINED_FUNCTION_143_5();
  }

  if (v150 != 2)
  {
    strcpy(v164, "sender_is_me: ");
    HIBYTE(v164[1]) = -18;
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_90_7();

    v96 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v96);
    OUTLINED_FUNCTION_143_5();
  }

  if (v151)
  {
    strcpy(v164, "source_type: ");
    HIWORD(v164[1]) = -4864;
    v0 = v164;
    MEMORY[0x25F89F6C0](v132);
    v97 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v97);
    OUTLINED_FUNCTION_143_5();
  }

  if (v152)
  {
    strcpy(v164, "tag_name: ");
    BYTE3(v164[1]) = 0;
    HIDWORD(v164[1]) = -369098752;
    v0 = v164;
    MEMORY[0x25F89F6C0](v133);
    v98 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v98);
    OUTLINED_FUNCTION_143_5();
  }

  if (v153)
  {
    OUTLINED_FUNCTION_44_6();
    v164[0] = v15 + 4;
    v164[1] = v99;
    v0 = v164;
    MEMORY[0x25F89F6C0](v134);
    v100 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v100);
    OUTLINED_FUNCTION_143_5();
  }

  v101 = v155;
  if (v154)
  {
    OUTLINED_FUNCTION_85_11(0x203A656D6974);
    v102 = MEMORY[0x277D84F90];
    if (v10)
    {
      v163 = MEMORY[0x277D84F90];
      v103 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v103, v104, v105);
      OUTLINED_FUNCTION_82_12();
      do
      {
        OUTLINED_FUNCTION_36_16();
        if (v15 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v102 = v163;
        }

        OUTLINED_FUNCTION_25_20();
      }

      while (!v42);
      OUTLINED_FUNCTION_68_12();
    }

    v163 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v106 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v106);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v107 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v107);
    OUTLINED_FUNCTION_143_5();
  }

  if (v101)
  {
    strcpy(v164, "message_time: ");
    HIBYTE(v164[1]) = -18;
    v108 = MEMORY[0x277D84F90];
    if (*(v101 + 16))
    {
      v163 = MEMORY[0x277D84F90];
      v109 = OUTLINED_FUNCTION_11_29();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109, v110, v111);
      v108 = v163;
      do
      {
        OUTLINED_FUNCTION_29_14();
        if (v14 >= v0 >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v108 = v163;
        }

        OUTLINED_FUNCTION_15_24();
      }

      while (!v42);
    }

    v163 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v112 = lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_17_28(v112);
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_44_19();

    v113 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v113);
    OUTLINED_FUNCTION_143_5();
  }

  if (v156)
  {
    OUTLINED_FUNCTION_84_10(0x203A707061);
    MEMORY[0x25F89F6C0](v135);
    v114 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v114);
    OUTLINED_FUNCTION_143_5();
  }

  if (v157)
  {
    OUTLINED_FUNCTION_44_6();
    v164[0] = v15;
    v164[1] = v115;
    MEMORY[0x25F89F6C0](v136);
    v116 = OUTLINED_FUNCTION_111_5();
    MEMORY[0x25F89F6C0](v116);
    OUTLINED_FUNCTION_143_5();
  }

  v164[0] = v165;
  v164[1] = v166;
  v117 = v158;
  static CharacterSet.whitespacesAndNewlines.getter();
  v118 = v159;
  CharacterSet.init(charactersIn:)();
  v119 = v160;
  CharacterSet.union(_:)();
  v120 = v162;
  v121 = *(v161 + 8);
  v121(v118, v162);
  v121(v117, v120);
  lazy protocol witness table accessor for type String and conformance String();
  v122 = StringProtocol.trimmingCharacters(in:)();
  v124 = v123;
  v121(v119, v120);

  v164[0] = 60;
  v164[1] = 0xE100000000000000;
  MEMORY[0x25F89F6C0](v122, v124);

  MEMORY[0x25F89F6C0](62, 0xE100000000000000);

  return v164[0];
}

uint64_t _s10OmniSearch19LocationQueryEntityVWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t outlined init with take of LocationQueryEntity(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of LocationQueryEntity(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMQUModelResponse.CodingKeys and conformance LLMQUModelResponse.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMQUResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 381))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for LLMQUResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 380) = 0;
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 381) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 381) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMQULoggingMetrics(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 69))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for LLMQULoggingMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMQUModelResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 312))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for LLMQUModelResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LLMQUModelResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LLMQUModelResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}