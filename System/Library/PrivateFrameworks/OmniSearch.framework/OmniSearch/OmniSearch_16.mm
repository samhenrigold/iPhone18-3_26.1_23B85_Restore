Swift::Bool __swiftcall OmniSearchResponse.shouldDisableInAppSearch(isAERRequest:)(Swift::Bool isAERRequest)
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_133();
  v9 = *(v8 + 128);
  v10 = *(v9() + 16);

  if (!v10)
  {
LABEL_22:
    OUTLINED_FUNCTION_148();
    return result;
  }

  v12 = (v9)(v11);
  v13 = *(v12 + 16);
  if (!v13)
  {

LABEL_19:
    if ((*(v1 + 40) & 1) == 0 && (v3 & 1) == 0)
    {
      v25 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
      static NSUserDefaults.enablePhotosInAppSearch.getter(v25);
    }

    goto LABEL_22;
  }

  v26 = v1;
  v14 = 0;
  OUTLINED_FUNCTION_79();
  while (v14 < *(v12 + 16))
  {
    OUTLINED_FUNCTION_9_21();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v16, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v17 = CodableNSSecureCoding.wrappedValue.getter();
    v18 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v17);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    if (v18 == 0xD000000000000019 && 0x800000025DBF1E10 == v20)
    {

      OUTLINED_FUNCTION_0_42();
      result = outlined destroy of SearchToolIntentRequest(v7, v24);
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      OUTLINED_FUNCTION_0_42();
      result = outlined destroy of SearchToolIntentRequest(v7, v23);
      if ((v22 & 1) == 0)
      {

        goto LABEL_22;
      }
    }

    if (v13 == ++v14)
    {

      v1 = v26;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.createValidEntities(context:inAppSearchString:derivedType:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v218 = a4;
  v212 = a3;
  v211 = a2;
  OUTLINED_FUNCTION_47_1();
  v7 = type metadata accessor for String.Encoding();
  v8 = OUTLINED_FUNCTION_114(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v11 = OUTLINED_FUNCTION_28_2(v10 - v9);
  v214 = type metadata accessor for SearchGlobalEntity(v11);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v193 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v15);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v18 = OUTLINED_FUNCTION_28_2(&v190 - v17);
  v19 = type metadata accessor for SearchEntity.Builder(v18);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v21);
  v23 = (&v190 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v25 = OUTLINED_FUNCTION_114(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_2();
  v29 = OUTLINED_FUNCTION_28_2(v28);
  v216 = type metadata accessor for SearchResult(v29);
  OUTLINED_FUNCTION_14();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v36);
  v210 = type metadata accessor for SearchResultType();
  OUTLINED_FUNCTION_14();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v190 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v190 - v43;
  v219 = type metadata accessor for SearchEntity(0);
  OUTLINED_FUNCTION_14();
  v194 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v48);
  v50 = &v190 - v49;
  v51 = *(a5 + 16);
  if (v51)
  {
    v204 = *v218;
    v52 = v51;
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0, MEMORY[0x277D84F90]);
    v199 = v53;
    OUTLINED_FUNCTION_79();
    v55 = a5 + v54;
    _s10OmniSearch18GenericEventEntityVSgWOi0_(__src);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v56 = v55;
    v203 = *(v31 + 72);
    *&v57 = 136642819;
    v195 = v57;
    *&v57 = 136643075;
    v192 = v57;
    v190 = v52;
    v58 = v52;
    v59 = v226;
    v205 = v5;
    v60 = v215;
    do
    {
      v226 = v59;
      v217 = v58;
      v218 = v56;
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v56, v60);
      OUTLINED_FUNCTION_178_3();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v61, v62);
      outlined init with copy of ExtractionRule(v205 + 16, &v222);
      OUTLINED_FUNCTION_177_3();
      v63 = v224;
      __swift_project_boxed_opaque_existential_1(&v222, type metadata accessor for SearchResult);
      LOBYTE(v221[0]) = 0;
      v64 = (*(v63 + 24))(v52, v221, v211, v212, type metadata accessor for SearchResult, v63);
      *v23 = 0;
      v23[1] = 0;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v216);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v210);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v214);
      type metadata accessor for SearchSpotlightEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
      memcpy(v23 + v19[9], __src, 0x88uLL);
      type metadata accessor for SearchAppEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
      type metadata accessor for IntentFile();
      OUTLINED_FUNCTION_38_16();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
      v86 = (v23 + v19[12]);
      *v86 = 0;
      v86[1] = 0;
      type metadata accessor for EventEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
      type metadata accessor for IdCardEntity(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
      v95 = (v23 + v19[15]);
      v95[1] = 0u;
      v95[2] = 0u;
      *v95 = 0u;
      OUTLINED_FUNCTION_38_16();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
      *(v23 + v19[17]) = 5;
      v100 = (v23 + v19[18]);
      *v100 = 0;
      v100[1] = 0;
      OUTLINED_FUNCTION_162_3();
      closure #1 in SearchEntity.init(result:context:searchString:derivedType:)();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v23, v209);
      v101 = v208;
      SearchEntity.init(builder:)();
      outlined destroy of SearchToolIntentRequest(v23, type metadata accessor for SearchEntity.Builder);
      v102 = OUTLINED_FUNCTION_159_2();
      if (__swift_getEnumTagSinglePayload(v102, v103, v219))
      {
        v104 = v226;
        outlined destroy of IntentApplication?(v101, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v105 = 1;
        v106 = v207;
      }

      else
      {
        v104 = v226;
        OUTLINED_FUNCTION_8_20();
        v106 = v207;
        outlined init with take of AssistantSystemContext(v101, v207);
        v105 = 0;
      }

      v60 = v213;
      v107 = v219;
      __swift_storeEnumTagSinglePayload(v106, v105, 1, v219);
      v108 = OUTLINED_FUNCTION_65();
      if (__swift_getEnumTagSinglePayload(v108, v109, v107))
      {

        outlined destroy of IntentApplication?(v106, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(&v222);
        OUTLINED_FUNCTION_0_42();
        outlined destroy of SearchToolIntentRequest(v220, v110);
        v52 = v206;
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v111, v112, v113, v107);
      }

      else
      {
        OUTLINED_FUNCTION_8_20();
        OUTLINED_FUNCTION_178_3();
        outlined init with take of AssistantSystemContext(v114, v115);
        v116 = (v220 + *(v216 + 40));
        v117 = v116[1];
        v221[0] = *v116;
        v221[1] = v117;

        EntityProperty.wrappedValue.setter();
        v118 = v198;
        EntityProperty.wrappedValue.getter();
        v119 = OUTLINED_FUNCTION_159_2();
        if (__swift_getEnumTagSinglePayload(v119, v120, v214))
        {

          outlined destroy of IntentApplication?(v118, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
        }

        else
        {
          v121 = v193;
          _s10OmniSearch22AssistantSystemContextVWOcTm_0(v118, v193);
          outlined destroy of IntentApplication?(v118, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
          EntityProperty.wrappedValue.getter();
          EntityProperty.wrappedValue.setter();

          v122 = v121;
          v60 = v213;
          outlined destroy of SearchToolIntentRequest(v122, type metadata accessor for SearchGlobalEntity);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v222);
        OUTLINED_FUNCTION_44_0();
        v107 = v219;
        __swift_storeEnumTagSinglePayload(v123, v124, v125, v219);
        OUTLINED_FUNCTION_0_42();
        outlined destroy of SearchToolIntentRequest(v220, v126);
      }

      v127 = OUTLINED_FUNCTION_103_6();
      if (__swift_getEnumTagSinglePayload(v127, v128, v107) == 1)
      {
        outlined destroy of IntentApplication?(v52, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
        v59 = v104;
        if (one-time initialization token for stextension != -1)
        {
          OUTLINED_FUNCTION_5_21();
          swift_once();
        }

        v129 = type metadata accessor for Logger();
        __swift_project_value_buffer(v129, static Logging.stextension);
        OUTLINED_FUNCTION_9_21();
        OUTLINED_FUNCTION_146_5();
        OUTLINED_FUNCTION_178_3();
        _s10OmniSearch22AssistantSystemContextVWOcTm_0(v130, v131);
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v132, v133))
        {
          OUTLINED_FUNCTION_28_3();
          v60 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v134 = swift_slowAlloc();
          OUTLINED_FUNCTION_197_3(v134);
          *v60 = v195;
          if (one-time initialization token for iso8601PrettyPrinted != -1)
          {
            OUTLINED_FUNCTION_15_17();
            swift_once();
          }

          OUTLINED_FUNCTION_88_7();
          _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, v135, &protocol conformance descriptor for SearchResult);
          dispatch thunk of JSONEncoder.encode<A>(_:)();
          if (v59)
          {

            v226 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_169_3();
            v226 = 0;
            static String.Encoding.utf8.getter();
            OUTLINED_FUNCTION_64_0();
            String.init(data:encoding:)();
            if (v158)
            {
              v159 = OUTLINED_FUNCTION_51_9();
            }

            else
            {
              v159 = OUTLINED_FUNCTION_64_0();
            }

            outlined consume of Data._Representation(v159, v160);
          }

          v52 = type metadata accessor for SearchResult;
          outlined destroy of SearchToolIntentRequest(v201, type metadata accessor for SearchResult);
          v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v60 + 4) = v161;
          _os_log_impl(&dword_25D85C000, v132, v133, "Failed to construct SearchEntity from result: %{sensitive}s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v200);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

          v162 = OUTLINED_FUNCTION_146_5();
          outlined destroy of SearchToolIntentRequest(v162, type metadata accessor for SearchResult);
          v59 = v226;
        }

        else
        {

          OUTLINED_FUNCTION_81_10();
          outlined destroy of SearchToolIntentRequest(v52, v148);
          outlined destroy of SearchToolIntentRequest(v60, v132);
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_20();
        OUTLINED_FUNCTION_178_3();
        outlined init with take of AssistantSystemContext(v136, v137);
        SearchEntity.validateParameters()();
        v59 = v138;
        if (v138)
        {
          if (one-time initialization token for stextension != -1)
          {
            OUTLINED_FUNCTION_5_21();
            swift_once();
          }

          v139 = type metadata accessor for Logger();
          __swift_project_value_buffer(v139, static Logging.stextension);
          OUTLINED_FUNCTION_9_21();
          v52 = v215;
          v140 = OUTLINED_FUNCTION_116_0();
          _s10OmniSearch22AssistantSystemContextVWOcTm_0(v140, v141);
          v142 = v138;
          v143 = Logger.logObject.getter();
          v144 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v143, v144))
          {
            LODWORD(v226) = v144;
            OUTLINED_FUNCTION_30_7();
            v145 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v146 = swift_slowAlloc();
            OUTLINED_FUNCTION_197_3(v146);
            *v145 = v192;
            if (one-time initialization token for iso8601PrettyPrinted != -1)
            {
              OUTLINED_FUNCTION_15_17();
              swift_once();
            }

            OUTLINED_FUNCTION_88_7();
            _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, v147, &protocol conformance descriptor for SearchResult);
            dispatch thunk of JSONEncoder.encode<A>(_:)();
            OUTLINED_FUNCTION_169_3();
            v191 = 0;
            static String.Encoding.utf8.getter();
            OUTLINED_FUNCTION_64_0();
            String.init(data:encoding:)();
            if (v163)
            {
              v164 = OUTLINED_FUNCTION_51_9();
            }

            else
            {
              v164 = OUTLINED_FUNCTION_64_0();
            }

            outlined consume of Data._Representation(v164, v165);
            v52 = v191;
            outlined destroy of SearchToolIntentRequest(v213, type metadata accessor for SearchResult);
            v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v145 + 4) = v60;
            *(v145 + 12) = 2112;
            v166 = v138;
            v167 = _swift_stdlib_bridgeErrorToNSError();
            *(v145 + 14) = v167;
            v168 = v196;
            *v196 = v167;
            _os_log_impl(&dword_25D85C000, v143, v226, "Failed to construct valid entity from result: %{sensitive}s, error: %@", v145, 0x16u);
            outlined destroy of IntentApplication?(v168, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            __swift_destroy_boxed_opaque_existential_1Tm(v200);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();

            OUTLINED_FUNCTION_2_25();
            outlined destroy of SearchToolIntentRequest(v202, v169);
            v170 = OUTLINED_FUNCTION_146_5();
            outlined destroy of SearchToolIntentRequest(v170, type metadata accessor for SearchResult);
            v59 = v52;
          }

          else
          {

            OUTLINED_FUNCTION_81_10();
            outlined destroy of SearchToolIntentRequest(v60, v154);
            OUTLINED_FUNCTION_2_25();
            outlined destroy of SearchToolIntentRequest(v202, v155);
            v156 = OUTLINED_FUNCTION_53_3();
            outlined destroy of SearchToolIntentRequest(v156, v157);
            v59 = 0;
            v60 = v52;
          }
        }

        else
        {
          OUTLINED_FUNCTION_14_15();
          _s10OmniSearch22AssistantSystemContextVWOcTm_0(v52, v197);
          v150 = *(v199 + 16);
          v149 = *(v199 + 24);
          v60 = v215;
          if (v150 >= v149 >> 1)
          {
            v171 = OUTLINED_FUNCTION_106_6(v149);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v171, v172, v173, v199);
            v199 = v174;
          }

          OUTLINED_FUNCTION_2_25();
          outlined destroy of SearchToolIntentRequest(v52, v151);
          OUTLINED_FUNCTION_0_42();
          outlined destroy of SearchToolIntentRequest(v60, v152);
          *(v199 + 16) = v150 + 1;
          OUTLINED_FUNCTION_42_5();
          OUTLINED_FUNCTION_8_20();
          outlined init with take of AssistantSystemContext(v197, v153);
        }
      }

      v56 = &v218[v203];
      v58 = (v217 - 1);
    }

    while (v217 != 1);
    v175 = v199;
    if (!*(v199 + 16))
    {

      v222 = 0;
      v223 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v221[0] = v190;
      v176 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x25F89F6C0](v176);

      MEMORY[0x25F89F6C0](0xD000000000000038, 0x800000025DBF2C50);
      v177 = v222;
      v178 = v223;
      if (one-time initialization token for stextension != -1)
      {
        OUTLINED_FUNCTION_5_21();
        swift_once();
      }

      v179 = type metadata accessor for Logger();
      __swift_project_value_buffer(v179, static Logging.stextension);

      v175 = Logger.logObject.getter();
      v180 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v175, v180))
      {
        OUTLINED_FUNCTION_28_3();
        v181 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v182 = swift_slowAlloc();
        v222 = v182;
        *v181 = 136315138;
        *(v181 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v175, v180, "%s", v181, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v182);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v183 = OUTLINED_FUNCTION_4_6();
        MEMORY[0x25F8A1050](v183);
      }

      lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
      swift_allocError();
      *v184 = v177;
      v184[1] = v178;
      swift_willThrow();
    }
  }

  else
  {
    v185 = v212;
    if (v212)
    {
      SearchEntity.init()();
      v186 = v210;
      (*(v38 + 104))(v44, *MEMORY[0x277D37048], v210);
      (*(v38 + 16))(v41, v44, v186);
      EntityProperty.wrappedValue.setter();
      (*(v38 + 8))(v44, v186);
      __src[0] = v211;
      __src[1] = v185;

      EntityProperty.wrappedValue.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E6EntityVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E6EntityVGMR);
      v187 = (*(v194 + 80) + 32) & ~*(v194 + 80);
      v175 = swift_allocObject();
      *(v175 + 16) = xmmword_25DBC8180;
      OUTLINED_FUNCTION_8_20();
      outlined init with take of AssistantSystemContext(v50, v188 + v187);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v175;
}

uint64_t SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  *(v1 + 1832) = v0;
  *(v1 + 1824) = v4;
  *(v1 + 1816) = v5;
  *(v1 + 2320) = v6;
  *(v1 + 1808) = v7;
  *(v1 + 1800) = v8;
  *(v1 + 1792) = v9;
  v10 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  *(v1 + 1840) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 1848) = v11;
  *(v1 + 1856) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1864) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v12);
  *(v1 + 1872) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1880) = swift_task_alloc();
  v13 = type metadata accessor for SearchResult(0);
  *(v1 + 1888) = v13;
  OUTLINED_FUNCTION_21(v13);
  *(v1 + 1896) = v14;
  *(v1 + 1904) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1912) = swift_task_alloc();
  v15 = type metadata accessor for SearchEntity(0);
  *(v1 + 1920) = v15;
  OUTLINED_FUNCTION_21(v15);
  *(v1 + 1928) = v16;
  *(v1 + 1936) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1944) = swift_task_alloc();
  v17 = type metadata accessor for _SpeakableString();
  *(v1 + 1952) = v17;
  OUTLINED_FUNCTION_21(v17);
  *(v1 + 1960) = v18;
  *(v1 + 1968) = OUTLINED_FUNCTION_199();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v19);
  *(v1 + 1976) = OUTLINED_FUNCTION_31_17();
  *(v1 + 1984) = swift_task_alloc();
  *(v1 + 1992) = swift_task_alloc();
  *(v1 + 2000) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v20);
  *(v1 + 2008) = OUTLINED_FUNCTION_31_17();
  *(v1 + 2016) = swift_task_alloc();
  *(v1 + 2024) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMR);
  OUTLINED_FUNCTION_114(v21);
  *(v1 + 2032) = OUTLINED_FUNCTION_199();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
  *(v1 + 2040) = v22;
  OUTLINED_FUNCTION_114(v22);
  *(v1 + 2048) = OUTLINED_FUNCTION_31_17();
  *(v1 + 2056) = swift_task_alloc();
  v23 = type metadata accessor for SearchCATContext(0);
  *(v1 + 2064) = v23;
  OUTLINED_FUNCTION_114(v23);
  *(v1 + 2072) = OUTLINED_FUNCTION_31_17();
  *(v1 + 2080) = swift_task_alloc();
  v24 = type metadata accessor for LocalizedStringResource();
  *(v1 + 2088) = v24;
  OUTLINED_FUNCTION_21(v24);
  *(v1 + 2096) = v25;
  *(v1 + 2104) = OUTLINED_FUNCTION_31_17();
  *(v1 + 2112) = swift_task_alloc();
  v26 = type metadata accessor for DialogData(0);
  *(v1 + 2120) = v26;
  OUTLINED_FUNCTION_114(v26);
  *(v1 + 2128) = OUTLINED_FUNCTION_199();
  *(v1 + 2136) = *v3;
  v27 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v27);
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[226];
  if (v1[3])
  {
    v2 = v1[2];
    v3 = v1[3];
  }

  else
  {
    v2 = *v1;
    v3 = v1[1];
  }

  v0[270] = v3;
  v0[269] = v2;
  v4 = one-time initialization token for shared;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  v0[271] = static ContextManager.shared;

  return MEMORY[0x2822009F8](SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:));
}

{
  OUTLINED_FUNCTION_48();
  v1 = v0[271];
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v2 = v1[35];
  v0[272] = v2;
  v3 = v1[36];
  v0[273] = v3;
  v4 = v1[37];
  v0[274] = v4;
  outlined copy of IndexContext?(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_48();
  if (*(v0 + 2192) == 1)
  {
    LocalizedStringResource.init(stringLiteral:)();
    v1 = SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:);
  }

  else
  {
    v1 = SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:);
  }

  return MEMORY[0x2822009F8](v1);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 2112);
  swift_beginAccess();
  MessageAccumulationContext.record(_:severity:from:)(v1, 0, 0);
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_78();
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_5_21();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v0, static Logging.stextension);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_11(v2))
  {
    v3 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v3);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  return MEMORY[0x2822009F8](SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:));
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 2168);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v0 + 2200) = *(v1 + 272);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v2);
}

{
  v2 = *(v0 + 2200);
  v3 = MessageAccumulationContext.makeMessageOnlySnippetData()();
  v5 = v4;

  v233 = v3;
  v234 = v5;
  *(v0 + 2208) = v3;
  *(v0 + 2216) = v5;
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_5_21();
    swift_once();
  }

  v6 = *(v0 + 2080);
  v7 = type metadata accessor for Logger();
  *(v0 + 2224) = v7;
  *(v0 + 2232) = OUTLINED_FUNCTION_200(v7, static Logging.stextension);
  OUTLINED_FUNCTION_6_13();
  v8 = OUTLINED_FUNCTION_30_5();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v8, v9);
  v10 = OUTLINED_FUNCTION_119();
  outlined copy of OmniSearchResponseRenderOption(v10, v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = OUTLINED_FUNCTION_119();
  outlined consume of OmniSearchResponseRenderOption(v14, v15);
  v16 = &one-time initialization token for typeDisplayRepresentation;
  if (os_log_type_enabled(v12, v13))
  {
    v231 = v2;
    v1 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    *v1 = 136315906;
    if (one-time initialization token for catTemplateDirectoryURL != -1)
    {
      OUTLINED_FUNCTION_10_19(&one-time initialization token for catTemplateDirectoryURL);
    }

    v17 = *(v0 + 2144);
    v18 = *(v0 + 2136);
    v19 = *(v0 + 2080);
    LODWORD(v226) = *(v0 + 2320);
    v20 = type metadata accessor for URL();
    OUTLINED_FUNCTION_200(v20, static SearchToolIntentController.catTemplateDirectoryURL);
    URL.path.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v1 + 4) = v21;
    v6 = 2080;
    *(v1 + 12) = 2080;
    SearchCATContext.description.getter();
    OUTLINED_FUNCTION_1_40();
    outlined destroy of SearchToolIntentRequest(v19, v22);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v1 + 14) = v23;
    *(v1 + 22) = 2080;
    *(v0 + 1752) = v18;
    *(v0 + 1760) = v17;
    v24 = OUTLINED_FUNCTION_119();
    outlined copy of OmniSearchResponseRenderOption(v24, v25);
    String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v1 + 24) = v26;
    *(v1 + 32) = 1024;
    *(v1 + 34) = v226;
    _os_log_impl(&dword_25D85C000, v12, v13, "Building dialog using templates at %s, searchCATContext: %s, renderOption: %s, isQuestionQuery: %{BOOL}d", v1, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v16 = &one-time initialization token for typeDisplayRepresentation;
  }

  else
  {
    v34 = *(v0 + 2080);

    OUTLINED_FUNCTION_1_40();
    outlined destroy of SearchToolIntentRequest(v34, v35);
  }

  Array<A>.isEffectivelyEmptySearchResult.getter(*(v0 + 1800), v27, v28, v29, v30, v31, v32, v33, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210, v212, v214);
  if (v36)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v38))
    {
      v39 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v39);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v45 = *(v0 + 2128);
    v46 = *(v0 + 2120);

    v47 = 0x800000025DBF2D70;
    v48 = *(v46 + 20);
    if (v16[39] != -1)
    {
      OUTLINED_FUNCTION_10_19(&one-time initialization token for catTemplateDirectoryURL);
    }

    v49 = OUTLINED_FUNCTION_149_4();
    __swift_project_value_buffer(v49, static SearchToolIntentController.catTemplateDirectoryURL);
    OUTLINED_FUNCTION_28_14();
    (*(v50 + 16))(v45 + v48);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10AppIntents12_IntentValue_s8SendableptGMd, &_ss23_ContiguousArrayStorageCySS_10AppIntents12_IntentValue_s8SendableptGMR);
    v54 = swift_allocObject();
    v55 = OUTLINED_FUNCTION_112_8(v54, xmmword_25DBC8180);
    v56 = MEMORY[0x277D837D0];
    v55[4].n128_u64[1] = MEMORY[0x277D837D0];
    v54[5].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
    v54[3].n128_u64[0] = v16;
    v54[3].n128_u64[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12_IntentValue_s8SendablepMd, &_s10AppIntents12_IntentValue_s8SendablepMR);
    OUTLINED_FUNCTION_32_0();
    v57 = Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_38_16();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    *v12 = 0xD000000000000017;
    *(v12 + 8) = 0x800000025DBF2D70;
    OUTLINED_FUNCTION_160_2();
    v230 = 0xC000000000000000;
    v232 = 0;
LABEL_14:
    OUTLINED_FUNCTION_34_18();
    OUTLINED_FUNCTION_109_7();
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_183_2();
    v62 = OUTLINED_FUNCTION_53_10();
    v224 = v63;
    v63(v62);
    IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v64 = OUTLINED_FUNCTION_39_11();
    (v57)(v64);
    if (v1)
    {
      v65 = v56 == v47 && v1 == v12;
      if (v65)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_61_10();
      OUTLINED_FUNCTION_175_3();

      if (v56)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_100_6();
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_182_3();
    v86 = OUTLINED_FUNCTION_195_3();
    v224(v86);
    v87 = IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v88 = OUTLINED_FUNCTION_51_9();
    (v57)(v88);
    if (!v1)
    {
      OUTLINED_FUNCTION_76_7();

      goto LABEL_55;
    }

    if (v13 != v87 || v1 != v47)
    {
      OUTLINED_FUNCTION_59_8();
      OUTLINED_FUNCTION_157_2();

      if ((v57 & 1) == 0)
      {
        OUTLINED_FUNCTION_76_7();
LABEL_55:
        v116 = v230;
        v115 = v232;
        goto LABEL_56;
      }

LABEL_37:
      if (one-time initialization token for visual != -1)
      {
        OUTLINED_FUNCTION_21_14(&one-time initialization token for visual);
      }

      v90 = OUTLINED_FUNCTION_98_6();
      v91 = __swift_project_value_buffer(v90, static Logging.visual);
      OUTLINED_FUNCTION_6_13();
      v92 = OUTLINED_FUNCTION_94();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v92, v93);
      v94 = v91;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_173_2(v96);
      OUTLINED_FUNCTION_99_7();
      v97 = *(v0 + 2072);
      if (v98)
      {
        OUTLINED_FUNCTION_28_3();
        v227 = v99;
        v100 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        __dst = swift_slowAlloc();
        *v100 = 136315138;
        OUTLINED_FUNCTION_171_2(__dst);
        OUTLINED_FUNCTION_52_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        OUTLINED_FUNCTION_211_2();
        OUTLINED_FUNCTION_34_10();
        OUTLINED_FUNCTION_1_40();
        outlined destroy of SearchToolIntentRequest(v97, v101);
        OUTLINED_FUNCTION_242();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_176_3();
        *(v100 + 4) = v94;
        OUTLINED_FUNCTION_134_4(&dword_25D85C000, v102, v103, "Drop visual when in CarPlay, interfaceIdiom: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        v104 = OUTLINED_FUNCTION_4_6();
        MEMORY[0x25F8A1050](v104);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050](v105, v106, v107, v108);
        outlined consume of Data._Representation(v232, v230);
        v109 = OUTLINED_FUNCTION_113_8();
        outlined consume of IndexContext?(v109, v110, v227);
      }

      else
      {
        v111 = OUTLINED_FUNCTION_113_8();
        outlined consume of IndexContext?(v111, v112, v113);
        outlined consume of Data._Representation(v232, v230);

        OUTLINED_FUNCTION_1_40();
        outlined destroy of SearchToolIntentRequest(v97, v114);
      }

      v115 = 0;
      v116 = 0xC000000000000000;
LABEL_56:
      OUTLINED_FUNCTION_32_18();
      OUTLINED_FUNCTION_54_11();
      v145 = *(v0 + 1792);
      type metadata accessor for SearchToolIntentController.ExperienceData(0);
      OUTLINED_FUNCTION_7_20();
      outlined init with take of AssistantSystemContext(v13, v145 + v146);
      *v145 = v115;
      v145[1] = v116;
      v145[2] = v233;
      v145[3] = v234;

      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_132_6();

      __asm { BRAA            X1, X16 }
    }

LABEL_36:

    goto LABEL_37;
  }

  v66 = *(v0 + 1920);
  specialized Collection.first.getter(*(v0 + 1800), *(v0 + 2024));
  v67 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v67, v68, v66);
  if (v65)
  {
    outlined destroy of IntentApplication?(*(v0 + 2024), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_38_16();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
    v73 = *(v0 + 2016);
    v74 = *(v0 + 1920);
    v75 = *(v0 + 1800);
    outlined destroy of IntentApplication?(*(v0 + 2032), &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMR);
    specialized Collection.first.getter(v75, v73);
    v76 = OUTLINED_FUNCTION_65();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, v77, v74);
    v79 = *(v0 + 2016);
    if (EnumTagSinglePayload == 1)
    {
      v80 = &_s10OmniSearch0B6EntityVSgMd;
      v81 = &_s10OmniSearch0B6EntityVSgMR;
      v82 = *(v0 + 2016);
LABEL_61:
      outlined destroy of IntentApplication?(v82, v80, v81);
LABEL_62:

      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_11(v154))
      {
        OUTLINED_FUNCTION_28_3();
        v155 = swift_slowAlloc();
        OUTLINED_FUNCTION_203_2(v155, 3.852e-34);
        OUTLINED_FUNCTION_205_3(&dword_25D85C000, v156, v157, "%ld results. SearchTool will synthesize model data & dialog");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_60(&async function pointer to specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));
      v158 = swift_task_alloc();
      *(v0 + 2248) = v158;
      *v158 = v0;
      OUTLINED_FUNCTION_48_8(v158);
      OUTLINED_FUNCTION_132_6();

      __asm { BR              X4 }
    }

    EntityProperty.wrappedValue.getter();
    memcpy((v0 + 288), (v0 + 152), 0x88uLL);
    OUTLINED_FUNCTION_2_25();
    outlined destroy of SearchToolIntentRequest(v79, v117);
    memcpy((v0 + 424), (v0 + 288), 0x88uLL);
    if (_s10OmniSearch0B7ContextVSgWOg((v0 + 424)) == 1)
    {
      goto LABEL_62;
    }

    if (*(*(v0 + 1800) + 16) == 1)
    {
      EntityProperty.wrappedValue.getter();
      v1 = *(v0 + 1696);
      if (v1)
      {
        if (*(v0 + 2144) == 2)
        {
          OUTLINED_FUNCTION_144_4();

          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v118, v119))
          {
            OUTLINED_FUNCTION_28_3();
            v120 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v6 = swift_slowAlloc();
            *(v120 + 4) = OUTLINED_FUNCTION_206_2(4.9654e-34);
            OUTLINED_FUNCTION_25_6();
            _os_log_impl(v121, v122, v123, v124, v125, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v6);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          OUTLINED_FUNCTION_202_3(v126, v127, v128, v129, v130, v131, v132, v133, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211, v213, v215, v216, v217, v218, v219, v220, v221, v222, v223, v226, v229, v231, v233, v234);
          SearchToolIntentController.buildExpandableLiveFlightComponents(answer:)();
          v228 = v12;
          if (v135 >> 60 == 15)
          {
            v138 = *(v0 + 520);
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
            v139 = OUTLINED_FUNCTION_55_8();
            if (v139)
            {
              OUTLINED_FUNCTION_209_2(v139);
              v140 = type metadata accessor for RGPluginModel();
              v141 = OUTLINED_FUNCTION_103_6();
              v143 = __swift_getEnumTagSinglePayload(v141, v142, v140);
              v144 = *(v0 + 2000);
              if (v143 != 1)
              {
                OUTLINED_FUNCTION_4_26();
                _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v173, v174, MEMORY[0x277D1C510]);
                OUTLINED_FUNCTION_54_5();
                SnippetPluginModel.data.getter();
                OUTLINED_FUNCTION_169_3();

                OUTLINED_FUNCTION_51();
                v175 = OUTLINED_FUNCTION_88();
                v176(v175);
                if (v12 >> 60 == 15)
                {
                  v177 = 0;
                }

                else
                {
                  v177 = v6;
                }

                v178 = 0xC000000000000000;
                if (v12 >> 60 != 15)
                {
                  v178 = v12;
                }

                v230 = v178;
                v232 = v177;
                OUTLINED_FUNCTION_127_8();
                v233 = v179;
                v234 = v180;
                goto LABEL_75;
              }

              outlined destroy of IntentApplication?(v144, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
            }

            v234 = *(v0 + 2216);
            v232 = 0;
            v233 = *(v0 + 2208);
            v230 = 0xC000000000000000;
          }

          else
          {
            v161 = v134;
            v162 = v135;
            v163 = v136;
            v164 = v137;
            OUTLINED_FUNCTION_210_0();
            v165 = OUTLINED_FUNCTION_54_0();
            outlined copy of Data._Representation(v165, v166);
            v167 = OUTLINED_FUNCTION_94();
            outlined copy of Data._Representation(v167, v168);
            v233 = v163;
            v234 = v164;
            v169 = OUTLINED_FUNCTION_94();
            outlined consume of Data._Representation(v169, v170);
            v230 = v162;
            v232 = v161;
            v171 = OUTLINED_FUNCTION_54_0();
            outlined consume of Data._Representation(v171, v172);
          }

LABEL_75:
          v181 = *(v0 + 2128);
          v182 = *(v0 + 2120);
          v47 = *(v0 + 2112);
          v12 = *(v0 + 2104);
          v56 = *(v0 + 1968);
          v183 = *(v0 + 1960);
          v225 = *(v0 + 1952);
          *(v0 + 1704) = v228;
          OUTLINED_FUNCTION_129_6();
          OUTLINED_FUNCTION_28_1();
          StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          LocalizedStringResource.init(stringLiteral:)();
          LocalizedStringResource.init(stringLiteral:)();
          OUTLINED_FUNCTION_64_0();
          _SpeakableString.init(spoken:printed:)();
          outlined destroy of IntentApplication?(v0 + 288, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
          type metadata accessor for URL();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
          v188 = *(v183 + 32);
          v13 = v183 + 32;
          v57 = v225;
          v188(v181 + *(v182 + 32), v56, v225);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v189, v190, v191, v225);
          OUTLINED_FUNCTION_139_4();
          goto LABEL_14;
        }

        v149 = OUTLINED_FUNCTION_94();
        outlined copy of OmniSearchResponseRenderOption(v149, v150);
        v151 = OUTLINED_FUNCTION_94();
        outlined consume of OmniSearchResponseRenderOption(v151, v152);
        outlined consume of OmniSearchResponseRenderOption(0, 2);
      }
    }

    v80 = &_s10OmniSearch0B12AnswerEntityVSgMd;
    v81 = &_s10OmniSearch0B12AnswerEntityVSgMR;
    v82 = v0 + 288;
    goto LABEL_61;
  }

  v83 = swift_task_alloc();
  *(v0 + 2240) = v83;
  *v83 = v0;
  v83[1] = SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:);
  OUTLINED_FUNCTION_132_6();

  return SearchEntity.globalPassthroughResults(removeWebSearchPunchout:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 2024);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  OUTLINED_FUNCTION_2_25();
  outlined destroy of SearchToolIntentRequest(v2, v5);
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2256) = v3;

  v4 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v4);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 2312) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

void SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)()
{
  v2 = v0[254];
  v3 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v3, v4, v5);
  if (!v52)
  {

    v16 = OUTLINED_FUNCTION_32_0();
    outlined init with take of SearchResultItem?(v16, v17, v18, v19);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v23 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v23);
      _os_log_impl(&dword_25D85C000, v20, v21, "Passing through global snippet and dialog", v2, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v24 = v0[266];
    v25 = v0[265];
    v26 = v0[257];
    v27 = v0[256];
    v28 = v0[255];
    v29 = v0[245];
    v30 = v0[244];

    v31 = &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR;
    v32 = OUTLINED_FUNCTION_53_3();
    outlined init with copy of SpotlightRankingItem?(v32, v33, v34, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
    v192 = *(v27 + 8);
    v194 = *v27;
    (*(v29 + 8))(v27 + *(v28 + 48), v30);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    v39 = v25[8];
    v40 = OUTLINED_FUNCTION_53_3();
    outlined init with take of SearchResultItem?(v40, v41, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
    outlined consume of Data._Representation(*v27, *(v27 + 8));
    (*(v29 + 32))(&v39[v24], v27 + *(v28 + 48), v30);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v30);
    *v24 = 0;
    *(v24 + 1) = 0;
    *&v24[v25[6]] = 0;
    v45 = &v24[v25[7]];
    *v45 = 0;
    *(v45 + 1) = 0;
    OUTLINED_FUNCTION_127_8();
    v188 = v46;
    v190 = v47;
LABEL_8:
    OUTLINED_FUNCTION_34_18();
    v180 = v48;
    OUTLINED_FUNCTION_109_7();
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_183_2();
    v49 = OUTLINED_FUNCTION_53_10();
    v182 = v50;
    v50(v49);
    IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v51 = OUTLINED_FUNCTION_39_11();
    (v27)(v51);
    if (v24)
    {
      v52 = v39 == v26 && v24 == v31;
      if (v52)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_61_10();
      OUTLINED_FUNCTION_175_3();

      if (v39)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_100_6();
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_182_3();
    v83 = OUTLINED_FUNCTION_195_3();
    v182(v83);
    v84 = IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v85 = OUTLINED_FUNCTION_51_9();
    (v27)(v85);
    if (!v24)
    {
      OUTLINED_FUNCTION_76_7();

      goto LABEL_42;
    }

    if (v25 != v84 || v24 != v26)
    {
      OUTLINED_FUNCTION_59_8();
      OUTLINED_FUNCTION_157_2();

      if ((v27 & 1) == 0)
      {
        OUTLINED_FUNCTION_76_7();
LABEL_42:
        v110 = v192;
        v109 = v194;
        goto LABEL_43;
      }

LABEL_35:
      if (one-time initialization token for visual != -1)
      {
        OUTLINED_FUNCTION_21_14(&one-time initialization token for visual);
      }

      v87 = OUTLINED_FUNCTION_98_6();
      __swift_project_value_buffer(v87, static Logging.visual);
      OUTLINED_FUNCTION_6_13();
      v88 = OUTLINED_FUNCTION_94();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v88, v89);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.info.getter();
      os_log_type_enabled(v90, v91);
      OUTLINED_FUNCTION_99_7();
      v92 = v0[259];
      if (v93)
      {
        OUTLINED_FUNCTION_28_3();
        v186 = v94;
        v95 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        __dst = swift_slowAlloc();
        *v95 = 136315138;
        v96 = *(v92 + *(v180 + 24));
        EntityProperty.wrappedValue.getter();
        OUTLINED_FUNCTION_52_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        OUTLINED_FUNCTION_211_2();
        OUTLINED_FUNCTION_34_10();
        OUTLINED_FUNCTION_1_40();
        outlined destroy of SearchToolIntentRequest(v92, v97);
        OUTLINED_FUNCTION_242();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_176_3();
        *(v95 + 4) = v96;
        _os_log_impl(&dword_25D85C000, v90, v91, "Drop visual when in CarPlay, interfaceIdiom: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        v98 = OUTLINED_FUNCTION_4_6();
        MEMORY[0x25F8A1050](v98);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050](v99, v100, v101, v102);
        outlined consume of Data._Representation(v194, v192);
        v103 = OUTLINED_FUNCTION_113_8();
        outlined consume of IndexContext?(v103, v104, v186);
      }

      else
      {
        v105 = OUTLINED_FUNCTION_113_8();
        outlined consume of IndexContext?(v105, v106, v107);
        outlined consume of Data._Representation(v194, v192);

        OUTLINED_FUNCTION_1_40();
        outlined destroy of SearchToolIntentRequest(v92, v108);
      }

      v109 = 0;
      v110 = 0xC000000000000000;
LABEL_43:
      v111 = v0[266];
      OUTLINED_FUNCTION_54_11();
      v112 = v0[224];
      type metadata accessor for SearchToolIntentController.ExperienceData(0);
      OUTLINED_FUNCTION_7_20();
      outlined init with take of AssistantSystemContext(v111, v112 + v113);
      *v112 = v109;
      v112[1] = v110;
      v112[2] = v188;
      v112[3] = v190;

      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_132_6();

      __asm { BRAA            X1, X16 }
    }

LABEL_34:

    goto LABEL_35;
  }

  v6 = v0[252];
  v7 = v0[240];
  v8 = v0[225];
  outlined destroy of IntentApplication?(v2, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tSgMR);
  specialized Collection.first.getter(v8, v6);
  v9 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, v10, v7);
  v12 = v0[252];
  if (EnumTagSinglePayload == 1)
  {
    v13 = &_s10OmniSearch0B6EntityVSgMd;
    v14 = &_s10OmniSearch0B6EntityVSgMR;
    v15 = v0[252];
LABEL_48:
    outlined destroy of IntentApplication?(v15, v13, v14);
LABEL_49:

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v121))
    {
      OUTLINED_FUNCTION_28_3();
      v122 = swift_slowAlloc();
      OUTLINED_FUNCTION_203_2(v122, 3.852e-34);
      OUTLINED_FUNCTION_205_3(&dword_25D85C000, v123, v124, "%ld results. SearchTool will synthesize model data & dialog");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_60(&async function pointer to specialized Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:));
    v125 = swift_task_alloc();
    v0[281] = v125;
    *v125 = v0;
    OUTLINED_FUNCTION_48_8(v125);
    OUTLINED_FUNCTION_132_6();

    __asm { BR              X4 }
  }

  EntityProperty.wrappedValue.getter();
  memcpy(v0 + 36, v0 + 19, 0x88uLL);
  OUTLINED_FUNCTION_2_25();
  outlined destroy of SearchToolIntentRequest(v12, v53);
  memcpy(v0 + 53, v0 + 36, 0x88uLL);
  if (_s10OmniSearch0B7ContextVSgWOg(v0 + 53) == 1)
  {
    goto LABEL_49;
  }

  if (*(v0[225] + 16) == 1)
  {
    EntityProperty.wrappedValue.getter();
    v24 = v0[212];
    if (v24)
    {
      if (v0[268] == 2)
      {
        OUTLINED_FUNCTION_144_4();

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v54, v55))
        {
          OUTLINED_FUNCTION_28_3();
          v56 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v8 = swift_slowAlloc();
          *(v56 + 4) = OUTLINED_FUNCTION_206_2(4.9654e-34);
          OUTLINED_FUNCTION_25_6();
          _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v8);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        OUTLINED_FUNCTION_202_3(v62, v63, v64, v65, v66, v67, v68, v69, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v181, v184, v187, v189, v191, v193);
        SearchToolIntentController.buildExpandableLiveFlightComponents(answer:)();
        v185 = v1;
        if (v71 >> 60 == 15)
        {
          v74 = v0[65];
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
          v75 = OUTLINED_FUNCTION_55_8();
          if (v75)
          {
            OUTLINED_FUNCTION_209_2(v75);
            v76 = type metadata accessor for RGPluginModel();
            v77 = OUTLINED_FUNCTION_103_6();
            v79 = __swift_getEnumTagSinglePayload(v77, v78, v76);
            v80 = v0[250];
            if (v79 != 1)
            {
              OUTLINED_FUNCTION_4_26();
              _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v140, v141, MEMORY[0x277D1C510]);
              OUTLINED_FUNCTION_54_5();
              SnippetPluginModel.data.getter();
              OUTLINED_FUNCTION_169_3();

              OUTLINED_FUNCTION_51();
              v142 = OUTLINED_FUNCTION_88();
              v143(v142);
              if (v1 >> 60 == 15)
              {
                v144 = 0;
              }

              else
              {
                v144 = v8;
              }

              v145 = 0xC000000000000000;
              if (v1 >> 60 != 15)
              {
                v145 = v1;
              }

              v192 = v145;
              v194 = v144;
              OUTLINED_FUNCTION_127_8();
              v188 = v146;
              v190 = v147;
              goto LABEL_62;
            }

            outlined destroy of IntentApplication?(v80, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
          }

          OUTLINED_FUNCTION_127_8();
          v188 = v81;
          v190 = v82;
          v192 = 0xC000000000000000;
          v194 = 0;
        }

        else
        {
          v128 = v70;
          v129 = v71;
          v130 = v72;
          v131 = v73;
          OUTLINED_FUNCTION_210_0();
          v132 = OUTLINED_FUNCTION_107();
          outlined copy of Data._Representation(v132, v133);
          v134 = OUTLINED_FUNCTION_116_1();
          outlined copy of Data._Representation(v134, v135);
          v188 = v130;
          v190 = v131;
          v136 = OUTLINED_FUNCTION_116_1();
          outlined consume of Data._Representation(v136, v137);
          v192 = v129;
          v194 = v128;
          v138 = OUTLINED_FUNCTION_107();
          outlined consume of Data._Representation(v138, v139);
        }

LABEL_62:
        v148 = v0[266];
        v149 = v0[265];
        v39 = v0[264];
        v31 = v0[263];
        v150 = v0[246];
        v151 = v0[245];
        v183 = v0[244];
        v26 = v185;
        v0[213] = v185;
        OUTLINED_FUNCTION_129_6();
        OUTLINED_FUNCTION_28_1();
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        LocalizedStringResource.init(stringLiteral:)();
        LocalizedStringResource.init(stringLiteral:)();
        _SpeakableString.init(spoken:printed:)();
        outlined destroy of IntentApplication?((v0 + 36), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
        type metadata accessor for URL();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
        v156 = *(v151 + 32);
        v25 = (v151 + 32);
        v157 = v150;
        v27 = v183;
        v156(v148 + *(v149 + 32), v157, v183);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v158, v159, v160, v183);
        OUTLINED_FUNCTION_139_4();
        goto LABEL_8;
      }

      v116 = OUTLINED_FUNCTION_94();
      outlined copy of OmniSearchResponseRenderOption(v116, v117);
      v118 = OUTLINED_FUNCTION_94();
      outlined consume of OmniSearchResponseRenderOption(v118, v119);
      outlined consume of OmniSearchResponseRenderOption(0, 2);
    }
  }

  v13 = &_s10OmniSearch0B12AnswerEntityVSgMd;
  v14 = &_s10OmniSearch0B12AnswerEntityVSgMR;
  v15 = (v0 + 36);
  goto LABEL_48;
}

uint64_t SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__dst, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t *a56, uint64_t a57, uint64_t a58)
{
  OUTLINED_FUNCTION_199_3();
  a57 = v59;
  a58 = v60;
  a56 = v58;
  memcpy(v58 + 121, v58 + 104, 0x88uLL);
  v61 = v58[289];
  v62 = v58[266];
  v63 = v58[265];
  v64 = 0x800000025DBF2DD0;
  v65 = v63[5];
  if (one-time initialization token for catTemplateDirectoryURL == -1)
  {
    v66 = v58[266];
  }

  else
  {
    OUTLINED_FUNCTION_10_19(&one-time initialization token for catTemplateDirectoryURL);
    v66 = v58[266];
    v63 = v58[265];
  }

  v67 = v58[282];
  v68 = v58[244];
  v69 = type metadata accessor for URL();
  __swift_project_value_buffer(v69, static SearchToolIntentController.catTemplateDirectoryURL);
  OUTLINED_FUNCTION_51();
  (*(v70 + 16))(v62 + v65);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10AppIntents12_IntentValue_s8SendableptGMd, &_ss23_ContiguousArrayStorageCySS_10AppIntents12_IntentValue_s8SendableptGMR);
  v74 = swift_allocObject();
  v75 = OUTLINED_FUNCTION_66_8(v74, xmmword_25DBC8400);
  v75[2].n128_u64[0] = 0xD000000000000011;
  v75[2].n128_u64[1] = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B9CATEntityVGMd, &_sSay10OmniSearch0B9CATEntityVGMR);
  v74[4].n128_u64[1] = v77;
  lazy protocol witness table accessor for type [SearchCATEntity] and conformance <A> [A]();
  v74[3].n128_u64[0] = v67;
  OUTLINED_FUNCTION_44_6();
  v74[5].n128_u64[0] = v78;
  v74[5].n128_u64[1] = 0xD000000000000011;
  v74[8].n128_u64[0] = v77;
  v74[8].n128_u64[1] = v78;
  v74[6].n128_u64[0] = v79;
  v74[6].n128_u64[1] = v61;
  v74[9].n128_u64[0] = 0xD000000000000013;
  v74[9].n128_u64[1] = 0x800000025DBF2E10;

  Array<A>.isHomogenousResults.getter();
  v81 = v80;

  v74[11].n128_u64[1] = MEMORY[0x277D839B0];
  v74[12].n128_u64[0] = lazy protocol witness table accessor for type Bool and conformance Bool();
  v74[10].n128_u8[0] = v81 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12_IntentValue_s8SendablepMd, &_s10AppIntents12_IntentValue_s8SendablepMR);
  v82 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v68);
  *v66 = 0xD00000000000001FLL;
  *(v66 + 8) = 0x800000025DBF2DD0;
  *(v66 + v63[6]) = v82;
  OUTLINED_FUNCTION_148_3();
  if (_s10OmniSearch0B7ContextVSgWOg(v58 + 138) == 1)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_201_3();
  memcpy(&__dst, v58 + 138, 0x88uLL);
  outlined init with copy of SearchAnswerEntity((v58 + 155), (v58 + 172));
  SearchToolIntentController.buildExpandableLiveFlightComponents(answer:)();
  OUTLINED_FUNCTION_188_3();
  v64 = v94;
  v81 = v95;
  outlined destroy of IntentApplication?((v58 + 121), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  if (v66 >> 60 == 15)
  {
    v68 = v58[167];
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
    v96 = OUTLINED_FUNCTION_55_8();
    if (v96)
    {
      v97 = v58[284];
      v98 = v58[247];
      v68 = v96;
      SFCard.snippetPluginModel.getter(v98);

      v99 = OUTLINED_FUNCTION_103_6();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v99, v100, v97);
      v74 = v58[286];
      v81 = v58[285];
      if (EnumTagSinglePayload != 1)
      {
        v64 = v58[284];
        v160 = v58[283];
        v86 = v58[247];
        OUTLINED_FUNCTION_4_26();
        _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v161, v162, MEMORY[0x277D1C510]);
        SnippetPluginModel.data.getter();
        OUTLINED_FUNCTION_188_3();
        v163 = OUTLINED_FUNCTION_116_1();
        outlined consume of Data._Representation(v163, v164);

        outlined destroy of IntentApplication?((v58 + 121), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
        OUTLINED_FUNCTION_51();
        v165 = OUTLINED_FUNCTION_153();
        v166(v165);
        if (v66 >> 60 == 15)
        {
          v90 = 0;
        }

        else
        {
          v90 = v63;
        }

        v91 = 0xC000000000000000;
        if (v66 >> 60 != 15)
        {
          v91 = v66;
        }

        goto LABEL_6;
      }

      v64 = v58[283];
      v86 = v58[247];
      v102 = OUTLINED_FUNCTION_116_1();
      outlined consume of Data._Representation(v102, v103);

      outlined destroy of IntentApplication?((v58 + 121), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
      v87 = &_s16IntelligenceFlow13RGPluginModelOSgMd;
      v88 = &_s16IntelligenceFlow13RGPluginModelOSgMR;
      v89 = v86;
LABEL_5:
      outlined destroy of IntentApplication?(v89, v87, v88);
      v90 = 0;
      v91 = 0xC000000000000000;
LABEL_6:
      v174 = v91;
      v176 = v90;
      OUTLINED_FUNCTION_127_8();
      v178 = v92;
      v179 = v93;
      goto LABEL_12;
    }

LABEL_4:
    v86 = v58[283];
    outlined consume of Data._Representation(v58[285], v58[286]);

    v87 = &_s10OmniSearch0B12AnswerEntityVSgMd;
    v88 = &_s10OmniSearch0B12AnswerEntityVSgMR;
    v89 = (v58 + 121);
    goto LABEL_5;
  }

  v86 = v58[286];
  v68 = v58[285];
  v74 = v58[283];
  OUTLINED_FUNCTION_210_0();
  v104 = OUTLINED_FUNCTION_94();
  outlined consume of Data._Representation(v104, v105);

  outlined destroy of IntentApplication?((v58 + 121), &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  v106 = OUTLINED_FUNCTION_179_0();
  outlined copy of Data._Representation(v106, v107);
  v108 = OUTLINED_FUNCTION_30_5();
  outlined copy of Data._Representation(v108, v109);
  v178 = v64;
  v179 = v81;
  v110 = OUTLINED_FUNCTION_30_5();
  outlined consume of Data._Representation(v110, v111);
  v174 = v66;
  v176 = v63;
  v112 = OUTLINED_FUNCTION_179_0();
  outlined consume of Data._Representation(v112, v113);
LABEL_12:
  OUTLINED_FUNCTION_34_18();
  v171 = v114;
  OUTLINED_FUNCTION_109_7();
  v173 = v86;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_183_2();
  v115 = OUTLINED_FUNCTION_53_10();
  v172 = v116;
  v116(v115);
  IntentSystemContext.InterfaceIdiom.rawValue.getter();
  v117 = OUTLINED_FUNCTION_39_11();
  (v68)(v117);
  if (v63)
  {
    if (v74 == v81 && v63 == v64)
    {
LABEL_27:

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_61_10();
    OUTLINED_FUNCTION_175_3();

    if (v74)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_100_6();
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_182_3();
  v119 = OUTLINED_FUNCTION_195_3();
  v172(v119);
  v120 = IntentSystemContext.InterfaceIdiom.rawValue.getter();
  v121 = OUTLINED_FUNCTION_51_9();
  (v68)(v121);
  if (!v63)
  {
    OUTLINED_FUNCTION_76_7();

    goto LABEL_35;
  }

  if (v66 == v120 && v63 == v81)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_59_8();
  OUTLINED_FUNCTION_157_2();

  if ((v68 & 1) == 0)
  {
    OUTLINED_FUNCTION_76_7();
LABEL_35:
    v146 = v174;
    v145 = v176;
    goto LABEL_36;
  }

LABEL_28:
  if (one-time initialization token for visual != -1)
  {
    OUTLINED_FUNCTION_21_14(&one-time initialization token for visual);
  }

  v123 = OUTLINED_FUNCTION_98_6();
  v124 = __swift_project_value_buffer(v123, static Logging.visual);
  OUTLINED_FUNCTION_6_13();
  v125 = OUTLINED_FUNCTION_94();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v125, v126);
  v127 = v124;
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_173_2(v129);
  OUTLINED_FUNCTION_99_7();
  v130 = v58[259];
  if (v131)
  {
    OUTLINED_FUNCTION_28_3();
    v173 = v132;
    v133 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v134 = swift_slowAlloc();
    __dst = v134;
    *v133 = 136315138;
    OUTLINED_FUNCTION_171_2(v134);
    OUTLINED_FUNCTION_52_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    OUTLINED_FUNCTION_211_2();
    OUTLINED_FUNCTION_34_10();
    OUTLINED_FUNCTION_1_40();
    outlined destroy of SearchToolIntentRequest(v130, v135);
    OUTLINED_FUNCTION_242();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_176_3();
    *(v133 + 4) = v127;
    OUTLINED_FUNCTION_134_4(&dword_25D85C000, v136, v137, "Drop visual when in CarPlay, interfaceIdiom: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v134);
    v138 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v138);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    outlined consume of Data._Representation(v176, v174);
    v139 = OUTLINED_FUNCTION_113_8();
    outlined consume of IndexContext?(v139, v140, v173);
  }

  else
  {
    v141 = OUTLINED_FUNCTION_113_8();
    outlined consume of IndexContext?(v141, v142, v143);
    outlined consume of Data._Representation(v176, v174);

    OUTLINED_FUNCTION_1_40();
    outlined destroy of SearchToolIntentRequest(v130, v144);
  }

  v145 = 0;
  v146 = 0xC000000000000000;
LABEL_36:
  OUTLINED_FUNCTION_32_18();
  v167 = v148;
  v168 = v147;
  v169 = v58[253];
  v170 = v58[252];
  OUTLINED_FUNCTION_57_7();
  v175 = v58[233];
  v177 = v58[232];
  v149 = v58[224];
  type metadata accessor for SearchToolIntentController.ExperienceData(0);
  OUTLINED_FUNCTION_7_20();
  outlined init with take of AssistantSystemContext(v66, v149 + v150);
  *v149 = v145;
  v149[1] = v146;
  v149[2] = v178;
  v149[3] = v179;

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_131_3();

  return v152(v151, v152, v153, v154, v155, v156, v157, v158, a9, v167, v168, v169, v170, a14, a15, a16, a17, a18, a19, a20, a21, a22, v171, v172, v173, v175, v177, v178, v179, __dst, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t SearchEntity.globalPassthroughResults(removeWebSearchPunchout:)()
{
  OUTLINED_FUNCTION_48();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v3);
  v1[4] = OUTLINED_FUNCTION_199();
  v4 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_114(v4);
  v1[5] = OUTLINED_FUNCTION_160();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for _SpeakableString();
  v1[7] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_199();
  v7 = type metadata accessor for Searchfoundation_Card();
  v1[10] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_199();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  OUTLINED_FUNCTION_114(v9);
  v1[13] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v1[14] = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v1[15] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_160();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v1[21] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[22] = v14;
  v1[23] = OUTLINED_FUNCTION_199();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v1[24] = OUTLINED_FUNCTION_199();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  OUTLINED_FUNCTION_114(v16);
  v1[25] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for GlobalDialog();
  v1[26] = v17;
  OUTLINED_FUNCTION_21(v17);
  v1[27] = v18;
  v1[28] = OUTLINED_FUNCTION_199();
  v19 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v19);
}

uint64_t SearchEntity.globalPassthroughResults(removeWebSearchPunchout:)(uint64_t a1)
{
  EntityProperty.wrappedValue.getter();
  v2 = type metadata accessor for SearchGlobalEntity(0);
  v3 = OUTLINED_FUNCTION_11_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, v4, v2);
  v6 = v1[26];
  v7 = v1[24];
  if (EnumTagSinglePayload)
  {
    outlined destroy of IntentApplication?(v1[24], &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
    OUTLINED_FUNCTION_38_16();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
LABEL_5:
    outlined destroy of IntentApplication?(v1[25], &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
LABEL_7:
    OUTLINED_FUNCTION_92();
    goto LABEL_8;
  }

  outlined init with copy of SpotlightRankingItem?(v7 + *(v2 + 76), v1[25], &_s15OmniSearchTypes12GlobalDialogVSgMd, &_s15OmniSearchTypes12GlobalDialogVSgMR);
  outlined destroy of IntentApplication?(v7, &_s10OmniSearch0B12GlobalEntityVSgMd, &_s10OmniSearch0B12GlobalEntityVSgMR);
  v12 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v12, v13, v6);
  if (v14)
  {
    goto LABEL_5;
  }

  (*(v1[27] + 32))(v1[28], v1[25], v1[26]);
  type metadata accessor for SearchEntity(0);
  _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity, type metadata accessor for SearchEntity, &protocol conformance descriptor for SearchEntity);
  v21 = ExperienceProviding.experiences.getter();
  if (!specialized Array.count.getter())
  {
    (*(v1[27] + 8))(v1[28], v1[26]);

    goto LABEL_6;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x25F89FFD0](0, v21);
  }

  else
  {
    v22 = *(v21 + 32);
  }

  v23 = v22;

  type metadata accessor for GenericExperience();
  if (!swift_dynamicCastClass())
  {

    v60 = OUTLINED_FUNCTION_88();
    v61(v60);
    goto LABEL_6;
  }

  v118 = v23;
  v24 = *(GenericExperience.components.getter() + 16);
  if (v24)
  {
    v25 = v1[22];
    v27 = *(v25 + 16);
    v25 += 16;
    v26 = v27;
    OUTLINED_FUNCTION_79();
    v30 = v28 + v29;
    v31 = *(v25 + 56);
    v128 = (v25 - 8);
    v123 = *MEMORY[0x277D39900];
    v121 = (v32 + 32);
    v33 = MEMORY[0x277D84F90];
    v119 = v27;
    v125 = v31;
    do
    {
      v34 = v1[23];
      v35 = v1[21];
      v36 = v1[13];
      v37 = OUTLINED_FUNCTION_153();
      v26(v37);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      (*v128)(v34, v35);
      v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      if (__swift_getEnumTagSinglePayload(v36, 1, v38) == 1)
      {
        outlined destroy of IntentApplication?(v1[13], &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_19_14();
        v40 = v39;
        if ((*(v41 + 88))() == v123)
        {
          v42 = v1[18];
          v120 = v1[19];
          v43 = v1[17];
          v44 = v1[15];
          v45 = v33;
          v46 = v1[13];
          (*(v40 + 96))(v46, v38);
          v47 = *v121;
          v48 = v46;
          v33 = v45;
          (*v121)(v43, v48, v44);
          v47(v42, v43, v44);
          v47(v120, v42, v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = OUTLINED_FUNCTION_65_10();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53, v54, v55, v56);
            v33 = v57;
          }

          v50 = *(v33 + 16);
          v49 = *(v33 + 24);
          v26 = v119;
          if (v50 >= v49 >> 1)
          {
            v58 = OUTLINED_FUNCTION_26_3(v49);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58, v50 + 1, 1, v33);
            v33 = v59;
          }

          *(v33 + 16) = v50 + 1;
          OUTLINED_FUNCTION_42_5();
          (v47)(v33 + v51 + *(v52 + 72) * v50);
        }

        else
        {
          (*(v40 + 8))(v1[13], v38);
        }

        v31 = v125;
      }

      v30 += v31;
      --v24;
    }

    while (v24);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v62 = v1[15];
  specialized Collection.first.getter(v33, v1[14]);

  v63 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v63, v64, v62);
  if (v14)
  {
    outlined destroy of IntentApplication?(v1[14], &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v65 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v65, static Logging.search);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v67))
    {
      v68 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v68);
      OUTLINED_FUNCTION_174_2(&dword_25D85C000, v69, v67, "Missing experience component in global results");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v70 = OUTLINED_FUNCTION_32_0();
    v71(v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
    goto LABEL_7;
  }

  (*(v1[16] + 32))(v1[20], v1[14], v1[15]);
  static GlobalSearchResponseProcessor.makeCard(layoutSnippet:)();
  v72 = static GlobalSearchResponseProcessor.makeSFCard(card:)();
  if (!v72)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v77 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v77, static Logging.search);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v79))
    {
      v80 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v80);
      OUTLINED_FUNCTION_174_2(&dword_25D85C000, v81, v79, "Unable to make SFCard from global results");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v82 = v1[27];
    v83 = v1[26];
    v126 = v1[28];

    v84 = OUTLINED_FUNCTION_179_0();
    v85(v84);
    v86 = OUTLINED_FUNCTION_64_0();
    v87(v86);
    (*(v82 + 8))(v126, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
    goto LABEL_7;
  }

  v73 = v72;
  v74 = v1[4];
  GlobalDialog.speak.getter();
  LocalizedStringResource.init(stringLiteral:)();
  GlobalDialog.print.getter();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_64_0();
  _SpeakableString.init(spoken:printed:)();
  SFCard.snippetPluginModel.getter(v74);
  v75 = type metadata accessor for RGPluginModel();
  if (__swift_getEnumTagSinglePayload(v74, 1, v75) == 1)
  {
    outlined destroy of IntentApplication?(v1[4], &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
    v129 = 0;
    v76 = 0xF000000000000000;
LABEL_48:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v93 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v93, static Logging.search);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v95))
    {
      v96 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v96);
      OUTLINED_FUNCTION_174_2(&dword_25D85C000, v97, v95, "No snippet model data generated. This is expected for dialog-only Pegasus response.");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v98 = v1[27];
    v122 = v1[28];
    v99 = v1[26];

    v100 = OUTLINED_FUNCTION_162_3();
    v101(v100);
    v102 = OUTLINED_FUNCTION_158();
    v103(v102);
    (*(v98 + 8))(v122, v99);
    outlined consume of Data?(v129, v76);
    v104 = 0;
    v105 = 0xC000000000000000;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_4_26();
  _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v88, v89, MEMORY[0x277D1C510]);
  v129 = SnippetPluginModel.data.getter();
  v76 = v90;
  OUTLINED_FUNCTION_51();
  v91 = OUTLINED_FUNCTION_70_2();
  v92(v91);
  if (v76 >> 60 == 15)
  {
    goto LABEL_48;
  }

  v106 = v1[27];
  v107 = v76;
  v124 = v1[26];
  v127 = v1[28];
  v108 = v1[11];
  v109 = v1[12];
  v110 = v1[10];

  (*(v108 + 8))(v109, v110);
  v111 = OUTLINED_FUNCTION_179_0();
  v112(v111);
  (*(v106 + 8))(v127, v124);
  v105 = v107;
  v104 = v129;
LABEL_54:
  v114 = v1[8];
  v113 = v1[9];
  v115 = v1[7];
  v116 = v1[2];
  *v116 = v104;
  v116[1] = v105;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMd, &_s10Foundation4DataV12snippetModel_10AppIntents16_SpeakableStringV09speakableH0tMR);
  (*(v114 + 32))(v116 + *(v117 + 48), v113, v115);
  OUTLINED_FUNCTION_44_0();
  v18 = v117;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);

  OUTLINED_FUNCTION_127();

  return v19();
}

uint64_t closure #1 in SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return SearchEntity.asCATEntity.getter();
}

uint64_t closure #4 in SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return SearchEntity.asCATEntity.getter();
}

void SearchToolIntentController.buildExpandableLiveFlightComponents(answer:)()
{
  OUTLINED_FUNCTION_155();
  v158 = v0;
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for Layout();
  OUTLINED_FUNCTION_14();
  v165 = v2;
  v166 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v157 = v4 - v3;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for RGPluginModel();
  OUTLINED_FUNCTION_14();
  v154 = v6;
  v155 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v9 = (v8 - v7);
  v171 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v175 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v159 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39_0();
  v170 = v16;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_2();
  v169 = v18;
  v19 = OUTLINED_FUNCTION_78_0();
  v20 = type metadata accessor for SearchResultItem(v19);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v21);
  v23 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  v176 = v25;
  OUTLINED_FUNCTION_78_0();
  v180 = type metadata accessor for FlightReservation();
  v26 = OUTLINED_FUNCTION_21(v180);
  v177 = v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_36();
  v179 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v30);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  v184 = &v152 - v32;
  v33 = OUTLINED_FUNCTION_78_0();
  v34 = type metadata accessor for SearchResult(v33);
  OUTLINED_FUNCTION_14();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  v174 = v38;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_4();
  v168 = v40;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_4();
  v181 = v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_4();
  v172 = v44;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v45);
  v47 = &v152 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v152 - v49;
  memcpy(v189, v0, sizeof(v189));
  memcpy(v188, v0, sizeof(v188));
  SearchAnswerEntity.sourceResults.getter();
  v52 = v51;
  v53 = *(v51 + 16);
  v182 = v9;
  v183 = v34;
  v185 = v53;
  v160 = v50;
  if (v53)
  {
    v173 = v20;
    v54 = 0;
    OUTLINED_FUNCTION_79();
    while (1)
    {
      if (v54 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_9_21();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v55, v47);
      SearchResultItem.type.getter(&v187);
      SearchResultKey.rawValue.getter();
      v58 = v57 == 0xD000000000000011 && 0x800000025DBEDF90 == v56;
      if (v58)
      {
      }

      else
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_175_3();
        if ((v36 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (SearchResultItem.experience.getter())
      {

        OUTLINED_FUNCTION_3_29();
        v61 = v184;
        outlined init with take of AssistantSystemContext(v47, v184);
        v60 = 0;
        v9 = v182;
        v34 = v183;
        v20 = v173;
        goto LABEL_17;
      }

LABEL_12:
      ++v54;
      OUTLINED_FUNCTION_0_42();
      outlined destroy of SearchToolIntentRequest(v47, v59);
      if (v185 == v54)
      {

        v60 = 1;
        v9 = v182;
        v34 = v183;
        v20 = v173;
        goto LABEL_15;
      }
    }
  }

  v60 = 1;
LABEL_15:
  v61 = v184;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v61, v60, 1, v34);
  v62 = OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_166(v62, v63, v34);
  v65 = v165;
  v64 = v166;
  v66 = v176;
  if (v58)
  {
    outlined destroy of IntentApplication?(v61, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_3_29();
  outlined init with take of AssistantSystemContext(v61, v160);
  v67 = SearchResultItem.experience.getter();
  if (!v67 || (v68 = (*(*v67 + 128))(v67), , (v153 = v68) == 0))
  {
    OUTLINED_FUNCTION_0_42();
    outlined destroy of SearchToolIntentRequest(v160, v110);
    goto LABEL_58;
  }

  v167 = v36;
  memcpy(v188, v189, sizeof(v188));
  SearchAnswerEntity.sourceResults.getter();
  v70 = v69;
  v71 = *(v69 + 16);
  if (v71)
  {
    v187 = MEMORY[0x277D84F90];
    v185 = v71;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71, 0);
    OUTLINED_FUNCTION_42_5();
    v152 = v70;
    v178 = v72;
    v73 = v70 + v72;
    v74 = v187;
    v163 = (v177 + 16);
    v164 = (v177 + 32);
    v161 = v23;
    v162 = (v177 + 8);
    v177 = *(v75 + 72);
    v156 = (v175 + 32);
    v76 = v181;
    v77 = v172;
    v173 = v20;
    do
    {
      OUTLINED_FUNCTION_9_21();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v73, v76);
      OUTLINED_FUNCTION_85_9();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v76, v66);
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v184 = v74;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);

        v80 = v179;
        v79 = v180;
        (*v164)(v179, v66, v180);
        v81 = *(v78 + 48);
        (*v163)(v23, v80, v79);
        v82 = MEMORY[0x277D84F90];
        *&v23[v81] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_162_3();
        swift_storeEnumTagMultiPayload();
        v83 = v183;
        LODWORD(v175) = *(v76 + v183[8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v84 = CodableNSSecureCoding.wrappedValue.getter();
        v85 = v169;
        OUTLINED_FUNCTION_92();
        v86 = v23;
        v87 = v171;
        __swift_storeEnumTagSinglePayload(v88, v89, v90, v171);
        v91 = v168;
        *(v168 + v83[7]) = v82;
        v92 = (v91 + v83[10]);
        *v92 = 0;
        v92[1] = 0;
        OUTLINED_FUNCTION_85_9();
        _s10OmniSearch22AssistantSystemContextVWOcTm_0(v86, v91);
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v93 = v84;
        v94 = v87;
        CodableNSSecureCoding.init(wrappedValue:)();
        v95 = v170;
        outlined init with copy of SpotlightRankingItem?(v85, v170, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_166(v95, 1, v87);
        if (v58)
        {
          outlined destroy of IntentApplication?(v95, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_153_4();
          OUTLINED_FUNCTION_153_4();
          OUTLINED_FUNCTION_153_4();
          OUTLINED_FUNCTION_153_4();
          OUTLINED_FUNCTION_153_4();
          v186 = 1;
          OUTLINED_FUNCTION_28_1();
          SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

          outlined destroy of IntentApplication?(v85, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_27_13();
          v23 = v161;
          outlined destroy of SearchToolIntentRequest(v161, v96);
          (*v162)(v179, v180);
          OUTLINED_FUNCTION_0_42();
          outlined destroy of SearchToolIntentRequest(v181, v97);
        }

        else
        {

          outlined destroy of IntentApplication?(v85, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_27_13();
          v23 = v161;
          outlined destroy of SearchToolIntentRequest(v161, v99);
          (*v162)(v179, v180);
          OUTLINED_FUNCTION_0_42();
          outlined destroy of SearchToolIntentRequest(v181, v100);
          v101 = *v156;
          v102 = v159;
          v103 = OUTLINED_FUNCTION_158();
          v101(v103);
          (v101)(v91 + v83[5], v102, v94);
        }

        v77 = v172;
        *(v91 + v83[8]) = v175;
        *(v91 + v83[9]) = 1;
        v66 = v176;
        v76 = v181;
        v74 = v184;
      }

      else
      {
        OUTLINED_FUNCTION_27_13();
        outlined destroy of SearchToolIntentRequest(v66, v98);
      }

      OUTLINED_FUNCTION_3_29();
      outlined init with take of AssistantSystemContext(v104, v77);
      v187 = v74;
      v106 = *(v74 + 16);
      v105 = *(v74 + 24);
      if (v106 >= v105 >> 1)
      {
        v109 = OUTLINED_FUNCTION_26_3(v105);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109, v106 + 1, 1);
        v74 = v187;
      }

      *(v74 + 16) = v106 + 1;
      v107 = v177;
      OUTLINED_FUNCTION_3_29();
      outlined init with take of AssistantSystemContext(v77, v108);
      v73 += v107;
      --v185;
      v9 = v182;
    }

    while (v185);

    v65 = v165;
    v64 = v166;
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v111 = _s10OmniSearch18EntityCardBuildingPAAE07cardForB7Results_7contextSo6SFCardCSgSayAA0B6ResultVG_AA0bC13VisualContextCtFZAA0cD7BuilderV_Tt1g5(v74, v158[12]);
  if (!v111)
  {
    OUTLINED_FUNCTION_0_42();
    outlined destroy of SearchToolIntentRequest(v160, v120);

    goto LABEL_58;
  }

  v112 = v111;
  v184 = v74;
  v113 = v153;
  v114 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(v153);
  v115 = MEMORY[0x277D84F90];
  if (v114)
  {
    v116 = v114;
  }

  else
  {
    v116 = MEMORY[0x277D84F90];
  }

  v117 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(v112);
  if (!v117)
  {
    v117 = v115;
  }

  v188[0] = v116;
  specialized Array.append<A>(contentsOf:)(v117);
  outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v188[0], v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ResponseUI11CodableCardV04fullD0_AC07compactD0tMd, &_s10ResponseUI11CodableCardV04fullD0_AC07compactD0tMR);
  v118 = v112;
  v119 = v157;
  v185 = v118;
  CodableCard.init(wrappedValue:)();
  v182 = v113;
  CodableCard.init(wrappedValue:)();
  (*(v65 + 104))(v119, *MEMORY[0x277D46C30], v64);
  Layout.snippetModel()();
  v121 = OUTLINED_FUNCTION_116_0();
  v122(v121);
  OUTLINED_FUNCTION_4_26();
  _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v123, v124, MEMORY[0x277D1C510]);
  v125 = v155;
  v181 = SnippetPluginModel.data.getter();
  v127 = v126;
  v128 = v125;
  v129 = v127;
  (*(v154 + 8))(v9, v128);
  v130 = *(v184 + 16);
  v131 = v174;
  if (!v130)
  {

    v133 = MEMORY[0x277D84F90];
LABEL_53:
    v188[0] = v133;
    v188[1] = 0;
    lazy protocol witness table accessor for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel();
    v146 = SnippetPluginModel.data.getter();
    v148 = v147;

    OUTLINED_FUNCTION_0_42();
    outlined destroy of SearchToolIntentRequest(v160, v149);

    if (v129 >> 60 == 15)
    {
      v150 = v146;
      v151 = v148;
    }

    else
    {
      if (v148 >> 60 != 15)
      {
        goto LABEL_58;
      }

      v150 = v181;
      v151 = v129;
    }

    outlined consume of Data?(v150, v151);
LABEL_58:
    OUTLINED_FUNCTION_148();
    return;
  }

  v180 = v129;
  v188[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v130, 0);
  v132 = 0;
  v133 = v188[0];
  OUTLINED_FUNCTION_79();
  while (v132 < *(v134 + 16))
  {
    OUTLINED_FUNCTION_9_21();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v135, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v136 = CodableNSSecureCoding.wrappedValue.getter();
    v137 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v136);
    if (!v138)
    {
      goto LABEL_62;
    }

    v139 = v137;
    v140 = v138;
    OUTLINED_FUNCTION_0_42();
    outlined destroy of SearchToolIntentRequest(v131, v141);
    v188[0] = v133;
    v143 = *(v133 + 16);
    v142 = *(v133 + 24);
    v134 = v184;
    if (v143 >= v142 >> 1)
    {
      v145 = OUTLINED_FUNCTION_26_3(v142);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v145, v143 + 1, 1);
      v134 = v184;
      v133 = v188[0];
    }

    ++v132;
    *(v133 + 16) = v143 + 1;
    v144 = v133 + 16 * v143;
    *(v144 + 32) = v139;
    *(v144 + 40) = v140;
    v131 = v174;
    if (v130 == v132)
    {

      v129 = v180;
      goto LABEL_53;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

id _s10OmniSearch18EntityCardBuildingPAAE07cardForB7Results_7contextSo6SFCardCSgSayAA0B6ResultVG_AA0bC13VisualContextCtFZAA0cD7BuilderV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_47_1();
  type metadata accessor for ResultSectionBuilder();
  OUTLINED_FUNCTION_131();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;

  v5 = ResultSectionBuilder.buildCard()();

  return v5;
}

void *SearchToolIntentController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t SearchToolIntentController.__deallocating_deinit()
{
  SearchToolIntentController.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SearchToolIntentControllerProtocol.perform(request:progressReporter:) in conformance SearchToolIntentController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 112) + **(**v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v12(a1, a2, a3, a4);
}

Swift::Bool __swiftcall OmniSearchResponse.needsDisambiguation()()
{
  v1 = v0;
  OUTLINED_FUNCTION_133();
  v3 = *(v2 + 128);
  v4 = *(v3() + 16);

  v5 = *(v1 + 41);
  v6 = *(v1 + 40);
  v7 = v6 == 1 && *(v1 + 32) != 1;
  v8 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v9 = static NSUserDefaults.triggersDisambiguation.getter(v8);
  v10 = (v4 > 1) & (v5 | v7) & v9;
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_5_21();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v11, static Logging.stextension);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v21 = v3;
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v15 = swift_slowAlloc();
    *v14 = 136316418;
    v22 = v10;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v14 + 4) = v16;
    *(v14 + 12) = 1024;

    *(v14 + 14) = v6;

    *(v14 + 18) = 1024;
    *(v14 + 20) = v5;
    *(v14 + 24) = 2048;
    v18 = *((v21)(v17) + 16);

    *(v14 + 26) = v18;

    *(v14 + 34) = 1024;
    v19 = *(v1 + 32);

    *(v14 + 36) = v19 == 1;

    *(v14 + 40) = 1024;
    v10 = v22;
    *(v14 + 42) = v9 & 1;
    _os_log_impl(&dword_25D85C000, v12, v13, "SearchTool disambiguation %s:\n    isQuestionQuery: %{BOOL}d\n    isOpenQuery: %{BOOL}d\n    count: %ld\n    isContentSearch: %{BOOL}d\n    allowed by UserDefaults: %{BOOL}d", v14, 0x2Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
  }

  return v10;
}

uint64_t SearchEntity.groupingId.getter(uint64_t a1)
{
  EntityProperty.wrappedValue.getter();
  memcpy(__dst, __src, sizeof(__dst));
  if (_s10OmniSearch0B7ContextVSgWOg(__dst) == 1)
  {
    memcpy(v2, __src, sizeof(v2));
    outlined destroy of IntentApplication?(v2, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    type metadata accessor for SearchEntity(0);
    EntityProperty.wrappedValue.getter();
  }

  else
  {
    memcpy(v2, __src, sizeof(v2));

    outlined destroy of IntentApplication?(v2, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t SearchToolClientType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_20_11(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchToolClientType.typeDisplayRepresentation);
}

uint64_t static SearchToolClientType.typeDisplayRepresentation.getter()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_20_11(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchToolClientType.typeDisplayRepresentation);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_51();
  v1 = OUTLINED_FUNCTION_32_0();
  return v2(v1);
}

uint64_t static SearchToolClientType.typeDisplayRepresentation.setter()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_20_11(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchToolClientType.typeDisplayRepresentation);
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_119();
  v2(v1);
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_94();
  return v4(v3);
}

uint64_t (*static SearchToolClientType.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_20_11(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_200(v1, static SearchToolClientType.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchToolClientType.typeDisplayRepresentation : SearchToolClientType.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchToolClientType.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchToolClientType.typeDisplayRepresentation : SearchToolClientType.Type(uint64_t a1)
{
  v2 = SearchToolClientType.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static SearchToolClientType.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E14ToolClientTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E14ToolClientTypeO_10AppIntents21DisplayRepresentationVtGMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B14ToolClientTypeO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch0B14ToolClientTypeO_10AppIntents21DisplayRepresentationVtMR);
  OUTLINED_FUNCTION_21(v6);
  *(swift_allocObject() + 16) = xmmword_25DBC8180;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  type metadata accessor for DisplayRepresentation.Image();
  v10 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  DisplayRepresentation.init(title:subtitle:image:)();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type SearchToolClientType and conformance SearchToolClientType();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t SearchToolClientType.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchToolClientType.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchToolClientType@<X0>(void *a1@<X8>)
{
  result = SearchToolClientType.rawValue.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchToolClientType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolClientType and conformance SearchToolClientType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchToolClientType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolClientType and conformance SearchToolClientType();

  return MEMORY[0x28210C300](a1, v2);
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_114(v8);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  outlined init with copy of SpotlightRankingItem?(v5, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = OUTLINED_FUNCTION_65();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_51();
    v16 = OUTLINED_FUNCTION_153();
    v17(v16);
  }

  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = v19;
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_34_10();
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      OUTLINED_FUNCTION_131();
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v1;

      if (v18 | v20)
      {
        v26[0] = 0;
        v26[1] = 0;
        v23 = v26;
        v26[2] = v20;
        v26[3] = v18;
      }

      else
      {
        v23 = 0;
      }

      v25[1] = 7;
      v25[2] = v23;
      v25[3] = v21;
      swift_task_create();

      outlined destroy of IntentApplication?(v5, &_sScPSgMd, &_sScPSgMR);

      goto LABEL_14;
    }
  }

  else
  {
    v20 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of IntentApplication?(v5, &_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_131();
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v1;
  if (v18 | v20)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v20;
    v26[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)()
{
  return MEMORY[0x2822009F8](closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:));
}

{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  *(v0 + 16) = static ContextManager.shared;

  return MEMORY[0x2822009F8](closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:));
}

{
  OUTLINED_FUNCTION_48();
  ContextManager.clear()();
  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_106();

  return v3();
}

void *specialized SearchToolIntentController.init(omniSearchService:metricsLogger:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a4[5] = a5;
  a4[6] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  a4[10] = a6;
  a4[11] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1Tm(a4 + 7);
  (*(*(a6 - 8) + 32))(v16, a2, a6);
  a4[12] = a3;
  return a4;
}

unint64_t lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchPropertyRequest] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest, type metadata accessor for SearchPropertyRequest, &protocol conformance descriptor for SearchPropertyRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest, type metadata accessor for SearchPropertyRequest, &protocol conformance descriptor for SearchPropertyRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchPropertyRequest] and conformance <A> [A]);
  }

  return result;
}

uint64_t _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10OmniSearch22AssistantSystemContextVWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t outlined init with take of AssistantSystemContext(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in SearchToolIntentController.perform(request:progressReporter:)(uint64_t a1)
{
  v3 = type metadata accessor for SearchToolIntentRequest(0);
  OUTLINED_FUNCTION_21(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v1 + 16);
  v8 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  v12[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return closure #1 in SearchToolIntentController.perform(request:progressReporter:)(a1, v7, v1 + v5, v9, v10);
}

uint64_t partial apply for closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_23_14();

  return closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)();
}

uint64_t closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)partial apply()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_23_14();

  return closure #1 in $defer #1 () in SearchToolIntentController.performInternal(request:progressReporter:)();
}

uint64_t outlined copy of OmniSearchResponseRenderOption(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
  }

  return result;
}

uint64_t outlined consume of OmniSearchResponseRenderOption(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
  }

  return result;
}

uint64_t outlined destroy of SearchToolIntentRequest(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [SearchToolClientType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SearchToolClientType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SearchToolClientType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B14ToolClientTypeOGMd, &_sSay10OmniSearch0B14ToolClientTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchToolClientType] and conformance [A]);
  }

  return result;
}

uint64_t dispatch thunk of SearchToolIntentControllerProtocol.perform(request:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_185_1(a6);
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_23(v13);
  *v14 = v15;
  v14[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v17(a1, a2, a3, a4, a5, a6);
}

void type metadata completion function for SearchToolIntentRequest(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for StructuredQueryEntity?, type metadata accessor for StructuredQueryEntity, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [SearchEntityTypeIdentifier]?(319, &lazy cache variable for type metadata for [SearchEntityTypeIdentifier]?, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchContext?, &type metadata for SearchContext);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [SearchEntityTypeIdentifier]?(319, &lazy cache variable for type metadata for [EntityMatch]?, &_sSay10OmniSearch11EntityMatchVGMd, &_sSay10OmniSearch11EntityMatchVGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for String?(319, &lazy cache variable for type metadata for SearchToolClientType?, &type metadata for SearchToolClientType);
              if (v7 <= 0x3F)
              {
                type metadata accessor for [SearchEntityTypeIdentifier]?(319, &lazy cache variable for type metadata for [SearchPropertyRequest]?, &_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for AssistantSystemContext(319);
                  if (v9 <= 0x3F)
                  {
                    _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for SearchEntity?, type metadata accessor for SearchEntity, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata completion function for AssistantSystemContext(uint64_t a1)
{
  _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for IntentSystemContext.AssistantContext.InteractionMode?, MEMORY[0x277CBA0C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for IntentSystemContext.InterfaceIdiom?, MEMORY[0x277CBA120], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for DeviceState?, &type metadata for DeviceState);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for DialogData(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for [SearchEntityTypeIdentifier]?(319, &lazy cache variable for type metadata for [String : _IntentValue & Sendable]?, &_sSDySS10AppIntents12_IntentValue_s8SendablepGMd, &_sSDySS10AppIntents12_IntentValue_s8SendablepGMR);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for _SpeakableString?, MEMORY[0x277CB9F78], MEMORY[0x277D83D88]);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void type metadata accessor for [SearchEntityTypeIdentifier]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for SearchToolIntentResponse(uint64_t a1)
{
  _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(319, &lazy cache variable for type metadata for [SearchEntity], type metadata accessor for SearchEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DialogData(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void _s10OmniSearch21StructuredQueryEntityVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_54_5();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t dispatch thunk of SearchToolIntentController.perform(request:progressReporter:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_133();
  v6 = (*(v0 + 112) + **(v0 + 112));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_23(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_103_8(v2);

  return v6(v4);
}

uint64_t dispatch thunk of SearchToolIntentController.performInternal(request:progressReporter:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_133();
  v6 = (*(v0 + 120) + **(v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_23(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_103_8(v2);

  return v6(v4);
}

void type metadata completion function for SearchToolIntentController.ExperienceData(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DialogData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchToolClientType(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchToolIntentRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchToolIntentRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel()
{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel);
  }

  return result;
}

id outlined copy of IndexContext?(int a1, int a2, id a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

void outlined consume of IndexContext?(int a1, int a2, id a3)
{
  if (a3 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type [SearchCATEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchCATEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchCATEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B9CATEntityVGMd, &_sSay10OmniSearch0B9CATEntityVGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchCATEntity and conformance SearchCATEntity, type metadata accessor for SearchCATEntity, &protocol conformance descriptor for SearchCATEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchCATEntity] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchResult] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A]);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  v3 = OUTLINED_FUNCTION_23_14();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(&lazy protocol witness table cache variable for type DialogExperience and conformance DialogExperience, type metadata accessor for DialogExperience, &protocol conformance descriptor for DialogExperience);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DialogExperience] and conformance <A> [A]);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_14(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_52_11()
{
  v1 = v0[206];
  v0[203] = v0[205];
  v0[204] = v1;
}

id OUTLINED_FUNCTION_55_8()
{
  outlined copy of Data?(v1, v0);

  return SFCard.init(data:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_61_10()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_63_8()
{
  *(v1 - 160) = v0[150];
  *(v1 - 144) = v0[147];
  *(v1 - 128) = v0[146];
  v2 = v0[143];
  *(v1 - 112) = v0[145];
  *(v1 - 104) = v2;
  *(v1 - 96) = v0[141];
}

void OUTLINED_FUNCTION_76_7()
{
  v2 = v0[274];
  v3 = v0[273];
  v4 = v0[272];

  outlined consume of IndexContext?(v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_84_7(uint64_t result)
{
  v2[6] = v1;
  v2[10] = result;
  v2[11] = 0x6974736575517369;
  v2[12] = 0xEF79726575516E6FLL;
  return result;
}

void OUTLINED_FUNCTION_89_8()
{
  v2 = v0[157];
  *(v1 - 176) = v0[158];
  *(v1 - 168) = v2;
  *(v1 - 152) = v0[155];
  *(v1 - 136) = v0[153];
  *(v1 - 120) = v0[152];
}

uint64_t OUTLINED_FUNCTION_93_8()
{

  return outlined destroy of SearchToolIntentRequest(v0, type metadata accessor for StructuredQueryEntity);
}

uint64_t OUTLINED_FUNCTION_96_7@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

__n128 *OUTLINED_FUNCTION_112_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7265755172657375;
  result[2].n128_u64[1] = 0xE900000000000079;
  return result;
}

unint64_t OUTLINED_FUNCTION_129_6()
{
  v0[214] = v1;
  v0[215] = 10794;
  v0[216] = 0xE200000000000000;
  v0[217] = 0;
  v0[218] = 0xE000000000000000;

  return lazy protocol witness table accessor for type String and conformance String();
}

void OUTLINED_FUNCTION_133_5()
{

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

void OUTLINED_FUNCTION_134_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_135_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_139_4()
{
  *v0 = 0;
  v0[1] = 0;
  *(v0 + *(v1 + 24)) = 0;
  v2 = (v0 + *(v1 + 28));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_144_4()
{
  outlined consume of OmniSearchResponseRenderOption(*(v0 + 2136), 2);
  outlined consume of OmniSearchResponseRenderOption(0, 2);
}

void *OUTLINED_FUNCTION_148_3()
{
  v4 = (v2 + *(v1 + 28));
  *v4 = 0;
  v4[1] = 0;

  return memcpy((v0 + 1104), (v0 + 968), 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_149_4()
{

  return type metadata accessor for URL();
}

void OUTLINED_FUNCTION_160_2()
{
  *(v1 + *(v2 + 24)) = v0;
  v3 = (v1 + *(v2 + 28));
  *v3 = 0;
  v3[1] = 0;
}

BOOL OUTLINED_FUNCTION_170_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_171_2(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_172_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28)
{

  return outlined consume of Data._Representation(a25, a28);
}

BOOL OUTLINED_FUNCTION_173_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_174_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_175_3()
{
}

uint64_t OUTLINED_FUNCTION_176_3()
{
}

uint64_t OUTLINED_FUNCTION_179_3(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_184_2@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_197_3(uint64_t result)
{
  *(v1 - 472) = result;
  *(v1 - 288) = result;
  return result;
}

void OUTLINED_FUNCTION_200_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void *OUTLINED_FUNCTION_201_3()
{

  return memcpy((v0 + 1240), (v0 + 968), 0x88uLL);
}

void *OUTLINED_FUNCTION_202_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return memcpy(va, (v33 + 424), 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_203_2(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_204_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[17] = a1;
  v3[18] = v2 | 2;
  v3[19] = a2;
}

void OUTLINED_FUNCTION_205_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_206_2(float a1)
{
  *v1 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

uint64_t OUTLINED_FUNCTION_208_1()
{

  return type metadata accessor for TaskPriority();
}

uint64_t OUTLINED_FUNCTION_209_2(uint64_t a1)
{
  v3 = *(v1 + 2000);

  return SFCard.snippetPluginModel.getter(v3);
}

uint64_t OUTLINED_FUNCTION_210_0()
{
  v2 = *(v0 + 2216);
  v3 = *(v0 + 2208);

  return outlined consume of Data?(v3, v2);
}

uint64_t OUTLINED_FUNCTION_211_2()
{

  return String.init<A>(describing:)();
}

Swift::Void __swiftcall SearchToolProgressReporter.setupProgress()()
{
  v2 = v1;
  v3 = v0;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.search);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25D85C000, v5, v6, "Progress reporter setup called", v7, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v8 = type metadata accessor for OmniSearchProgressUpdate();
  swift_allocObject();
  v9 = OmniSearchProgressUpdate.init(totalUnitCount:completedUnitCount:localizedDescription:)(100, 0, 0, 0);
  v13[3] = v8;
  OUTLINED_FUNCTION_1_41();
  v13[4] = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(v10, 255, v11, &protocol conformance descriptor for OmniSearchProgressUpdate);
  v13[0] = v9;
  v12 = *(v2 + 64);

  v12(v13, v3, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a1;
  v5[8] = a3;
  dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchToolProgressReporter.searchStarted(with:isOnScreenReference:));
}

uint64_t SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)()
{
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.search);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25D85C000, v2, v3, "Progress reporter search started called", v4, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v5 = v0[9];
  v7 = v0[7];
  v6 = v0[8];

  SearchToolProgressReporter.getSearchDescription(for:)(v7, v6, v5);
  v8 = type metadata accessor for OmniSearchProgressUpdate();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_5_22();
  v0[5] = v8;
  OUTLINED_FUNCTION_1_41();
  v0[6] = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(v10, 255, v11, &protocol conformance descriptor for OmniSearchProgressUpdate);
  v0[2] = v9;
  v12 = *(v5 + 64);

  v12(v0 + 2, v6, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v13 = v0[1];

  return v13();
}

uint64_t String.init(localized:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_36();
  v3 = type metadata accessor for String.LocalizationValue();
  OUTLINED_FUNCTION_19_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  (*(v5 + 16))(v8 - v7, a1, v3);
  type metadata accessor for SearchToolProgressReporterAppIntent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(a1, v3);
  return v11;
}

uint64_t SearchToolProgressReporter.getSearchDescription(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_36();
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  if ((*(a3 + 40))(a2, a3))
  {
    goto LABEL_12;
  }

  v33 = a2;
  v11 = *(a1 + 16);
  v12 = (a1 + 40);
  for (i = MEMORY[0x277D84F90]; v11; --v11)
  {
    v14 = *(v12 - 1);
    v15 = *v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
      i = v19;
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    if (v17 >= v16 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1);
      i = v20;
    }

    *(i + 16) = v17 + 1;
    v18 = i + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v12 += 2;
  }

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(i);
  v22 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v21);
  if (v22[2] != 1 || (v24 = v22[4], v23 = v22[5], , , v25 = specialized SearchToolProgressReporter.appName(for:)(v24, v23), !v26))
  {

LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    return String.init(localized:)(v10);
  }

  v27 = v25;
  v28 = v26;
  (*(a3 + 24))(v24, v23, v33, a3);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x6E69686372616553;
  v29._object = 0xED0000206E692067;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  v30._countAndFlagsBits = v27;
  v30._object = v28;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v30);

  v31._countAndFlagsBits = 10911970;
  v31._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
  String.LocalizationValue.init(stringInterpolation:)();
  return String.init(localized:)(v10);
}

uint64_t SearchToolProgressReporter.answerSynthesisStarted(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](SearchToolProgressReporter.answerSynthesisStarted(with:));
}

uint64_t SearchToolProgressReporter.answerSynthesisStarted(with:)()
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.answerSynthesis);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25D85C000, v2, v3, "Progress reporter answer synthesis started called", v4, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v5 = v0[9];
  v6 = v0[8];

  if (((*(v5 + 40))(v6, v5) & 1) == 0)
  {
    SearchToolProgressReporter.getASDescription(for:)(v0[7], v0[8], v0[9]);
    if (v7)
    {
      v8 = v0[9];
      v9 = v0[8];
      v10 = type metadata accessor for OmniSearchProgressUpdate();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_5_22();
      v0[5] = v10;
      OUTLINED_FUNCTION_1_41();
      v0[6] = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(v12, 255, v13, &protocol conformance descriptor for OmniSearchProgressUpdate);
      v0[2] = v11;
      v14 = *(v8 + 64);

      v14(v0 + 2, v9, v8);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t SearchToolProgressReporter.getASDescription(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v28 = type metadata accessor for SearchResult(0);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    outlined init with copy of SearchResult(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v11);
    SearchResultItem.type.getter(&v34);
    v15 = v34;
    outlined destroy of SearchResult(v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
      v14 = v18;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1, v14);
      v14 = v19;
    }

    *(v14 + 16) = v17 + 1;
    *(v14 + v17 + 32) = v15;
    ++v12;
  }

  v20 = *(_sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10OmniSearch0C9ResultKeyO_SayAFGTt0g5() + 16);

  v21 = v30;
  v22 = v29;
  if (v20 > 1)
  {
    goto LABEL_11;
  }

  specialized Collection.first.getter(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v28) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v6, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
LABEL_11:
    v33 = 30;
    return SearchToolProgressReporter.getASDescription(for:)(&v33);
  }

  v24 = v27;
  outlined init with take of SearchResult(v6, v27);
  if (SearchToolProgressReporter.doesSearchAppMatchResult(for:)(v24, v22, v21))
  {
    SearchResultItem.type.getter(&v31);
    v25 = SearchToolProgressReporter.getASDescriptionMatchingSearch(for:)(&v31, v22, v21);
  }

  else
  {
    SearchResultItem.type.getter(&v32);
    v25 = SearchToolProgressReporter.getASDescription(for:)(&v32);
  }

  v23 = v25;
  outlined destroy of SearchResult(v24);
  return v23;
}

uint64_t SearchToolProgressReporter.doesSearchAppMatchResult(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v5(a2, a3);
  if (!v6)
  {
    return 0;
  }

  SearchResultItem.type.getter(&v17);
  if (((1 << v17) & 0x7FFF8010) != 0)
  {
    return 0;
  }

  type metadata accessor for SearchResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v7 = CodableNSSecureCoding.wrappedValue.getter();
  v8 = [v7 bundleID];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = (v5)(a2, a3);
  if (v11)
  {
    if (v13)
    {
      if (v9 != v12 || v11 != v13)
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v15 & 1;
      }

      return 1;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_14:

    return 0;
  }

  return 1;
}

uint64_t SearchToolProgressReporter.getASDescriptionMatchingSearch(for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*a1)
  {
    case 4:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
      v9 = *a1;
      result = SearchToolProgressReporter.getASDescription(for:)(&v9);
      break;
    default:
      String.LocalizationValue.init(stringLiteral:)();
      result = String.init(localized:)(v6);
      break;
  }

  return result;
}

uint64_t SearchToolProgressReporter.getASDescription(for:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v9 = 0;
  MEMORY[0x25F8A1070](&v9, 8, v3);
  result = 0;
  switch(v6)
  {
    case 29:
      return result;
    default:
      String.LocalizationValue.init(stringLiteral:)();
      result = String.init(localized:)(v5);
      break;
  }

  return result;
}

uint64_t SearchToolProgressReporterXPC.__allocating_init(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SearchToolProgressReporterXPC.init(session:)(a1);
  return v2;
}

uint64_t SearchToolProgressReporterXPC.init(session:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 136) = a1;
  *(v1 + 128) = 0;
  return v1;
}

void SearchToolProgressReporterXPC.sendProgressReport(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of XPCSession.send<A>(_:)();
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.search);
  outlined init with copy of ChatMessageRecord(a1, v10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    outlined init with copy of ChatMessageRecord(v10, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch14ProgressUpdate_pMd, &_s10OmniSearch14ProgressUpdate_pMR);
    String.init<A>(describing:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v5 + 4) = v7;
    _os_log_impl(&dword_25D85C000, v3, v4, "Successfully sent progress update: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t SearchToolProgressReporterXPC.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SearchToolProgressReporterXPC.__deallocating_deinit()
{
  SearchToolProgressReporterXPC.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for XPCProgressReporter.init(session:) in conformance SearchToolProgressReporterXPC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchToolProgressReporterXPC.__allocating_init(session:)(a1);
  *a2 = result;
  return result;
}

uint64_t key path setter for SearchToolProgressReporterXPC.searchBundleId : SearchToolProgressReporterXPC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t SearchToolProgressReporterXPC.searchBundleId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

uint64_t SearchToolProgressReporterXPC.searchBundleId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t SearchToolProgressReporterAppIntent.__allocating_init(progressReportingIntent:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t SearchToolProgressReporterAppIntent.sendProgressReport(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized SearchToolProgressReporterAppIntent.sendProgressReport(_:)(v4, v1, v2, v3);
}

uint64_t SearchToolProgressReporterAppIntent.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SearchToolProgressReporterAppIntent.__deallocating_deinit()
{
  SearchToolProgressReporterAppIntent.deinit();

  return MEMORY[0x282200960](v0);
}

void outlined bridged method (mbnn) of @objc NSProgress.localizedDescription.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1);

  [a3 setLocalizedDescription_];
}

uint64_t specialized SearchToolProgressReporterAppIntent.__allocating_init(progressReportingIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11, v10);
  type metadata accessor for SearchToolProgressReporterAppIntent();
  v13 = swift_allocObject();
  (*(v6 + 16))(v8, v12, a3);
  v14 = specialized SearchToolProgressReporterAppIntent.init(progressReportingIntent:)(v8, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t specialized SearchToolProgressReporterAppIntent.init(progressReportingIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  swift_defaultActor_initialize();
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  outlined init with take of EntityCardBuilding(&v9, a2 + 136);
  *(a2 + 128) = 0;
  return a2;
}

uint64_t specialized SearchToolProgressReporterAppIntent.sendProgressReport(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  OUTLINED_FUNCTION_19_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  (*(v7 + 16))(v10 - v9);
  OUTLINED_FUNCTION_6_14();
  v12 = ProgressReportingIntent.progress.getter();
  [v12 setTotalUnitCount_];

  OUTLINED_FUNCTION_6_14();
  v13 = ProgressReportingIntent.progress.getter();
  [v13 setCompletedUnitCount_];

  v14 = a4[7](a3, a4);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    OUTLINED_FUNCTION_6_14();
    v18 = ProgressReportingIntent.progress.getter();
    outlined bridged method (mbnn) of @objc NSProgress.localizedDescription.setter(v16, v17, v18);
  }

  return (*(v7 + 8))(v11, a3);
}

uint64_t instantiation function for generic protocol witness table for SearchToolProgressReporterXPC(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type SearchToolProgressReporterXPC and conformance SearchToolProgressReporterXPC, a2, type metadata accessor for SearchToolProgressReporterXPC, &protocol conformance descriptor for SearchToolProgressReporterXPC);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SearchToolProgressReporterAppIntent(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(&lazy protocol witness table cache variable for type SearchToolProgressReporterAppIntent and conformance SearchToolProgressReporterAppIntent, a2, type metadata accessor for SearchToolProgressReporterAppIntent, &protocol conformance descriptor for SearchToolProgressReporterAppIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type OmniSearchProgressUpdate and conformance OmniSearchProgressUpdate(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *OUTLINED_FUNCTION_5_22()
{

  return OmniSearchProgressUpdate.init(totalUnitCount:completedUnitCount:localizedDescription:)(100, 33, v0, v1);
}

uint64_t StructuredQueryEntity.people.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t PersonQueryEntity.unspecified.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for PersonQueryEntity(v0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t PersonQueryEntity.receiver.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for PersonQueryEntity(v0);
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t PersonQueryEntity.sender.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for PersonQueryEntity(v0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t StructuredQueryEntity.preferredType.getter()
{
  type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_10_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t StructuredQueryEntity.filterType.getter()
{
  type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_11_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t StructuredQueryEntity.isQuestion.getter()
{
  type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_17_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t StructuredQueryEntity.isQuestion.setter()
{
  type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*StructuredQueryEntity.isQuestion.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.$isQuestion.getter()
{
  return StructuredQueryEntity.$isQuestion.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t StructuredQueryEntity.filterType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.filterType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.$filterType.getter()
{
  return StructuredQueryEntity.$filterType.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t StructuredQueryEntity.preferredType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.preferredType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.$preferredType.getter()
{
  return StructuredQueryEntity.$preferredType.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t StructuredQueryEntity.temporalReference.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for StructuredQueryEntity(v0);
  OUTLINED_FUNCTION_216_2();
  return EntityProperty.wrappedValue.getter();
}

uint64_t key path getter for StructuredQueryEntity.temporalReference : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.temporalReference.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.temporalReference.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.$temporalReference.getter()
{
  return StructuredQueryEntity.$temporalReference.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_216_2();
  return EntityProperty.projectedValue.getter();
}

uint64_t StructuredQueryEntity.orderByTime.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(Entity);
}

uint64_t key path getter for StructuredQueryEntity.orderByTime : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.orderByTime.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.orderByTime.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.appEntityStatus.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(Entity);
}

uint64_t key path getter for StructuredQueryEntity.appEntityStatus : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.appEntityStatus.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.appEntityStatus.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.pickOne.getter()
{
  type metadata accessor for StructuredQueryEntity(0);
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t (*StructuredQueryEntity.pickOne.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.searchTerms.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.searchTerms.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.searchTerms.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.locations.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.locations.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.locations.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.time.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.time.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.time.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.messageTime.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.messageTime.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.messageTime.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.people.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.people.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.tagName.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.tagName.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.tagName.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.flagColor.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.flagColor.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.flagColor.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.sourceType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.sourceType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.sourceType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.containsType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.containsType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.containsType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.app.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(Entity);
}

uint64_t StructuredQueryEntity.app.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_34_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for StructuredQueryEntity(v7);
  outlined init with copy of ResourceBundle?(a1, v1, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  EntityProperty.wrappedValue.setter();
  return outlined destroy of IntentApplication?(a1, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
}

uint64_t (*StructuredQueryEntity.app.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.extractedType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.extractedType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.extractedType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.returnType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.returnType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.returnType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.objectType.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(Entity);
}

uint64_t key path getter for StructuredQueryEntity.objectType : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.objectType.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.objectType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.utType.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(Entity);
}

uint64_t key path getter for StructuredQueryEntity.utType : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.utType.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.utType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.sortOrder.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(Entity);
}

uint64_t key path getter for StructuredQueryEntity.sortOrder : StructuredQueryEntity@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.sortOrder.getter();
  *a1 = v3;
  return result;
}

uint64_t (*StructuredQueryEntity.sortOrder.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.mediaType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.mediaType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.mediaType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.sourceDocumentUtType.getter()
{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_222_1(Entity);
  return v2;
}

uint64_t StructuredQueryEntity.sourceDocumentUtType.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_122_5();
}

uint64_t (*StructuredQueryEntity.sourceDocumentUtType.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for StructuredQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t StructuredQueryEntity.location.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(Entity);
}

uint64_t key path setter for StructuredQueryEntity.app : StructuredQueryEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_7();
  v13 = OUTLINED_FUNCTION_64_0();
  outlined init with copy of ResourceBundle?(v13, v14, a5, a6);
  return a7(v7);
}

uint64_t StructuredQueryEntity.location.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_7();
  type metadata accessor for StructuredQueryEntity(0);
  v3 = OUTLINED_FUNCTION_115_6();
  outlined init with copy of ResourceBundle?(v3, v0, &_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  EntityProperty.wrappedValue.setter();
  StructuredQueryEntity.location.didset();
  v4 = OUTLINED_FUNCTION_34_11();
  return outlined destroy of IntentApplication?(v4, v5, &_s10OmniSearch19LocationQueryEntityVSgMR);
}

uint64_t StructuredQueryEntity.location.didset()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  Entity = type metadata accessor for LocationQueryEntity(0);
  v4 = *(Entity - 8);
  MEMORY[0x28223BE20](Entity);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StructuredQueryEntity(0);
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, Entity) == 1)
  {
    return outlined destroy of IntentApplication?(v2, &_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  }

  outlined init with take of StructuredQueryEntity(v2, v6);
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.stextension);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    MEMORY[0x25F8A1050](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch19LocationQueryEntityVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch19LocationQueryEntityVGMR);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25DBC8180;
  outlined init with copy of LocationQueryEntity(v6, v13 + v12);
  v14[1] = v13;
  EntityProperty.wrappedValue.setter();
  return outlined destroy of StructuredQueryEntity();
}

void (*StructuredQueryEntity.location.modify())(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  *OUTLINED_FUNCTION_32_1(v3) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch19LocationQueryEntityVSgMd, &_s10OmniSearch19LocationQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v1[1] = __swift_coroFrameAllocStub(v6);
  v1[2] = __swift_coroFrameAllocStub(v6);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = *(v0 + *(type metadata accessor for StructuredQueryEntity(0) + 116));
  EntityProperty.wrappedValue.getter();
  return StructuredQueryEntity.location.modify;
}

uint64_t StructuredQueryEntity.person.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  Entity = type metadata accessor for StructuredQueryEntity(v0);
  return OUTLINED_FUNCTION_66_7(Entity);
}

uint64_t StructuredQueryEntity.person.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_7();
  type metadata accessor for StructuredQueryEntity(0);
  v3 = OUTLINED_FUNCTION_115_6();
  outlined init with copy of ResourceBundle?(v3, v0, &_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  EntityProperty.wrappedValue.setter();
  StructuredQueryEntity.person.didset();
  v4 = OUTLINED_FUNCTION_34_11();
  return outlined destroy of IntentApplication?(v4, v5, &_s10OmniSearch17PersonQueryEntityVSgMR);
}

uint64_t StructuredQueryEntity.person.didset()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  Entity = type metadata accessor for PersonQueryEntity(0);
  v4 = *(Entity - 8);
  MEMORY[0x28223BE20](Entity);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StructuredQueryEntity(0);
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, Entity) == 1)
  {
    return outlined destroy of IntentApplication?(v2, &_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  }

  outlined init with take of StructuredQueryEntity(v2, v6);
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logging.stextension);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    MEMORY[0x25F8A1050](v11, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch17PersonQueryEntityVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch17PersonQueryEntityVGMR);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25DBC8180;
  outlined init with copy of LocationQueryEntity(v6, v13 + v12);
  v14[1] = v13;
  EntityProperty.wrappedValue.setter();
  return outlined destroy of StructuredQueryEntity();
}

void (*StructuredQueryEntity.person.modify())(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_4_12();
  v3 = __swift_coroFrameAllocStub(v2);
  *OUTLINED_FUNCTION_32_1(v3) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch17PersonQueryEntityVSgMd, &_s10OmniSearch17PersonQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  v1[1] = __swift_coroFrameAllocStub(v6);
  v1[2] = __swift_coroFrameAllocStub(v6);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = *(v0 + *(type metadata accessor for StructuredQueryEntity(0) + 120));
  EntityProperty.wrappedValue.getter();
  return StructuredQueryEntity.person.modify;
}

void StructuredQueryEntity.location.modify()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  outlined init with copy of ResourceBundle?((*v8)[3], (*v8)[2], v4, v2);
  v10 = v9[3];
  v11 = v9[1];
  v12 = v9[2];
  if (v7)
  {
    outlined init with copy of ResourceBundle?(v9[2], v9[1], v5, v3);
    v13 = EntityProperty.wrappedValue.setter();
    v1(v13);
    v14 = OUTLINED_FUNCTION_232();
    outlined destroy of IntentApplication?(v14, v15, v3);
  }

  else
  {
    v16 = EntityProperty.wrappedValue.setter();
    v1(v16);
  }

  outlined destroy of IntentApplication?(v10, v5, v3);
  free(v10);
  free(v12);
  free(v11);
  OUTLINED_FUNCTION_148();

  free(v17);
}

void StructuredQueryEntity.init()()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_16();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_4();
  v6 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_132_3();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v8, v9, v10, v6);
  v11 = OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_334(v11, v12, v13, v14);
  OUTLINED_FUNCTION_34_11();
  DisplayRepresentation.init(title:subtitle:image:)();
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v16 = Entity[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_214_1();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v16) = EntityProperty<>.init(title:)();
  v17 = Entity[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10FilterTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10FilterTypeOGSgGMR);
  OUTLINED_FUNCTION_204_4();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FilterType and conformance FilterType();
  *(v1 + v17) = OUTLINED_FUNCTION_225_2();
  v18 = Entity[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch13PreferredTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch13PreferredTypeOGSgGMR);
  OUTLINED_FUNCTION_121_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type PreferredType and conformance PreferredType();
  *(v1 + v18) = OUTLINED_FUNCTION_225_2();
  v19 = Entity[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch17TemporalReferenceOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch17TemporalReferenceOSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TemporalReference and conformance TemporalReference();
  *(v1 + v19) = OUTLINED_FUNCTION_225_2();
  v20 = Entity[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch11OrderByTimeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch11OrderByTimeOSgGMR);
  OUTLINED_FUNCTION_188_4();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type OrderByTime and conformance OrderByTime();
  *(v1 + v20) = OUTLINED_FUNCTION_225_2();
  v21 = Entity[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0aC6StatusOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0aC6StatusOSgGMR);
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_265_1();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type AppEntityStatus and conformance AppEntityStatus();
  *(v1 + v21) = OUTLINED_FUNCTION_225_2();
  v22 = Entity[11];
  v23 = OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_194_2(v23);
  *(v1 + v22) = EntityProperty<>.init(title:)();
  v24 = Entity[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_203_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v24) = EntityProperty<>.init(title:)();
  v25 = Entity[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch013LocationQueryC0VGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch013LocationQueryC0VGSgGMR);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_23_15();
  lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(v26, v27, &protocol conformance descriptor for LocationQueryEntity);
  *(v1 + v25) = EntityProperty<>.init(title:)();
  v28 = Entity[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_181_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v28) = EntityProperty<>.init(title:)();
  v29 = Entity[15];
  OUTLINED_FUNCTION_181_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v29) = EntityProperty<>.init(title:)();
  v30 = Entity[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch011PersonQueryC0VGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch011PersonQueryC0VGSgGMR);
  OUTLINED_FUNCTION_308();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_22_15();
  lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(v31, v32, &protocol conformance descriptor for PersonQueryEntity);
  *(v1 + v30) = EntityProperty<>.init(title:)();
  v33 = Entity[17];
  v34 = OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_194_2(v34);
  *(v1 + v33) = EntityProperty<>.init(title:)();
  v35 = Entity[18];
  OUTLINED_FUNCTION_289();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v35) = EntityProperty<>.init(title:)();
  v36 = Entity[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10SourceTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10SourceTypeOGSgGMR);
  OUTLINED_FUNCTION_259_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SourceType and conformance SourceType();
  *(v1 + v36) = OUTLINED_FUNCTION_225_2();
  v37 = Entity[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch12ContainsTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch12ContainsTypeOGSgGMR);
  OUTLINED_FUNCTION_189_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ContainsType and conformance ContainsType();
  *(v1 + v37) = OUTLINED_FUNCTION_225_2();
  v38 = Entity[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMd, &_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v38) = EntityProperty<>.init(title:)();
  v39 = Entity[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch13ExtractedTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch13ExtractedTypeOGSgGMR);
  OUTLINED_FUNCTION_255_1();
  OUTLINED_FUNCTION_121_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ExtractedType and conformance ExtractedType();
  *(v1 + v39) = OUTLINED_FUNCTION_225_2();
  v40 = Entity[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10ReturnTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10ReturnTypeOGSgGMR);
  OUTLINED_FUNCTION_256_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ReturnType and conformance ReturnType();
  *(v1 + v40) = OUTLINED_FUNCTION_225_2();
  v41 = Entity[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch10ObjectTypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch10ObjectTypeOSgGMR);
  OUTLINED_FUNCTION_260_1();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ObjectType and conformance ObjectType();
  *(v1 + v41) = OUTLINED_FUNCTION_225_2();
  v42 = Entity[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0C6UTTypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0C6UTTypeOSgGMR);
  v43 = OUTLINED_FUNCTION_257_2();
  OUTLINED_FUNCTION_106_2(v43);
  lazy protocol witness table accessor for type EntityUTType and conformance EntityUTType();
  OUTLINED_FUNCTION_34_11();
  *(v1 + v42) = EntityProperty<>.init(title:)();
  v44 = Entity[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch9SortOrderOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch9SortOrderOSgGMR);
  OUTLINED_FUNCTION_258_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
  *(v1 + v44) = OUTLINED_FUNCTION_225_2();
  v45 = Entity[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch9MediaTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch9MediaTypeOGSgGMR);
  OUTLINED_FUNCTION_254_0();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type MediaType and conformance MediaType();
  *(v1 + v45) = OUTLINED_FUNCTION_225_2();
  v46 = Entity[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0C6UTTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0C6UTTypeOGSgGMR);
  OUTLINED_FUNCTION_132_3();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_34_11();
  *(v1 + v46) = EntityProperty<>.init(title:)();
  v47 = Entity[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013LocationQueryC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013LocationQueryC0VSgGMR);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v47) = EntityProperty<>.init(title:)();
  v48 = Entity[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch011PersonQueryC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch011PersonQueryC0VSgGMR);
  OUTLINED_FUNCTION_308();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v48) = EntityProperty<>.init(title:)();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

unint64_t lazy protocol witness table accessor for type FilterType and conformance FilterType()
{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FilterType and conformance FilterType;
  if (!lazy protocol witness table cache variable for type FilterType and conformance FilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilterType and conformance FilterType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferredType and conformance PreferredType()
{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferredType and conformance PreferredType;
  if (!lazy protocol witness table cache variable for type PreferredType and conformance PreferredType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferredType and conformance PreferredType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TemporalReference and conformance TemporalReference()
{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference;
  if (!lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemporalReference and conformance TemporalReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OrderByTime and conformance OrderByTime()
{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime;
  if (!lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrderByTime and conformance OrderByTime);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppEntityStatus and conformance AppEntityStatus()
{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus;
  if (!lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppEntityStatus and conformance AppEntityStatus);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type SourceType and conformance SourceType()
{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SourceType and conformance SourceType;
  if (!lazy protocol witness table cache variable for type SourceType and conformance SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceType and conformance SourceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainsType and conformance ContainsType()
{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainsType and conformance ContainsType;
  if (!lazy protocol witness table cache variable for type ContainsType and conformance ContainsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainsType and conformance ContainsType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExtractedType and conformance ExtractedType()
{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType;
  if (!lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtractedType and conformance ExtractedType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReturnType and conformance ReturnType()
{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReturnType and conformance ReturnType;
  if (!lazy protocol witness table cache variable for type ReturnType and conformance ReturnType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReturnType and conformance ReturnType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ObjectType and conformance ObjectType()
{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectType and conformance ObjectType;
  if (!lazy protocol witness table cache variable for type ObjectType and conformance ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectType and conformance ObjectType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityUTType and conformance EntityUTType()
{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType;
  if (!lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityUTType and conformance EntityUTType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SortOrder and conformance SortOrder()
{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortOrder and conformance SortOrder;
  if (!lazy protocol witness table cache variable for type SortOrder and conformance SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOrder and conformance SortOrder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MediaType and conformance MediaType()
{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaType and conformance MediaType;
  if (!lazy protocol witness table cache variable for type MediaType and conformance MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaType and conformance MediaType);
  }

  return result;
}

unint64_t StructuredQueryEntity.CodingKeys.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

void StructuredQueryEntity.CodingKeys.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
    case 14:
      OUTLINED_FUNCTION_167_2();
      break;
    case 3:
      OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_265_1();
      break;
    case 6:
      OUTLINED_FUNCTION_168_3(0x6E4F6B636970);
      break;
    case 12:
      OUTLINED_FUNCTION_168_3(0x6D614E676174);
      break;
    default:
      return;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StructuredQueryEntity.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = StructuredQueryEntity.CodingKeys.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StructuredQueryEntity.CodingKeys()
{
  v1 = OUTLINED_FUNCTION_319();
  StructuredQueryEntity.CodingKeys.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StructuredQueryEntity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StructuredQueryEntity.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance StructuredQueryEntity.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = StructuredQueryEntity.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StructuredQueryEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StructuredQueryEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredQueryEntity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  v73 = v21;
  OUTLINED_FUNCTION_47_1();
  type metadata accessor for IntentApplication();
  OUTLINED_FUNCTION_14();
  v71 = v23;
  v72 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36();
  v70 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v26);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  v29 = v67 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch21StructuredQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch21StructuredQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMR);
  OUTLINED_FUNCTION_14();
  v31 = v30;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_218(v20, v20[3]);
  lazy protocol witness table accessor for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  Entity = type metadata accessor for StructuredQueryEntity(0);
  EntityProperty.wrappedValue.getter();
  v34 = v73;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_64_0();
    v36(v35);
  }

  else
  {
    v69 = v29;
    v73 = v31;
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_163_3();
    v75 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch10FilterTypeOGMd, &_sSay10OmniSearch10FilterTypeOGMR);
    lazy protocol witness table accessor for type [FilterType] and conformance <A> [A]();
    OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_173_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_163_3();
    v75 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch13PreferredTypeOGMd, &_sSay10OmniSearch13PreferredTypeOGMR);
    lazy protocol witness table accessor for type [PreferredType] and conformance <A> [A]();
    OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_173_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    OUTLINED_FUNCTION_249_2(v39);
    v75 = 0;
    v74 = 3;
    lazy protocol witness table accessor for type TemporalReference and conformance TemporalReference();
    OUTLINED_FUNCTION_173_3();
    v40 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_249_2(v40);
    v75 = 0;
    v74 = 4;
    lazy protocol witness table accessor for type OrderByTime and conformance OrderByTime();
    OUTLINED_FUNCTION_173_3();
    v41 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_249_2(v41);
    v75 = 0;
    v74 = 5;
    lazy protocol witness table accessor for type AppEntityStatus and conformance AppEntityStatus();
    OUTLINED_FUNCTION_173_3();
    v42 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_249_2(v42);
    LOBYTE(a10) = 6;
    OUTLINED_FUNCTION_173_3();
    v43 = KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_249_2(v43);
    v68 = a10;
    v75 = 7;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_193_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8]);
    OUTLINED_FUNCTION_149_5();
    OUTLINED_FUNCTION_173_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v67[2] = v44;

    OUTLINED_FUNCTION_249_2(v45);
    v75 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch19LocationQueryEntityVGMd, &_sSay10OmniSearch19LocationQueryEntityVGMR);
    lazy protocol witness table accessor for type [LocationQueryEntity] and conformance <A> [A]();
    OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_173_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    OUTLINED_FUNCTION_249_2(v46);
    v68 = Entity;
    OUTLINED_FUNCTION_163_3();
    v75 = 9;
    OUTLINED_FUNCTION_149_5();
    OUTLINED_FUNCTION_173_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v67[1] = v20;
    OUTLINED_FUNCTION_249_2(v47);
    OUTLINED_FUNCTION_163_3();
    v75 = 9;
    OUTLINED_FUNCTION_149_5();
    OUTLINED_FUNCTION_173_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    OUTLINED_FUNCTION_190_4(v48);
    OUTLINED_FUNCTION_163_3();
    v75 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch17PersonQueryEntityVGMd, &_sSay10OmniSearch17PersonQueryEntityVGMR);
    lazy protocol witness table accessor for type [PersonQueryEntity] and conformance <A> [A]();
    v49 = OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_169_4(v49);

    OUTLINED_FUNCTION_190_4(v50);
    OUTLINED_FUNCTION_163_3();
    v75 = 12;
    v51 = OUTLINED_FUNCTION_149_5();
    OUTLINED_FUNCTION_274_0(v51);

    OUTLINED_FUNCTION_190_4(v52);
    OUTLINED_FUNCTION_163_3();
    v75 = 13;
    v53 = OUTLINED_FUNCTION_149_5();
    OUTLINED_FUNCTION_274_0(v53);

    OUTLINED_FUNCTION_190_4(v54);
    OUTLINED_FUNCTION_163_3();
    v75 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch10SourceTypeOGMd, &_sSay10OmniSearch10SourceTypeOGMR);
    lazy protocol witness table accessor for type [SourceType] and conformance <A> [A]();
    v55 = OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_169_4(v55);

    OUTLINED_FUNCTION_190_4(v57);
    OUTLINED_FUNCTION_163_3();
    v75 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch12ContainsTypeOGMd, &_sSay10OmniSearch12ContainsTypeOGMR);
    lazy protocol witness table accessor for type [ContainsType] and conformance <A> [A]();
    v58 = OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_169_4(v58);

    v59 = v69;
    EntityProperty.wrappedValue.getter();
    if (__swift_getEnumTagSinglePayload(v59, 1, v72))
    {
      outlined destroy of IntentApplication?(v69, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    }

    else
    {
      v60 = v70;
      v61 = v71;
      v62 = v69;
      v63 = v72;
      (*(v71 + 16))(v70, v69, v72);
      v64 = outlined destroy of IntentApplication?(v62, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
      MEMORY[0x25F898B70](v64);
      (*(v61 + 8))(v60, v63);
    }

    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    OUTLINED_FUNCTION_190_4(v65);
    v75 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch13ExtractedTypeOGMd, &_sSay10OmniSearch13ExtractedTypeOGMR);
    lazy protocol witness table accessor for type [ExtractedType] and conformance <A> [A]();
    v66 = OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_169_4(v66);

    v56 = OUTLINED_FUNCTION_313();
    v38(v56, v37);
  }

  OUTLINED_FUNCTION_61_2();
}

unint64_t lazy protocol witness table accessor for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [FilterType] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch10FilterTypeOGMd, &_sSay10OmniSearch10FilterTypeOGMR);
    lazy protocol witness table accessor for type FilterType and conformance FilterType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch10FilterTypeOGMd, &_sSay10OmniSearch10FilterTypeOGMR);
    lazy protocol witness table accessor for type FilterType and conformance FilterType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch10FilterTypeOGMd, &_sSay10OmniSearch10FilterTypeOGMR);
    lazy protocol witness table accessor for type FilterType and conformance FilterType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FilterType] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PreferredType] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13PreferredTypeOGMd, &_sSay10OmniSearch13PreferredTypeOGMR);
    lazy protocol witness table accessor for type PreferredType and conformance PreferredType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13PreferredTypeOGMd, &_sSay10OmniSearch13PreferredTypeOGMR);
    lazy protocol witness table accessor for type PreferredType and conformance PreferredType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13PreferredTypeOGMd, &_sSay10OmniSearch13PreferredTypeOGMR);
    lazy protocol witness table accessor for type PreferredType and conformance PreferredType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PreferredType] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [LocationQueryEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch19LocationQueryEntityVGMd, &_sSay10OmniSearch19LocationQueryEntityVGMR);
    lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type LocationQueryEntity and conformance LocationQueryEntity, type metadata accessor for LocationQueryEntity, &protocol conformance descriptor for LocationQueryEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch19LocationQueryEntityVGMd, &_sSay10OmniSearch19LocationQueryEntityVGMR);
    lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type LocationQueryEntity and conformance LocationQueryEntity, type metadata accessor for LocationQueryEntity, &protocol conformance descriptor for LocationQueryEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch19LocationQueryEntityVGMd, &_sSay10OmniSearch19LocationQueryEntityVGMR);
    lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type LocationQueryEntity and conformance LocationQueryEntity, type metadata accessor for LocationQueryEntity, &protocol conformance descriptor for LocationQueryEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LocationQueryEntity] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PersonQueryEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch17PersonQueryEntityVGMd, &_sSay10OmniSearch17PersonQueryEntityVGMR);
    lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type PersonQueryEntity and conformance PersonQueryEntity, type metadata accessor for PersonQueryEntity, &protocol conformance descriptor for PersonQueryEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch17PersonQueryEntityVGMd, &_sSay10OmniSearch17PersonQueryEntityVGMR);
    lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type PersonQueryEntity and conformance PersonQueryEntity, type metadata accessor for PersonQueryEntity, &protocol conformance descriptor for PersonQueryEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch17PersonQueryEntityVGMd, &_sSay10OmniSearch17PersonQueryEntityVGMR);
    lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type PersonQueryEntity and conformance PersonQueryEntity, type metadata accessor for PersonQueryEntity, &protocol conformance descriptor for PersonQueryEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PersonQueryEntity] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SourceType] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch10SourceTypeOGMd, &_sSay10OmniSearch10SourceTypeOGMR);
    lazy protocol witness table accessor for type SourceType and conformance SourceType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch10SourceTypeOGMd, &_sSay10OmniSearch10SourceTypeOGMR);
    lazy protocol witness table accessor for type SourceType and conformance SourceType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch10SourceTypeOGMd, &_sSay10OmniSearch10SourceTypeOGMR);
    lazy protocol witness table accessor for type SourceType and conformance SourceType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SourceType] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ContainsType] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch12ContainsTypeOGMd, &_sSay10OmniSearch12ContainsTypeOGMR);
    lazy protocol witness table accessor for type ContainsType and conformance ContainsType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch12ContainsTypeOGMd, &_sSay10OmniSearch12ContainsTypeOGMR);
    lazy protocol witness table accessor for type ContainsType and conformance ContainsType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch12ContainsTypeOGMd, &_sSay10OmniSearch12ContainsTypeOGMR);
    lazy protocol witness table accessor for type ContainsType and conformance ContainsType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContainsType] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ExtractedType] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13ExtractedTypeOGMd, &_sSay10OmniSearch13ExtractedTypeOGMR);
    lazy protocol witness table accessor for type ExtractedType and conformance ExtractedType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13ExtractedTypeOGMd, &_sSay10OmniSearch13ExtractedTypeOGMR);
    lazy protocol witness table accessor for type ExtractedType and conformance ExtractedType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13ExtractedTypeOGMd, &_sSay10OmniSearch13ExtractedTypeOGMR);
    lazy protocol witness table accessor for type ExtractedType and conformance ExtractedType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ExtractedType] and conformance <A> [A]);
  }

  return result;
}

void StructuredQueryEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  v112 = v22;
  v113 = v20;
  v92 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  v25 = OUTLINED_FUNCTION_114(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  v91 = v26;
  MEMORY[0x28223BE20](v27);
  v90 = &v88 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch21StructuredQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch21StructuredQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMR);
  OUTLINED_FUNCTION_14();
  v108 = v29;
  v109 = v30;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  v111 = &v88 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v33);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_23_1();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v35);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_21();
  v37 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36();
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v40 = (Entity - 8);
  MEMORY[0x28223BE20](Entity);
  OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_132_3();
  LocalizedStringResource.init(stringLiteral:)();
  v41 = OUTLINED_FUNCTION_58();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  type metadata accessor for DisplayRepresentation.Image();
  v44 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  DisplayRepresentation.init(title:subtitle:image:)();
  v48 = v40[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySbGMd, &_s10AppIntents14EntityPropertyCySbGMR);
  OUTLINED_FUNCTION_214_1();
  LocalizedStringResource.init(stringLiteral:)();
  v107 = EntityProperty<>.init(title:)();
  *(v21 + v48) = v107;
  v49 = v40[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10FilterTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10FilterTypeOGSgGMR);
  OUTLINED_FUNCTION_204_4();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type FilterType and conformance FilterType();
  v106 = OUTLINED_FUNCTION_237_2();
  *(v21 + v49) = v106;
  v50 = v40[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch13PreferredTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch13PreferredTypeOGSgGMR);
  OUTLINED_FUNCTION_121_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type PreferredType and conformance PreferredType();
  v105 = OUTLINED_FUNCTION_237_2();
  *(v21 + v50) = v105;
  v51 = v40[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch17TemporalReferenceOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch17TemporalReferenceOSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type TemporalReference and conformance TemporalReference();
  v104 = OUTLINED_FUNCTION_237_2();
  *(v21 + v51) = v104;
  v52 = v40[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch11OrderByTimeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch11OrderByTimeOSgGMR);
  OUTLINED_FUNCTION_188_4();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type OrderByTime and conformance OrderByTime();
  v103 = OUTLINED_FUNCTION_237_2();
  *(v21 + v52) = v103;
  v53 = v40[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0aC6StatusOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0aC6StatusOSgGMR);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_265_1();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type AppEntityStatus and conformance AppEntityStatus();
  v102 = OUTLINED_FUNCTION_237_2();
  *(v21 + v53) = v102;
  v54 = v40[13];
  OUTLINED_FUNCTION_295();
  LocalizedStringResource.init(stringLiteral:)();
  v101 = EntityProperty<>.init(title:)();
  *(v21 + v54) = v101;
  v55 = v40[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  OUTLINED_FUNCTION_203_3();
  LocalizedStringResource.init(stringLiteral:)();
  v100 = EntityProperty<>.init(title:)();
  *(v21 + v55) = v100;
  v56 = v40[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch013LocationQueryC0VGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch013LocationQueryC0VGSgGMR);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_23_15();
  v110 = lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(v57, v58, &protocol conformance descriptor for LocationQueryEntity);
  v99 = EntityProperty<>.init(title:)();
  *(v21 + v56) = v99;
  v59 = v40[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  OUTLINED_FUNCTION_181_3();
  LocalizedStringResource.init(stringLiteral:)();
  v98 = EntityProperty<>.init(title:)();
  *(v21 + v59) = v98;
  v60 = v40[17];
  OUTLINED_FUNCTION_181_3();
  LocalizedStringResource.init(stringLiteral:)();
  v97 = EntityProperty<>.init(title:)();
  *(v21 + v60) = v97;
  v61 = v40[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch011PersonQueryC0VGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch011PersonQueryC0VGSgGMR);
  OUTLINED_FUNCTION_308();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_22_15();
  lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(v62, v63, &protocol conformance descriptor for PersonQueryEntity);
  v96 = EntityProperty<>.init(title:)();
  *(v21 + v61) = v96;
  v64 = v40[19];
  OUTLINED_FUNCTION_293();
  LocalizedStringResource.init(stringLiteral:)();
  v95 = EntityProperty<>.init(title:)();
  *(v21 + v64) = v95;
  v65 = v40[20];
  OUTLINED_FUNCTION_289();
  LocalizedStringResource.init(stringLiteral:)();
  v94 = EntityProperty<>.init(title:)();
  *(v21 + v65) = v94;
  v66 = v40[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10SourceTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10SourceTypeOGSgGMR);
  OUTLINED_FUNCTION_259_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SourceType and conformance SourceType();
  v93 = OUTLINED_FUNCTION_237_2();
  *(v21 + v66) = v93;
  v67 = v40[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch12ContainsTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch12ContainsTypeOGSgGMR);
  OUTLINED_FUNCTION_189_3();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ContainsType and conformance ContainsType();
  v88 = OUTLINED_FUNCTION_237_2();
  *(v21 + v67) = v88;
  v68 = v40[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMd, &_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v89 = EntityProperty<>.init(title:)();
  *(v21 + v68) = v89;
  v69 = v40[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch13ExtractedTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch13ExtractedTypeOGSgGMR);
  OUTLINED_FUNCTION_255_1();
  OUTLINED_FUNCTION_121_6();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ExtractedType and conformance ExtractedType();
  v70 = OUTLINED_FUNCTION_237_2();
  *(v21 + v69) = v70;
  v71 = v40[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch10ReturnTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch10ReturnTypeOGSgGMR);
  OUTLINED_FUNCTION_256_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ReturnType and conformance ReturnType();
  *(v21 + v71) = OUTLINED_FUNCTION_237_2();
  v72 = v40[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch10ObjectTypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch10ObjectTypeOSgGMR);
  OUTLINED_FUNCTION_260_1();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type ObjectType and conformance ObjectType();
  *(v21 + v72) = OUTLINED_FUNCTION_237_2();
  v73 = v40[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0C6UTTypeOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0C6UTTypeOSgGMR);
  OUTLINED_FUNCTION_257_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type EntityUTType and conformance EntityUTType();
  *(v21 + v73) = EntityProperty<>.init(title:)();
  v74 = v40[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch9SortOrderOSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch9SortOrderOSgGMR);
  OUTLINED_FUNCTION_258_2();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SortOrder and conformance SortOrder();
  *(v21 + v74) = OUTLINED_FUNCTION_237_2();
  v75 = v40[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch9MediaTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch9MediaTypeOGSgGMR);
  OUTLINED_FUNCTION_254_0();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type MediaType and conformance MediaType();
  *(v21 + v75) = OUTLINED_FUNCTION_237_2();
  v76 = v40[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySay10OmniSearch0C6UTTypeOGSgGMd, &_s10AppIntents14EntityPropertyCySay10OmniSearch0C6UTTypeOGSgGMR);
  OUTLINED_FUNCTION_132_3();
  LocalizedStringResource.init(stringLiteral:)();
  *(v21 + v76) = EntityProperty<>.init(title:)();
  v77 = v112;
  v78 = v40[31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch013LocationQueryC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch013LocationQueryC0VSgGMR);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v21 + v78) = EntityProperty<>.init(title:)();
  v79 = v40[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch011PersonQueryC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch011PersonQueryC0VSgGMR);
  OUTLINED_FUNCTION_308();
  LocalizedStringResource.init(stringLiteral:)();
  *(v21 + v79) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_218(v77, v77[3]);
  lazy protocol witness table accessor for type StructuredQueryEntity.CodingKeys and conformance StructuredQueryEntity.CodingKeys();
  v80 = v113;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v80)
  {
    outlined destroy of StructuredQueryEntity();
  }

  else
  {
    v113 = v70;
    v81 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_311(v81 & 1);
    EntityProperty.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch10FilterTypeOGMd, &_sSay10OmniSearch10FilterTypeOGMR);
    v114 = 1;
    lazy protocol witness table accessor for type [FilterType] and conformance <A> [A]();
    OUTLINED_FUNCTION_73_7();
    OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_196_3();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch13PreferredTypeOGMd, &_sSay10OmniSearch13PreferredTypeOGMR);
    v114 = 2;
    lazy protocol witness table accessor for type [PreferredType] and conformance <A> [A]();
    OUTLINED_FUNCTION_73_7();
    OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_196_3();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    v114 = 3;
    lazy protocol witness table accessor for type TemporalReference and conformance TemporalReference();
    OUTLINED_FUNCTION_147_4();
    OUTLINED_FUNCTION_196_3();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_248_1();
    EntityProperty.wrappedValue.setter();
    v114 = 4;
    lazy protocol witness table accessor for type OrderByTime and conformance OrderByTime();
    OUTLINED_FUNCTION_147_4();
    OUTLINED_FUNCTION_196_3();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_248_1();
    EntityProperty.wrappedValue.setter();
    v114 = 5;
    lazy protocol witness table accessor for type AppEntityStatus and conformance AppEntityStatus();
    OUTLINED_FUNCTION_147_4();
    OUTLINED_FUNCTION_196_3();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_248_1();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_311(6);
    OUTLINED_FUNCTION_196_3();
    v82 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_311(v82 & 1);
    EntityProperty.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v114 = 7;
    OUTLINED_FUNCTION_180_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808]);
    OUTLINED_FUNCTION_73_7();
    OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_196_3();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch19LocationQueryEntityVGMd, &_sSay10OmniSearch19LocationQueryEntityVGMR);
    v114 = 8;
    lazy protocol witness table accessor for type [LocationQueryEntity] and conformance <A> [A]();
    OUTLINED_FUNCTION_147_4();
    OUTLINED_FUNCTION_196_3();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    v114 = 9;
    OUTLINED_FUNCTION_73_7();
    OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_196_3();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    v114 = 10;
    OUTLINED_FUNCTION_46_13();
    OUTLINED_FUNCTION_202_4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch17PersonQueryEntityVGMd, &_sSay10OmniSearch17PersonQueryEntityVGMR);
    v114 = 11;
    lazy protocol witness table accessor for type [PersonQueryEntity] and conformance <A> [A]();
    OUTLINED_FUNCTION_147_4();
    OUTLINED_FUNCTION_202_4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    v114 = 12;
    OUTLINED_FUNCTION_46_13();
    OUTLINED_FUNCTION_202_4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    v114 = 13;
    OUTLINED_FUNCTION_46_13();
    OUTLINED_FUNCTION_202_4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch10SourceTypeOGMd, &_sSay10OmniSearch10SourceTypeOGMR);
    v114 = 14;
    lazy protocol witness table accessor for type [SourceType] and conformance <A> [A]();
    OUTLINED_FUNCTION_46_13();
    OUTLINED_FUNCTION_202_4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch12ContainsTypeOGMd, &_sSay10OmniSearch12ContainsTypeOGMR);
    v114 = 15;
    lazy protocol witness table accessor for type [ContainsType] and conformance <A> [A]();
    OUTLINED_FUNCTION_46_13();
    OUTLINED_FUNCTION_202_4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_311(16);
    OUTLINED_FUNCTION_202_4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v83)
    {
      v84 = v90;
      IntentApplication.init(_:)();
      v85 = type metadata accessor for IntentApplication();
      __swift_storeEnumTagSinglePayload(v84, 0, 1, v85);
      outlined init with copy of ResourceBundle?(v84, v91, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
      EntityProperty.wrappedValue.setter();
      outlined destroy of IntentApplication?(v84, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch13ExtractedTypeOGMd, &_sSay10OmniSearch13ExtractedTypeOGMR);
    v114 = 17;
    lazy protocol witness table accessor for type [ExtractedType] and conformance <A> [A]();
    OUTLINED_FUNCTION_46_13();
    OUTLINED_FUNCTION_202_4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_57_8();
    EntityProperty.wrappedValue.setter();
    v86 = OUTLINED_FUNCTION_294();
    v87(v86);
    outlined init with take of StructuredQueryEntity(v21, v92);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  OUTLINED_FUNCTION_61_2();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance StructuredQueryEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type StructuredQueryEntity and conformance StructuredQueryEntity, type metadata accessor for StructuredQueryEntity, &protocol conformance descriptor for StructuredQueryEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance StructuredQueryEntity(uint64_t a1)
{
  lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type StructuredQueryEntity and conformance StructuredQueryEntity, type metadata accessor for StructuredQueryEntity, &protocol conformance descriptor for StructuredQueryEntity);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance StructuredQueryEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type StructuredQueryEntity and conformance StructuredQueryEntity, type metadata accessor for StructuredQueryEntity, &protocol conformance descriptor for StructuredQueryEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance StructuredQueryEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type StructuredQueryEntity and conformance StructuredQueryEntity, type metadata accessor for StructuredQueryEntity, &protocol conformance descriptor for StructuredQueryEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t LocationQueryEntity.unspecified.getter()
{
  type metadata accessor for LocationQueryEntity(0);
  OUTLINED_FUNCTION_17_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t LocationQueryEntity.unspecified.setter()
{
  OUTLINED_FUNCTION_275_0();
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*LocationQueryEntity.unspecified.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for LocationQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t LocationQueryEntity.arrival.getter()
{
  type metadata accessor for LocationQueryEntity(0);
  OUTLINED_FUNCTION_11_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t LocationQueryEntity.arrival.setter()
{
  OUTLINED_FUNCTION_275_0();
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*LocationQueryEntity.arrival.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for LocationQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t LocationQueryEntity.departure.getter()
{
  type metadata accessor for LocationQueryEntity(0);
  OUTLINED_FUNCTION_10_9();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for LocationQueryEntity.unspecified : LocationQueryEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_34_11();
  return a5(v6);
}

uint64_t LocationQueryEntity.departure.setter()
{
  OUTLINED_FUNCTION_275_0();
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*LocationQueryEntity.departure.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for LocationQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t LocationQueryEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_16();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_4();
  v6 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_251_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v8, v9, v10, v6);
  v11 = OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_334(v11, v12, v13, v14);
  OUTLINED_FUNCTION_34_11();
  DisplayRepresentation.init(title:subtitle:image:)();
  Entity = type metadata accessor for LocationQueryEntity(0);
  v16 = Entity[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_5_23();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v16) = EntityProperty<>.init(title:)();
  v17 = Entity[6];
  v18 = OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_106_2(v18);
  *(a1 + v17) = EntityProperty<>.init(title:)();
  v19 = Entity[7];
  OUTLINED_FUNCTION_82_5();
  LocalizedStringResource.init(stringLiteral:)();
  result = EntityProperty<>.init(title:)();
  *(a1 + v19) = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationQueryEntity.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25D86E550(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LocationQueryEntity.CodingKeys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = sub_25D86E59C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance LocationQueryEntity.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_25D86E550(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocationQueryEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LocationQueryEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationQueryEntity.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch19LocationQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch19LocationQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_218(a1, a1[3]);
  v4 = lazy protocol witness table accessor for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys();
  OUTLINED_FUNCTION_35_8(&unk_286F7F018, v5, v4);
  Entity = type metadata accessor for LocationQueryEntity(0);
  OUTLINED_FUNCTION_280_0(Entity);
  v7 = v16;
  LOBYTE(v16) = 0;
  OUTLINED_FUNCTION_270_0(v7);
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_1_28();
    v11(v10);
  }

  else
  {

    OUTLINED_FUNCTION_280_0(v8);
    v9 = v16;
    LOBYTE(v16) = 1;
    OUTLINED_FUNCTION_270_0(v9);

    OUTLINED_FUNCTION_280_0(v13);
    OUTLINED_FUNCTION_270_0(v16);
    v14 = OUTLINED_FUNCTION_1_28();
    v15(v14);
  }
}

unint64_t lazy protocol witness table accessor for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys);
  }

  return result;
}

void LocationQueryEntity.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v26 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch19LocationQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch19LocationQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_24();
  v10 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  Entity = type metadata accessor for LocationQueryEntity(0);
  v13 = (Entity - 8);
  MEMORY[0x28223BE20](Entity);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_251_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  type metadata accessor for DisplayRepresentation.Image();
  v17 = OUTLINED_FUNCTION_58();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  DisplayRepresentation.init(title:subtitle:image:)();
  v21 = v13[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_5_23();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v21) = EntityProperty<>.init(title:)();
  v22 = v13[8];
  OUTLINED_FUNCTION_284();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v22) = EntityProperty<>.init(title:)();
  v23 = v13[9];
  OUTLINED_FUNCTION_82_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v23) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_218(v3, v3[3]);
  lazy protocol witness table accessor for type LocationQueryEntity.CodingKeys and conformance LocationQueryEntity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    OUTLINED_FUNCTION_164_2();
    outlined destroy of StructuredQueryEntity();
  }

  else
  {
    OUTLINED_FUNCTION_252_2();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_252_2();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    OUTLINED_FUNCTION_252_2();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    v24 = OUTLINED_FUNCTION_232();
    v25(v24);
    outlined init with take of StructuredQueryEntity(v1, v26);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_61_2();
}

uint64_t outlined destroy of StructuredQueryEntity()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2(v1);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t outlined init with take of StructuredQueryEntity(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

{
  Entity = type metadata accessor for StructuredQueryEntity(0);
  (*(*(Entity - 8) + 32))(a2, a1, Entity);
  return a2;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance LocationQueryEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type LocationQueryEntity and conformance LocationQueryEntity, type metadata accessor for LocationQueryEntity, &protocol conformance descriptor for LocationQueryEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance LocationQueryEntity(uint64_t a1)
{
  lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type LocationQueryEntity and conformance LocationQueryEntity, type metadata accessor for LocationQueryEntity, &protocol conformance descriptor for LocationQueryEntity);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance LocationQueryEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type LocationQueryEntity and conformance LocationQueryEntity, type metadata accessor for LocationQueryEntity, &protocol conformance descriptor for LocationQueryEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance LocationQueryEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocationQueryEntity and conformance LocationQueryEntity(&lazy protocol witness table cache variable for type LocationQueryEntity and conformance LocationQueryEntity, type metadata accessor for LocationQueryEntity, &protocol conformance descriptor for LocationQueryEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

double key path getter for PersonQueryEntity.unspecified : PersonQueryEntity@<D0>(_OWORD *a1@<X8>)
{
  PersonQueryEntity.unspecified.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t PersonQueryEntity.unspecified.setter()
{
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_17_9();
  return OUTLINED_FUNCTION_331();
}

uint64_t (*PersonQueryEntity.unspecified.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for PersonQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

double key path getter for PersonQueryEntity.sender : PersonQueryEntity@<D0>(_OWORD *a1@<X8>)
{
  PersonQueryEntity.sender.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t PersonQueryEntity.sender.setter()
{
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_11_9();
  return OUTLINED_FUNCTION_331();
}

uint64_t (*PersonQueryEntity.sender.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for PersonQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

double key path getter for PersonQueryEntity.receiver : PersonQueryEntity@<D0>(_OWORD *a1@<X8>)
{
  PersonQueryEntity.receiver.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t PersonQueryEntity.receiver.setter()
{
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_10_9();
  return OUTLINED_FUNCTION_331();
}

uint64_t (*PersonQueryEntity.receiver.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for PersonQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t PersonQueryEntity.oneself.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for PersonQueryEntity(v0);
  OUTLINED_FUNCTION_216_2();
  return EntityProperty.wrappedValue.getter();
}

double key path getter for PersonQueryEntity.oneself : PersonQueryEntity@<D0>(_OWORD *a1@<X8>)
{
  PersonQueryEntity.oneself.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for PersonQueryEntity.unspecified : PersonQueryEntity(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  outlined copy of Person?(v8[0], v6);
  return a5(v8);
}

uint64_t PersonQueryEntity.oneself.setter()
{
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_216_2();
  return OUTLINED_FUNCTION_331();
}

uint64_t (*PersonQueryEntity.oneself.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for PersonQueryEntity(v3);
  OUTLINED_FUNCTION_115_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t PersonQueryEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_4();
  v7 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_92_4();
  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_265_1();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v9, v10, v11, v7);
  v12 = OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_334(v12, v13, v14, v15);
  OUTLINED_FUNCTION_34_11();
  DisplayRepresentation.init(title:subtitle:image:)();
  v16 = *(OUTLINED_FUNCTION_264_1() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch6PersonVSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch6PersonVSgGMR);
  OUTLINED_FUNCTION_5_23();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type Person and conformance Person();
  OUTLINED_FUNCTION_54_0();
  *(a1 + v16) = EntityProperty<>.init(title:)();
  v17 = v1[6];
  OUTLINED_FUNCTION_134_5();
  OUTLINED_FUNCTION_54_0();
  *(a1 + v17) = EntityProperty<>.init(title:)();
  v18 = v1[7];
  v19 = OUTLINED_FUNCTION_84_8();
  OUTLINED_FUNCTION_194_2(v19);
  OUTLINED_FUNCTION_54_0();
  *(a1 + v18) = EntityProperty<>.init(title:)();
  v20 = v1[8];
  v21 = OUTLINED_FUNCTION_99_8();
  OUTLINED_FUNCTION_106_2(v21);
  OUTLINED_FUNCTION_54_0();
  result = EntityProperty<>.init(title:)();
  *(a1 + v20) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Person and conformance Person()
{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Person and conformance Person;
  if (!lazy protocol witness table cache variable for type Person and conformance Person)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Person and conformance Person);
  }

  return result;
}

uint64_t PersonQueryEntity.anyRole.getter()
{
  v1 = OUTLINED_FUNCTION_113();
  type metadata accessor for PersonQueryEntity(v1);
  OUTLINED_FUNCTION_17_9();
  result = EntityProperty.wrappedValue.getter();
  v3 = v7;
  if (v7)
  {
    v4 = v8;
  }

  else
  {
    result = EntityProperty.wrappedValue.getter();
    v3 = v5;
    if (!v5)
    {
      return EntityProperty.wrappedValue.getter();
    }

    v4 = v6;
  }

  *v0 = v3;
  v0[1] = v4;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PersonQueryEntity.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25D86E5E4(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PersonQueryEntity.CodingKeys()
{
  v1 = OUTLINED_FUNCTION_319();
  result = sub_25D86E630(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonQueryEntity.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_25D86E5E4(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonQueryEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonQueryEntity.CodingKeys and conformance PersonQueryEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonQueryEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonQueryEntity.CodingKeys and conformance PersonQueryEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonQueryEntity.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch17PersonQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch17PersonQueryEntityV10CodingKeys33_DC14DD2758B265C8963A9641D886A48FLLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_218(a1, a1[3]);
  v4 = lazy protocol witness table accessor for type PersonQueryEntity.CodingKeys and conformance PersonQueryEntity.CodingKeys();
  OUTLINED_FUNCTION_35_8(&unk_286F7EF88, v5, v4);
  Entity = type metadata accessor for PersonQueryEntity(0);
  OUTLINED_FUNCTION_280_0(Entity);
  v12 = v13;
  lazy protocol witness table accessor for type Person and conformance Person();
  OUTLINED_FUNCTION_155_5();
  if (!v1)
  {
    v7 = outlined consume of Person?(v13, *(&v13 + 1));
    OUTLINED_FUNCTION_280_0(v7);
    OUTLINED_FUNCTION_155_5();
    v8 = outlined consume of Person?(v13, *(&v13 + 1));
    OUTLINED_FUNCTION_280_0(v8);
    v12 = v13;
    OUTLINED_FUNCTION_155_5();
  }

  outlined consume of Person?(v12, *(&v12 + 1));
  v9 = OUTLINED_FUNCTION_1_28();
  return v10(v9);
}