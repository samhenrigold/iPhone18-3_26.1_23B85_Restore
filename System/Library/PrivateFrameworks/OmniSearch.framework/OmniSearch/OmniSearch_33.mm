uint64_t storeEnumTagSinglePayload for People(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_49(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_51(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_49(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_17_39()
{
  v2 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_1((v0 - 128), v2);
}

uint64_t OUTLINED_FUNCTION_29_23()
{

  return type metadata accessor for StructuredQueryEntity(0);
}

double OUTLINED_FUNCTION_30_28()
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_32_32()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_34_30()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *OUTLINED_FUNCTION_37_22()
{
  v2 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_1((v0 - 128), v2);
}

void OUTLINED_FUNCTION_39_25(uint64_t a1@<X8>)
{
  *(a1 - 24) = v1;
  *(a1 - 16) = v2;
  *(a1 - 8) = 0;
}

void OUTLINED_FUNCTION_45_20()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_46_24(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t OUTLINED_FUNCTION_49_23(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_50_18(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

void *OUTLINED_FUNCTION_65_21()
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_66_17()
{
}

void *OUTLINED_FUNCTION_68_19()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 120), v0);
}

uint64_t OUTLINED_FUNCTION_69_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t OUTLINED_FUNCTION_70_14()
{
}

uint64_t specialized AppEntity.propertyDescription.getter(uint64_t (*a1)(void, __n128), void (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v29 = a4;
  v8 = type metadata accessor for Mirror();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  *(&v33 + 1) = v15;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v32);
  _s10OmniSearch0B6ResultVWOcTm_11(v4, boxed_opaque_existential_1Tm, a2);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v10 + 8))(v14, v8);
  dispatch thunk of _AnySequenceBox._makeIterator()();
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!*(&v34 + 1))
    {
      break;
    }

    v30 = v32;
    v31[0] = v33;
    v31[1] = v34;
    v18 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    if (*(&v18 + 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
        v17 = v21;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1);
        v17 = v22;
      }

      *(v17 + 16) = v20 + 1;
      *(v17 + 16 * v20 + 32) = v18;
    }
  }

  *&v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v23 = BidirectionalCollection<>.joined(separator:)();
  v25 = v24;

  *&v32 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, v29);
  *&v32 = String.init<A>(describing:)();
  *(&v32 + 1) = v26;
  MEMORY[0x25F89F6C0](2314, 0xE200000000000000);
  MEMORY[0x25F89F6C0](v23, v25);

  return v32;
}

uint64_t LLMSearchResult.init(_:)()
{

  type metadata accessor for LLMSearchResult();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t LLMSearchResult.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v245 = a2;
  v246 = a1;
  v213 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v239 = &v211 - v6;
  v240 = type metadata accessor for IdCardEntity(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v8);
  v226 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v225 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_28_2(&v211 - v12);
  v215 = type metadata accessor for SearchPreExtractedEventStandardRepresentation(v13);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch11EventEntityVSgMd, &_s10OmniSearch11EventEntityVSgMR);
  OUTLINED_FUNCTION_114(v16);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  v241 = &v211 - v18;
  v242 = type metadata accessor for EventEntity(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes0B10ToolDialogVSgMd, &_s15OmniSearchTypes0B10ToolDialogVSgMR);
  OUTLINED_FUNCTION_114(v21);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v22);
  v24 = OUTLINED_FUNCTION_28_2(&v211 - v23);
  v25 = type metadata accessor for SearchResultItem(v24);
  v26 = OUTLINED_FUNCTION_114(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v29 = OUTLINED_FUNCTION_114(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  v33 = OUTLINED_FUNCTION_28_2(&v211 - v32);
  v217 = type metadata accessor for SearchSpotlightStandardRepresentation(v33);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v37 = OUTLINED_FUNCTION_114(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  v41 = (&v211 - v40);
  v243 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_14();
  v238 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15_4(&v211 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v50);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v51);
  v53 = &v211 - v52;
  v54 = type metadata accessor for SearchAppEntity(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_3();
  v57 = OUTLINED_FUNCTION_28_2(v56);
  v234 = type metadata accessor for SearchResult(v57);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v58);
  v60 = &v211 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v62 = OUTLINED_FUNCTION_114(v61);
  MEMORY[0x28223BE20](v62);
  v64 = &v211 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v67 = &v211 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = &v211 - v69;
  MEMORY[0x28223BE20](v71);
  v73 = &v211 - v72;
  v244 = type metadata accessor for LLMSearchResult();
  OUTLINED_FUNCTION_14();
  v235 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v76);
  _s10OmniSearch0B6ResultVWOcTm_11(v246, v60, type metadata accessor for SearchResult);
  SearchEntity.init(result:)(v60);
  v77 = v73;
  outlined init with copy of Date?(v73, v70, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  v78 = type metadata accessor for SearchEntity(0);
  if (__swift_getEnumTagSinglePayload(v70, 1, v78) == 1)
  {
    outlined destroy of IntentApplication?(v70, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v54);
LABEL_5:
    outlined destroy of IntentApplication?(v53, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
    v107 = v243;
    goto LABEL_6;
  }

  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_4_61();
  _s10OmniSearch0B6ResultVWOhTm_10(v70, v82);
  OUTLINED_FUNCTION_166(v53, 1, v54);
  if (v108)
  {
    goto LABEL_5;
  }

  v106 = v237;
  outlined init with take of IdCardEntity(v53, v237, type metadata accessor for SearchAppEntity);
  _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD0buX0V_Tt2g5(v106, 0xD000000000000028, 0x800000025DBF6C30, v41);
  v107 = v243;
  OUTLINED_FUNCTION_166(v41, 1, v243);
  if (!v108)
  {
    v119 = v238;
    v120 = v231;
    (*(v238 + 32))(v231, v41, v107);
    v121 = v232;
    v122 = v106;
    SearchAppEntity.convertToSystemIntentValue()();
    EntityProperty.wrappedValue.getter();
    v123 = v248[0];
    v124 = v248[1];
    (*(v119 + 16))(v230, v120, v107);
    v249 = v217;
    v250 = lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation, type metadata accessor for SearchSpotlightStandardRepresentation, &protocol conformance descriptor for SearchSpotlightStandardRepresentation);
    v251 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation);
    v252 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v248);
    _s10OmniSearch0B6ResultVWOcTm_11(v121, boxed_opaque_existential_1Tm, type metadata accessor for SearchSpotlightStandardRepresentation);
    v126 = v218;
    outlined init with copy of Date?(v122 + *(v54 + 40), v218, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_166(v126, 1, v234);
    if (v127)
    {
      outlined destroy of IntentApplication?(v126, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_5_53();
      v164 = v219;
      _s10OmniSearch0B6ResultVWOcTm_11(v126, v219, v165);
      OUTLINED_FUNCTION_0_95();
      _s10OmniSearch0B6ResultVWOhTm_10(v126, v166);
      SearchResultItem.associatedValue.getter(&v247);
      OUTLINED_FUNCTION_25_31();
      v167 = OUTLINED_FUNCTION_16_41();
      v168(v167);
      OUTLINED_FUNCTION_2_71();
      _s10OmniSearch0B6ResultVWOhTm_10(v164, v169);
      __swift_destroy_boxed_opaque_existential_1Tm(&v247);
    }

    v170 = v77;
    type metadata accessor for SearchToolDialog();
    v171 = v236;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
    OUTLINED_FUNCTION_7_50();
    OUTLINED_FUNCTION_15_42(v123, v124, v176, v177);
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v246, v178);
    _s10OmniSearch0B6ResultVWOhTm_10(v232, type metadata accessor for SearchSpotlightStandardRepresentation);
    (*(v119 + 8))(v231, v107);
    outlined destroy of IntentApplication?(v170, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_12_46();
    v180 = &v254;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_12_46();
  _s10OmniSearch0B6ResultVWOhTm_10(v106, v109);
  outlined destroy of IntentApplication?(v41, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
LABEL_6:
  v83 = v73;
  outlined init with copy of Date?(v73, v67, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_166(v67, 1, v78);
  if (v108)
  {
    outlined destroy of IntentApplication?(v67, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v88 = v241;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
LABEL_11:
    v91 = &_s10OmniSearch11EventEntityVSgMd;
    v92 = &_s10OmniSearch11EventEntityVSgMR;
    v93 = v88;
    goto LABEL_12;
  }

  v88 = v241;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_4_61();
  _s10OmniSearch0B6ResultVWOhTm_10(v67, v89);
  OUTLINED_FUNCTION_166(v88, 1, v242);
  if (v90)
  {
    goto LABEL_11;
  }

  v110 = v233;
  outlined init with take of IdCardEntity(v88, v233, type metadata accessor for EventEntity);
  v111 = v227;
  _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD05EventX0V_Tt2g5(v110, 0xD000000000000028, 0x800000025DBF6C30, v227);
  OUTLINED_FUNCTION_166(v111, 1, v107);
  if (!v112)
  {
    v128 = v238;
    v129 = v229;
    (*(v238 + 32))(v229, v111, v107);
    EntityProperty.wrappedValue.getter();
    v130 = v248[0];
    v131 = v215;
    v132 = v110;
    v133 = v110 + *(v242 + 56);
    v134 = *(v242 + 56);
    v135 = v216;
    outlined init with copy of Date?(v133, &v216[*(v215 + 20)], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v136 = *(v132 + 72);
    v137 = *(v132 + 80);
    *v135 = v130;
    v138 = &v135[*(v131 + 24)];
    *v138 = v136;
    v138[1] = v137;
    outlined copy of Data?(v136, v137);
    lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity, type metadata accessor for EventEntity, &protocol conformance descriptor for EventEntity);
    UUID.init()();
    v139 = UUID.uuidString.getter();
    v141 = OUTLINED_FUNCTION_18_27(v139, v140);
    v142(v141);
    v144 = *(v128 + 16);
    v143 = v128 + 16;
    v144(v228, v129, v107);
    v249 = v131;
    v250 = lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation, type metadata accessor for SearchPreExtractedEventStandardRepresentation, &protocol conformance descriptor for SearchPreExtractedEventStandardRepresentation);
    v251 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation);
    v252 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation);
    v145 = __swift_allocate_boxed_opaque_existential_1Tm(v248);
    _s10OmniSearch0B6ResultVWOcTm_11(v135, v145, type metadata accessor for SearchPreExtractedEventStandardRepresentation);
    v146 = v214;
    outlined init with copy of Date?(v132 + v134, v214, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_166(v146, 1, v234);
    if (v147)
    {
      outlined destroy of IntentApplication?(v146, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_5_53();
      OUTLINED_FUNCTION_24_30(v181, v182, v183);
      OUTLINED_FUNCTION_0_95();
      _s10OmniSearch0B6ResultVWOhTm_10(v146, v184);
      SearchResultItem.associatedValue.getter(&v247);
      OUTLINED_FUNCTION_25_31();
      v185 = OUTLINED_FUNCTION_16_41();
      v186(v185);
      OUTLINED_FUNCTION_2_71();
      _s10OmniSearch0B6ResultVWOhTm_10(v143, v187);
      __swift_destroy_boxed_opaque_existential_1Tm(&v247);
    }

    type metadata accessor for SearchToolDialog();
    v171 = v236;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
    OUTLINED_FUNCTION_7_50();
    OUTLINED_FUNCTION_15_42(v243, v242, v192, v193);
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v246, v194);
    _s10OmniSearch0B6ResultVWOhTm_10(v135, type metadata accessor for SearchPreExtractedEventStandardRepresentation);
    (*(v238 + 8))(v229, v107);
    outlined destroy of IntentApplication?(v83, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_14_34();
    v180 = &v253;
LABEL_39:
    v195 = *(v180 - 32);
LABEL_41:
    _s10OmniSearch0B6ResultVWOhTm_10(v195, v179);
    v104 = v244;
    v103 = v245;
    (*(v235 + 32))(v245, v171, v244);
    v105 = 0;
    return __swift_storeEnumTagSinglePayload(v103, v105, 1, v104);
  }

  OUTLINED_FUNCTION_14_34();
  _s10OmniSearch0B6ResultVWOhTm_10(v110, v113);
  v91 = &_s7ToolKit10TypedValueOSgMd;
  v92 = &_s7ToolKit10TypedValueOSgMR;
  v93 = v111;
LABEL_12:
  outlined destroy of IntentApplication?(v93, v91, v92);
  outlined init with copy of Date?(v73, v64, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_166(v64, 1, v78);
  if (v108)
  {
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v246, v94);
    outlined destroy of IntentApplication?(v73, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    outlined destroy of IntentApplication?(v64, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    v99 = v239;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
LABEL_18:
    v104 = v244;
    v103 = v245;
    outlined destroy of IntentApplication?(v99, &_s10OmniSearch12IdCardEntityVSgMd, &_s10OmniSearch12IdCardEntityVSgMR);
    v105 = 1;
    return __swift_storeEnumTagSinglePayload(v103, v105, 1, v104);
  }

  v99 = v239;
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_4_61();
  _s10OmniSearch0B6ResultVWOhTm_10(v64, v100);
  OUTLINED_FUNCTION_166(v99, 1, v240);
  if (v101)
  {
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v246, v102);
    outlined destroy of IntentApplication?(v73, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    goto LABEL_18;
  }

  v114 = v224;
  outlined init with take of IdCardEntity(v99, v224, type metadata accessor for IdCardEntity);
  v115 = v220;
  _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD06IdCardX0V_Tt2g5(v114, 0xD000000000000028, 0x800000025DBF6C30, v220);
  OUTLINED_FUNCTION_166(v115, 1, v107);
  if (!v116)
  {
    v148 = v238;
    v149 = v222;
    (*(v238 + 32))(v222, v115, v107);
    EntityProperty.wrappedValue.getter();
    v150 = v248[0];
    v151 = *(v240 + 32);
    v152 = v213;
    v153 = v223;
    outlined init with copy of Date?(v114 + v151, &v223[*(v213 + 20)], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v154 = *(v114 + 24);
    v155 = *(v114 + 32);
    *v153 = v150;
    v156 = &v153[*(v152 + 24)];
    *v156 = v154;
    v156[1] = v155;
    outlined copy of Data?(v154, v155);
    lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity, &protocol conformance descriptor for IdCardEntity);
    UUID.init()();
    v157 = UUID.uuidString.getter();
    v159 = OUTLINED_FUNCTION_18_27(v157, v158);
    v160(v159);
    (*(v148 + 16))(v221, v149, v107);
    v249 = v152;
    v250 = lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation, type metadata accessor for SearchPreExtractedCardStandardRepresentation, &protocol conformance descriptor for SearchPreExtractedCardStandardRepresentation);
    v251 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation);
    v252 = OUTLINED_FUNCTION_22_30(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation);
    v161 = __swift_allocate_boxed_opaque_existential_1Tm(v248);
    _s10OmniSearch0B6ResultVWOcTm_11(v153, v161, type metadata accessor for SearchPreExtractedCardStandardRepresentation);
    v162 = v212;
    outlined init with copy of Date?(v114 + v151, v212, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_166(v162, 1, v234);
    if (v163)
    {
      outlined destroy of IntentApplication?(v162, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_5_53();
      OUTLINED_FUNCTION_24_30(v196, v197, v198);
      OUTLINED_FUNCTION_0_95();
      _s10OmniSearch0B6ResultVWOhTm_10(v162, v199);
      SearchResultItem.associatedValue.getter(&v247);
      OUTLINED_FUNCTION_25_31();
      v200 = OUTLINED_FUNCTION_16_41();
      v201(v200);
      OUTLINED_FUNCTION_2_71();
      _s10OmniSearch0B6ResultVWOhTm_10(v151, v202);
      __swift_destroy_boxed_opaque_existential_1Tm(&v247);
    }

    type metadata accessor for SearchToolDialog();
    v171 = v236;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
    OUTLINED_FUNCTION_7_50();
    OUTLINED_FUNCTION_15_42(v243, v242, v207, v208);
    OUTLINED_FUNCTION_0_95();
    _s10OmniSearch0B6ResultVWOhTm_10(v246, v209);
    _s10OmniSearch0B6ResultVWOhTm_10(v223, type metadata accessor for SearchPreExtractedCardStandardRepresentation);
    (*(v148 + 8))(v222, v107);
    outlined destroy of IntentApplication?(v83, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    OUTLINED_FUNCTION_13_37();
    v195 = v114;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_0_95();
  _s10OmniSearch0B6ResultVWOhTm_10(v246, v117);
  outlined destroy of IntentApplication?(v83, &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_13_37();
  _s10OmniSearch0B6ResultVWOhTm_10(v114, v118);
  outlined destroy of IntentApplication?(v115, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v105 = 1;
  v104 = v244;
  v103 = v245;
  return __swift_storeEnumTagSinglePayload(v103, v105, 1, v104);
}

uint64_t _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD0buX0V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for SearchAppEntity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TypeIdentifier();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type SearchAppEntity and conformance SearchAppEntity, type metadata accessor for SearchAppEntity, &protocol conformance descriptor for SearchAppEntity);
  v15 = AppEntity.asValue.getter();
  v16 = [v15 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for LNEntity();
  if (swift_dynamicCast())
  {
    v17 = v37[1];
    type metadata accessor for TypedValue.EntityValue();
    v37[0] = swift_allocBox();
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;

    v19 = [v17 identifier];
    v20 = [v19 typeIdentifier];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = a4;
    v24 = v23;

    v18[4] = v21;
    v18[5] = v24;
    *v14 = v18;
    (*(v12 + 104))(v14, *MEMORY[0x277D72D28], v11);
    TypedValue.EntityValue.init(type:transientAppEntity:)();
    *v22 = v37[0];
    v25 = *MEMORY[0x277D72A38];
    v26 = type metadata accessor for TypedValue();
    (*(*(v26 - 8) + 104))(v22, v25, v26);
    v27 = v22;
    v28 = 0;
    v29 = v26;
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logging.utilities);
    _s10OmniSearch0B6ResultVWOcTm_11(a1, v10, type metadata accessor for SearchAppEntity);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37[2] = v34;
      *v33 = 136315138;
      specialized AppEntity.propertyDescription.getter(type metadata accessor for SearchAppEntity, type metadata accessor for SearchAppEntity, &_s10OmniSearch0B9AppEntityVmMd, &_s10OmniSearch0B9AppEntityVmMR);
      _s10OmniSearch0B6ResultVWOhTm_10(v10, type metadata accessor for SearchAppEntity);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v33 + 4) = v35;
      _os_log_impl(&dword_25D85C000, v31, v32, "Error when converting this entity to TypedValue: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x25F8A1050](v34, -1, -1);
      MEMORY[0x25F8A1050](v33, -1, -1);
    }

    else
    {

      _s10OmniSearch0B6ResultVWOhTm_10(v10, type metadata accessor for SearchAppEntity);
    }

    v29 = type metadata accessor for TypedValue();
    v27 = a4;
    v28 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
}

uint64_t _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD05EventX0V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for EventEntity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TypeIdentifier();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type EventEntity and conformance EventEntity, type metadata accessor for EventEntity, &protocol conformance descriptor for EventEntity);
  v15 = AppEntity.asValue.getter();
  v16 = [v15 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for LNEntity();
  if (swift_dynamicCast())
  {
    v17 = v37[1];
    type metadata accessor for TypedValue.EntityValue();
    v37[0] = swift_allocBox();
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;

    v19 = [v17 identifier];
    v20 = [v19 typeIdentifier];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = a4;
    v24 = v23;

    v18[4] = v21;
    v18[5] = v24;
    *v14 = v18;
    (*(v12 + 104))(v14, *MEMORY[0x277D72D28], v11);
    TypedValue.EntityValue.init(type:transientAppEntity:)();
    *v22 = v37[0];
    v25 = *MEMORY[0x277D72A38];
    v26 = type metadata accessor for TypedValue();
    (*(*(v26 - 8) + 104))(v22, v25, v26);
    v27 = v22;
    v28 = 0;
    v29 = v26;
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logging.utilities);
    _s10OmniSearch0B6ResultVWOcTm_11(a1, v10, type metadata accessor for EventEntity);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37[2] = v34;
      *v33 = 136315138;
      specialized AppEntity.propertyDescription.getter(type metadata accessor for EventEntity, type metadata accessor for EventEntity, &_s10OmniSearch11EventEntityVmMd, &_s10OmniSearch11EventEntityVmMR);
      _s10OmniSearch0B6ResultVWOhTm_10(v10, type metadata accessor for EventEntity);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v33 + 4) = v35;
      _os_log_impl(&dword_25D85C000, v31, v32, "Error when converting this entity to TypedValue: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x25F8A1050](v34, -1, -1);
      MEMORY[0x25F8A1050](v33, -1, -1);
    }

    else
    {

      _s10OmniSearch0B6ResultVWOhTm_10(v10, type metadata accessor for EventEntity);
    }

    v29 = type metadata accessor for TypedValue();
    v27 = a4;
    v28 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
}

uint64_t _s15OmniSearchTypes15LLMSearchResultV0aB0E19convertToTypedValue33_33502D4E8B2A1AFC285785940C04AED0LL_16bundleIdentifier7ToolKit0hI0OSgx_SSt10AppIntents09TransientU6EntityRzlFZAD06IdCardX0V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for IdCardEntity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TypeIdentifier();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(&lazy protocol witness table cache variable for type IdCardEntity and conformance IdCardEntity, type metadata accessor for IdCardEntity, &protocol conformance descriptor for IdCardEntity);
  v15 = AppEntity.asValue.getter();
  v16 = [v15 value];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for LNEntity();
  if (swift_dynamicCast())
  {
    v17 = v37[1];
    type metadata accessor for TypedValue.EntityValue();
    v37[0] = swift_allocBox();
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;

    v19 = [v17 identifier];
    v20 = [v19 typeIdentifier];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = a4;
    v24 = v23;

    v18[4] = v21;
    v18[5] = v24;
    *v14 = v18;
    (*(v12 + 104))(v14, *MEMORY[0x277D72D28], v11);
    TypedValue.EntityValue.init(type:transientAppEntity:)();
    *v22 = v37[0];
    v25 = *MEMORY[0x277D72A38];
    v26 = type metadata accessor for TypedValue();
    (*(*(v26 - 8) + 104))(v22, v25, v26);
    v27 = v22;
    v28 = 0;
    v29 = v26;
  }

  else
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logging.utilities);
    _s10OmniSearch0B6ResultVWOcTm_11(a1, v10, type metadata accessor for IdCardEntity);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37[2] = v34;
      *v33 = 136315138;
      specialized AppEntity.propertyDescription.getter(type metadata accessor for IdCardEntity, type metadata accessor for IdCardEntity, &_s10OmniSearch12IdCardEntityVmMd, &_s10OmniSearch12IdCardEntityVmMR);
      _s10OmniSearch0B6ResultVWOhTm_10(v10, type metadata accessor for IdCardEntity);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v33 + 4) = v35;
      _os_log_impl(&dword_25D85C000, v31, v32, "Error when converting this entity to TypedValue: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x25F8A1050](v34, -1, -1);
      MEMORY[0x25F8A1050](v33, -1, -1);
    }

    else
    {

      _s10OmniSearch0B6ResultVWOhTm_10(v10, type metadata accessor for IdCardEntity);
    }

    v29 = type metadata accessor for TypedValue();
    v27 = a4;
    v28 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
}

uint64_t outlined init with take of IdCardEntity(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6ResultVWOhTm_10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for LNEntity()
{
  result = lazy cache variable for type metadata for LNEntity;
  if (!lazy cache variable for type metadata for LNEntity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEntity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10OmniSearch0B6ResultVWOcTm_11(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 - 256);

  return MEMORY[0x282196B00](a1, a2, v8, a4, 0, 0xF000000000000000, v5, v6);
}

uint64_t OUTLINED_FUNCTION_18_27(uint64_t a1, uint64_t a2)
{
  *(v3 - 224) = a2;
  *(v3 - 216) = a1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_22_30(unint64_t *a1)
{

  return lazy protocol witness table accessor for type IdCardEntity and conformance IdCardEntity(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_24_30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 416);

  return _s10OmniSearch0B6ResultVWOcTm_11(v3, v6, a3);
}

uint64_t static LocalizedString.localizedString(forKey:arguments:)(uint64_t a1, uint64_t a2)
{
  static LocalizedString.localizedString(forKey:)(a1, a2);

  v2 = String.init(format:_:)();

  return v2;
}

uint64_t static LocalizedString.localizedString(forKey:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x25F89F4C0](a1, a2);
  v7 = MEMORY[0x25F89F4C0](a1, a2);
  v8 = MEMORY[0x25F89F4C0](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

id LocalizedString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalizedString.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v3, sel_init);
}

id LocalizedString.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalizedString.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocalizedString();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LocalizedString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *MetricsLogger.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  return &static MetricsLogger.shared;
}

uint64_t static MetricsLogger.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }
}

uint64_t key path getter for MetricsLogger.metricsStream : MetricsLogger@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(**a1 + 88))();
  result = type metadata accessor for Library.Streams.IntelligenceFlow.SearchToolTelemetry();
  *a2 = result;
  return result;
}

void specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  type metadata accessor for IntelligenceFlowSearchToolTelemetry();
  OUTLINED_FUNCTION_1_83();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  static Buildable.with(_:)();
  closure #3 in MetricsLogger.logSearchToolGeneralSearchStarted(clientId:preWarmed:)(v8, v2);
  (*(v4 + 8))(v8, v0);

  OUTLINED_FUNCTION_148();
}

uint64_t specialized closure #1 in MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v27 = type metadata accessor for Mirror();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMd, &_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF13EventMetadataVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolEventMetadata();
  v24 = a2;
  v25 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  IntelligenceFlowSearchToolTelemetry.eventMetadata.setter();
  static MonotonicTimestamp.nowForSuspendingClock()();
  v17 = type metadata accessor for MonotonicTimestamp();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v17);
  IntelligenceFlowSearchToolTelemetry.monotonicTimestamp.setter();
  v18 = type metadata accessor for IntelligenceFlowSearchToolTelemetry();
  v26[3] = v18;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, v22, v18);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v7 + 8))(v9, v27);
  v23 = a1;
  dispatch thunk of _AnySequenceBox._forEach(_:)();
}

uint64_t UUID.asAIMLUUID()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  AIML.UUID.init()();
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_17();
  (*(v6 + 16))(v4, v0, v5);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  return AIML.UUID.value.setter();
}

uint64_t closure #2 in closure #1 in MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF17RequestInvocationVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF17RequestInvocationVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10EndedTier1VSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10EndedTier1VSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF29HallucinationDetectionContextVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF29HallucinationDetectionContextVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v65 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF24LLMQUQueryArgumentsTier1VSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF24LLMQUQueryArgumentsTier1VSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  outlined init with copy of Date?(a1, &v69, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
  v27 = v70;
  if (v70)
  {
    v67 = v2;
    v28 = v69;
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    outlined init with copy of Date?(a1, &v69, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    outlined init with take of Any(v71, v68);
    v29 = v28 == 0xD00000000000001ELL && 0x800000025DBF98F0 == v27;
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      outlined init with copy of Any(v68, &v69);
      v30 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext();
      v31 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v26, v31 ^ 1u, 1, v30);
      IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.setter();
    }

    else
    {
      v33 = v28 == 0xD000000000000026 && 0x800000025DBF9910 == v27;
      if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        outlined init with copy of Any(v68, &v69);
        v34 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext();
        v35 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v23, v35 ^ 1u, 1, v34);
        IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.setter();
      }

      else
      {
        v36 = v28 == 0xD00000000000001ALL && 0x800000025DBF9940 == v27;
        if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          outlined init with copy of Any(v68, &v69);
          v37 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext();
          v38 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v20, v38 ^ 1u, 1, v37);
          IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.setter();
        }

        else
        {
          v39 = v28 == 0xD000000000000020 && 0x800000025DBF9960 == v27;
          if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            outlined init with copy of Any(v68, &v69);
            v40 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext();
            v41 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v17, v41 ^ 1u, 1, v40);
            IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.setter();
          }

          else
          {
            v42 = v28 == 0xD00000000000001DLL && 0x800000025DBF9990 == v27;
            if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              outlined init with copy of Any(v68, &v69);
              v43 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext();
              v44 = swift_dynamicCast();
              __swift_storeEnumTagSinglePayload(v14, v44 ^ 1u, 1, v43);
              IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.setter();
            }

            else
            {
              v45 = v28 == 0xD000000000000022 && 0x800000025DBF99B0 == v27;
              if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                outlined init with copy of Any(v68, &v69);
                v46 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1();
                v47 = v66;
                v48 = swift_dynamicCast();
                __swift_storeEnumTagSinglePayload(v47, v48 ^ 1u, 1, v46);
                IntelligenceFlowSearchToolTelemetry.searchToolLLMQUQueryArgumentsTier1.setter();
              }

              else
              {
                v49 = v28 == 0xD000000000000027 && 0x800000025DBF99E0 == v27;
                if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  outlined init with copy of Any(v68, &v69);
                  v50 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext();
                  v51 = v65;
                  v52 = swift_dynamicCast();
                  __swift_storeEnumTagSinglePayload(v51, v52 ^ 1u, 1, v50);
                  IntelligenceFlowSearchToolTelemetry.searchToolHallucinationDetectionContext.setter();
                }

                else
                {
                  v53 = v28 == 0xD000000000000011 && 0x800000025DBF9A10 == v27;
                  if (!v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    if (v28 == 0x697461636F766E69 && v27 == 0xEA00000000006E6FLL)
                    {
                    }

                    else
                    {
                      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v58 & 1) == 0)
                      {
                        return __swift_destroy_boxed_opaque_existential_1Tm(v68);
                      }
                    }

                    outlined init with copy of Any(v68, &v69);
                    v59 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation();
                    v60 = v63;
                    v61 = swift_dynamicCast();
                    __swift_storeEnumTagSinglePayload(v60, v61 ^ 1u, 1, v59);
                    IntelligenceFlowSearchToolTelemetry.invocation.setter();
                    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
                  }

                  outlined init with copy of Any(v68, &v69);
                  v54 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1();
                  v55 = v64;
                  v56 = swift_dynamicCast();
                  __swift_storeEnumTagSinglePayload(v55, v56 ^ 1u, 1, v54);
                  IntelligenceFlowSearchToolTelemetry.requestEndedTier1.setter();
                }
              }
            }
          }
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v71);
}

Swift::Void __swiftcall MetricsLogger.logSearchToolGeneralSearchStarted(clientId:preWarmed:)(Swift::String clientId, Swift::Bool preWarmed)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolGeneralSearchStarted(clientId:preWarmed:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchStarted();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FD70];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolRequestInvocation(traceId:clientId:)(Swift::String traceId, Swift::String clientId)
{
  v2 = OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_18_28();
  static Buildable.with(_:)();

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
  (*(v4 + 8))(v8, v2);
}

uint64_t closure #1 in MetricsLogger.logSearchToolRequestInvocation(traceId:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF17RequestInvocationVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF17RequestInvocationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  v8 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolRequestInvocation();
  v11 = a2;
  v12 = a3;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  return IntelligenceFlowSearchToolTelemetry.invocation.setter();
}

uint64_t closure #1 in closure #1 in MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v14);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_182();
  UUID.init(uuidString:)();
  v16 = type metadata accessor for UUID();
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    outlined destroy of IntentApplication?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v17 = 1;
  }

  else
  {
    AIML.UUID.init()();
    OUTLINED_FUNCTION_40_25();
    v19 = v18;
    (*(v20 + 16))(v10, v13, v16);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    AIML.UUID.value.setter();
    (*(v19 + 8))(v13, v16);
    v17 = 0;
  }

  v24 = type metadata accessor for AIML.UUID();
  __swift_storeEnumTagSinglePayload(v4, v17, 1, v24);
  return a4(v4);
}

void *closure #3 in MetricsLogger.logSearchToolGeneralSearchStarted(clientId:preWarmed:)(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 88))();
  type metadata accessor for Library.Streams.IntelligenceFlow.SearchToolTelemetry();
  lazy protocol witness table accessor for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry();
  result = static StreamResource.source()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    dispatch thunk of Source.sendEvent(_:)();
    return __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return result;
}

Swift::Void __swiftcall MetricsLogger.logSearchToolLLMQURequestStarted(clientId:)(Swift::String clientId)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_23_27(v1, v2);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_16_42();
  v5 = OUTLINED_FUNCTION_18_28();
  OUTLINED_FUNCTION_17_40(v5, v6);

  OUTLINED_FUNCTION_15_43();
  v7 = OUTLINED_FUNCTION_9_50();
  v8(v7);
  v9 = OUTLINED_FUNCTION_8_52();
  v10(v9);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolLLMQURequestStarted(clientId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestStarted();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FC78];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.setter();
}

void MetricsLogger.logSearchToolLLMQURequestEnded(clientId:llmQUResult:)()
{
  OUTLINED_FUNCTION_155();
  v54 = v0;
  v2 = v1;
  v65 = v3;
  v61 = v4;
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUQueryArgumentsTier1();
  OUTLINED_FUNCTION_14();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v60 = v8 - v7;
  OUTLINED_FUNCTION_78_0();
  v59 = type metadata accessor for IntelligenceFlowSearchToolTelemetry();
  OUTLINED_FUNCTION_14();
  v57 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v55 = v12 - v11;
  OUTLINED_FUNCTION_78_0();
  v58 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded();
  OUTLINED_FUNCTION_14();
  v56 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v64 = v16 - v15;
  OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = OUTLINED_FUNCTION_114(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_109();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v52 - v31;
  memcpy(v67, v2, sizeof(v67));
  UUID.init()();
  UUID.uuidString.getter();
  v52 = v19;
  v33 = *(v19 + 8);
  v34 = OUTLINED_FUNCTION_88();
  v33(v34);
  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v28, 1, v17) == 1)
  {
    outlined destroy of IntentApplication?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v35 = 1;
  }

  else
  {
    AIML.UUID.init()();
    (*(v52 + 16))(v25, v28, v17);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v17);
    AIML.UUID.value.setter();
    (v33)(v28, v17);
    v35 = 0;
  }

  v53 = v32;
  v39 = type metadata accessor for AIML.UUID();
  __swift_storeEnumTagSinglePayload(v32, v35, 1, v39);
  memcpy(v66, v67, sizeof(v66));
  v40 = v64;
  v41 = OUTLINED_FUNCTION_38_27();
  v43 = v42(v41);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_32_33();
  *(v44 - 16) = v40;
  v45 = v55;
  v46 = v59;
  static Buildable.with(_:)();

  OUTLINED_FUNCTION_33_32();
  v57 = *(v57 + 8);
  (v57)(v45, v46);
  v47 = v60;
  v48 = OUTLINED_FUNCTION_38_27();
  v50 = v49(v48);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_32_33();
  *(v51 - 16) = v47;
  static Buildable.with(_:)();

  OUTLINED_FUNCTION_33_32();
  (v57)(v45, v46);
  outlined destroy of IntentApplication?(v53, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  (*(v62 + 8))(v47, v63);
  (*(v56 + 8))(v64, v58);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolLLMQURequestEnded(clientId:llmQUResult:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestEnded();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FC80];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.setter();
}

void MetricsLogger.logSearchToolLLMQURequestFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v0, v1);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestFailed();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolLLMQURequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQUFailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF18LLMQUFailureReasonOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  *(v13 - v7) = 0;
  v9 = *MEMORY[0x277D1FBD8];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQUFailureReason();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  MEMORY[0x25F89E3D0](v8);
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v11 - 8) + 16))(v5, a2, v11);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  return MEMORY[0x25F89E3C0](v5);
}

uint64_t closure #2 in MetricsLogger.logSearchToolLLMQURequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28LLMQueryUnderstandingContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQURequestFailed();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FC88];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolLLMQueryUnderstandingContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolLLMQueryUnderstandingContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolSpotlightRequestStarted(clientId:)(Swift::String clientId)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_23_27(v1, v2);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestStarted();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_16_42();
  v5 = OUTLINED_FUNCTION_18_28();
  OUTLINED_FUNCTION_17_40(v5, v6);

  OUTLINED_FUNCTION_15_43();
  v7 = OUTLINED_FUNCTION_9_50();
  v8(v7);
  v9 = OUTLINED_FUNCTION_8_52();
  v10(v9);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolSpotlightRequestStarted(clientId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestStarted();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FBB0];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolSpotlightRequestEnded(clientId:metrics:)(Swift::String clientId, Swift::OpaquePointer_optional metrics)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v2, v3);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v6 = OUTLINED_FUNCTION_9_50();
  v7(v6);
  v8 = OUTLINED_FUNCTION_8_52();
  v9(v8);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolSpotlightRequestEnded(clientId:metrics:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV0hI15SpotlightResultVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV0hI15SpotlightResultVGMR);
    type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult();
    *(swift_allocObject() + 16) = xmmword_25DBC8180;
    IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightResult.init()();
  }

  return IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded.result.setter();
}

uint64_t closure #2 in MetricsLogger.logSearchToolSpotlightRequestEnded(clientId:metrics:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FBB8];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.setter();
}

void MetricsLogger.logSearchToolSpotlightRequestFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v0, v1);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestFailed();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolSpotlightRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22SpotlightFailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22SpotlightFailureReasonOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  *(v13 - v7) = 0;
  v9 = *MEMORY[0x277D1FC10];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightFailureReason();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  MEMORY[0x25F89E4E0](v8);
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v11 - 8) + 16))(v5, a2, v11);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  return MEMORY[0x25F89E4D0](v5);
}

uint64_t closure #2 in MetricsLogger.logSearchToolSpotlightRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF16SpotlightContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestFailed();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FBC0];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolSpotlightContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolAnswerSynthesisRequestStarted(clientId:)(Swift::String clientId)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_23_27(v1, v2);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestStarted();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_16_42();
  v5 = OUTLINED_FUNCTION_18_28();
  OUTLINED_FUNCTION_17_40(v5, v6);

  OUTLINED_FUNCTION_15_43();
  v7 = OUTLINED_FUNCTION_9_50();
  v8(v7);
  v9 = OUTLINED_FUNCTION_8_52();
  v10(v9);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolAnswerSynthesisRequestStarted(clientId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestStarted();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FBF8];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.setter();
}

void MetricsLogger.logSearchToolAnswerSynthesisRequestEnded(clientId:answerSynthesisResult:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v0, v1);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestEnded();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolAnswerSynthesisRequestEnded(clientId:answerSynthesisResult:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV0hI21AnswerSynthesisResultVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary0D23FlowSearchToolTelemetryV0hI21AnswerSynthesisResultVGMR);
  v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DBC8180;
  (*(v4 + 16))(v6 + v5, a2, v3);
  return IntelligenceFlowSearchToolTelemetry.SearchToolSpotlightRequestEnded.result.setter();
}

uint64_t closure #2 in MetricsLogger.logSearchToolAnswerSynthesisRequestEnded(clientId:answerSynthesisResult:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestEnded();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FC00];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.setter();
}

void MetricsLogger.logSearchToolAnswerSynthesisRequestFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v0, v1);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestFailed();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolAnswerSynthesisRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28AnswerSynthesisFailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF28AnswerSynthesisFailureReasonOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  *(v13 - v7) = 0;
  v9 = *MEMORY[0x277D1FC48];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisFailureReason();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  MEMORY[0x25F89E6F0](v8);
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v11 - 8) + 16))(v5, a2, v11);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  return MEMORY[0x25F89E6E0](v5);
}

uint64_t closure #2 in MetricsLogger.logSearchToolAnswerSynthesisRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF22AnswerSynthesisContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisRequestFailed();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FC08];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolAnswerSynthesisContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolGlobalSearchStarted(clientId:)(Swift::String clientId)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_23_27(v1, v2);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestStarted();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_16_42();
  v5 = OUTLINED_FUNCTION_18_28();
  OUTLINED_FUNCTION_17_40(v5, v6);

  OUTLINED_FUNCTION_15_43();
  v7 = OUTLINED_FUNCTION_9_50();
  v8(v7);
  v9 = OUTLINED_FUNCTION_8_52();
  v10(v9);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolGlobalSearchStarted(clientId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestStarted();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FD10];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolGlobalSearchEnded(clientId:globalResults:)(Swift::String clientId, Swift::OpaquePointer globalResults)
{
  OUTLINED_FUNCTION_155();
  v4 = v2;
  v6 = v5;
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestEnded();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_72();
  v15 = v4;
  v16 = v6;
  static Buildable.with(_:)();
  v14 = v3;
  OUTLINED_FUNCTION_17_40(partial apply for closure #2 in MetricsLogger.logSearchToolGlobalSearchEnded(clientId:globalResults:), &v13);

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
  v9 = OUTLINED_FUNCTION_9_50();
  v10(v9);
  v11 = OUTLINED_FUNCTION_8_52();
  v12(v11);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #2 in MetricsLogger.logSearchToolGlobalSearchEnded(clientId:globalResults:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestEnded();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FD18];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.setter();
}

void MetricsLogger.logSearchToolGlobalSearchFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v0, v1);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestFailed();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolGlobalSearchFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE13FailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE13FailureReasonOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  *(v13 - v7) = 0;
  v9 = *MEMORY[0x277D1FCF0];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchFailureReason();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  MEMORY[0x25F89E810](v8);
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v11 - 8) + 16))(v5, a2, v11);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  return MEMORY[0x25F89E800](v5);
}

uint64_t closure #2 in MetricsLogger.logSearchToolGlobalSearchFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE7ContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestFailed();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FD20];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolGlobalSearchContext.setter();
}

Swift::Void __swiftcall MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(Swift::String clientId, Swift::OpaquePointer from, Swift::String dialogId)
{
  OUTLINED_FUNCTION_155();
  v60 = v3;
  v53 = v4;
  v54 = v5;
  v51 = v6;
  v57 = v7;
  v58 = v8;
  v59 = type metadata accessor for IntelligenceFlowSearchToolTelemetry();
  OUTLINED_FUNCTION_14();
  v56 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v55 = v12 - v11;
  OUTLINED_FUNCTION_78_0();
  v62 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded();
  OUTLINED_FUNCTION_14();
  v52 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v61 = v16 - v15;
  OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = OUTLINED_FUNCTION_114(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_109();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v29);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v50 - v31;
  UUID.init()();
  UUID.uuidString.getter();
  v33 = *(v19 + 8);
  v34 = OUTLINED_FUNCTION_88();
  v33(v34);
  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v28, 1, v17) == 1)
  {
    outlined destroy of IntentApplication?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v35 = 1;
  }

  else
  {
    AIML.UUID.init()();
    (*(v19 + 16))(v25, v28, v17);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v17);
    AIML.UUID.value.setter();
    (v33)(v28, v17);
    v35 = 0;
  }

  v39 = type metadata accessor for AIML.UUID();
  v40 = __swift_storeEnumTagSinglePayload(v32, v35, 1, v39);
  MEMORY[0x28223BE20](v40);
  v41 = v51;
  *(&v50 - 4) = v60;
  *(&v50 - 3) = v41;
  *(&v50 - 2) = v32;
  v42 = v61;
  v43 = static Buildable.with(_:)();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_32_33();
  *(v44 - 16) = v42;
  v45 = v55;
  v46 = v59;
  static Buildable.with(_:)();

  OUTLINED_FUNCTION_35_30();
  v47 = *(v56 + 8);
  v48 = v47(v45, v46);
  MEMORY[0x28223BE20](v48);
  v49 = v54;
  *(&v50 - 4) = v53;
  *(&v50 - 3) = v49;
  *(&v50 - 2) = v32;
  static Buildable.with(_:)();

  OUTLINED_FUNCTION_35_30();
  v47(v45, v46);
  (*(v52 + 8))(v61, v62);
  outlined destroy of IntentApplication?(v32, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  (*(*a2 + 280))(a3, v8);
  IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.result.setter();
  outlined init with copy of Date?(a4, v10, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  return IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded.linkId.setter();
}

uint64_t closure #2 in MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEnded();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FD78];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.setter();
}

uint64_t closure #4 in MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10EndedTier1VSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10EndedTier1VSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12[-v8];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1();
  v13 = a2;
  v14 = a3;
  v15 = a4;
  static Buildable.with(_:)();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.requestEndedTier1.setter();
}

uint64_t closure #1 in closure #4 in MetricsLogger.logSearchToolGeneralSearchEnded(clientId:from:dialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;

  IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchEndedTier1.staticDialogId.setter();
  outlined init with copy of Date?(a4, v7, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  return MEMORY[0x25F89E8B0](v7);
}

void MetricsLogger.logSearchToolGeneralSearchFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v0, v1);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailed();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logSearchToolGeneralSearchFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE13FailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE13FailureReasonOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  *(v13 - v7) = 0;
  v9 = *MEMORY[0x277D1FD50];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailureReason();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  MEMORY[0x25F89E930](v8);
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v11 - 8) + 16))(v5, a2, v11);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  return MEMORY[0x25F89E920](v5);
}

uint64_t closure #2 in MetricsLogger.logSearchToolGeneralSearchFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE7ContextOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchFailed();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 16))(v8, a2, v6);
  *v5 = v7;
  v9 = *MEMORY[0x277D1FD80];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchContext();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  return IntelligenceFlowSearchToolTelemetry.searchToolGeneralSearchContext.setter();
}

void MetricsLogger.logHallucinationDetectionRequestStarted(clientId:source:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v0, v1);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionStarted();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #3 in MetricsLogger.logSearchToolLLMQURequestEnded(clientId:llmQUResult:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void, __n128), uint64_t (*a6)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_114(v9);
  OUTLINED_FUNCTION_77_0();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  a5(0, v11);
  OUTLINED_FUNCTION_11_51();
  (*(v14 + 16))(v13, a2, a5);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, a5);
  return a6(v13);
}

Swift::Void __swiftcall MetricsLogger.logHallucinationDetectionRequestEnded(clientId:latency:)(Swift::String clientId, Swift::UInt32 latency)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_30_29();
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionEnded();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logHallucinationDetectionRequestEnded(clientId:latency:)(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    return MEMORY[0x25F89E6B0](a2);
  }

  __break(1u);
  return result;
}

void MetricsLogger.logHallucinationDetectionRequestFailed(clientId:stError:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_38(v0, v1);
  OUTLINED_FUNCTION_1_83();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_96();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed();
  OUTLINED_FUNCTION_3_67();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_72();
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_48();

  OUTLINED_FUNCTION_6_49();
  v4 = OUTLINED_FUNCTION_9_50();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_52();
  v7(v6);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in MetricsLogger.logHallucinationDetectionRequestFailed(clientId:stError:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF12FailureErrorVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF35HallucinationDetectionFailureReasonOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF35HallucinationDetectionFailureReasonOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  *(v13 - v7) = 0;
  v9 = *MEMORY[0x277D1FCD8];
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailureReason();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionFailed.reason.setter();
  v11 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  (*(*(v11 - 8) + 16))(v5, a2, v11);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  return MEMORY[0x25F89E710](v5);
}

uint64_t closure #2 in MetricsLogger.logHallucinationDetectionRequestStarted(clientId:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF29HallucinationDetectionContextVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF29HallucinationDetectionContextVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionContext();
  static Buildable.with(_:)();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_38_27();
  return IntelligenceFlowSearchToolTelemetry.searchToolHallucinationDetectionContext.setter();
}

uint64_t closure #1 in closure #2 in MetricsLogger.logHallucinationDetectionRequestStarted(clientId:source:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v12 - v8, a2, v7);
  v10 = OUTLINED_FUNCTION_38_27();
  return a4(v10);
}

void MetricsLogger.createResults(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_155();
  a20 = v22;
  a21 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10ResultTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef7GeneralE10ResultTypeOSgMR);
  OUTLINED_FUNCTION_114(v26);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  v176 = (&v150 - v28);
  OUTLINED_FUNCTION_78_0();
  v178 = type metadata accessor for SearchResultType();
  OUTLINED_FUNCTION_14();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_36();
  v177 = v33 - v32;
  v34 = OUTLINED_FUNCTION_78_0();
  v179 = type metadata accessor for SearchSpotlightEntity(v34);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_36();
  v155 = (v37 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  v39 = OUTLINED_FUNCTION_114(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v41);
  v164 = &v150 - v42;
  v43 = OUTLINED_FUNCTION_78_0();
  type metadata accessor for SearchAppEntity(v43);
  OUTLINED_FUNCTION_11_51();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_36();
  v47 = v46 - v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  v49 = OUTLINED_FUNCTION_114(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v51);
  v53 = &v150 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v55 = OUTLINED_FUNCTION_114(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v56);
  v175 = &v150 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMd, &_s27IntelligencePlatformLibrary4AIMLV4UUIDVSgMR);
  OUTLINED_FUNCTION_114(v58);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v59);
  v61 = &v150 - v60;
  v62 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult();
  OUTLINED_FUNCTION_14();
  v64 = v63;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_109();
  v183 = v66 - v67;
  MEMORY[0x28223BE20](v68);
  v70 = &v150 - v69;
  v174 = type metadata accessor for SearchEntity(0);
  MEMORY[0x28223BE20](v174);
  v73 = &v150 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v25 + 16);
  if (v74)
  {
    v154 = v47;
    v75 = v64;
    v76 = v25 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v77 = *(v71 + 72);
    v169 = (v30 + 88);
    v170 = v77;
    v168 = *MEMORY[0x277D37080];
    v159 = *MEMORY[0x277D37060];
    v157 = *MEMORY[0x277D37068];
    v153 = *MEMORY[0x277D37088];
    v151 = *MEMORY[0x277D1FD40];
    v150 = (v30 + 8);
    v161 = *MEMORY[0x277D1FD48];
    v167 = (v75 + 16);
    v166 = v75 + 8;
    v152 = *MEMORY[0x277D1FD38];
    v171 = v75;
    v165 = v75 + 32;
    v156 = *MEMORY[0x277D1FD30];
    v184 = MEMORY[0x277D84F90];
    v78 = v21;
    v173 = v21;
    v158 = v53;
    v79 = v61;
    v180 = v61;
    v182 = v73;
    v172 = v62;
    while (1)
    {
      v181 = v74;
      _s10OmniSearch0B6EntityVWOcTm_3(v76, v73, type metadata accessor for SearchEntity);
      IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.init()();
      EntityProperty.wrappedValue.getter();
      v80 = v175;
      UUID.init(uuidString:)();

      v81 = type metadata accessor for UUID();
      v82 = OUTLINED_FUNCTION_93_6();
      if (__swift_getEnumTagSinglePayload(v82, v83, v81) == 1)
      {
        outlined destroy of IntentApplication?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v84 = 1;
      }

      else
      {
        AIML.UUID.init()();
        OUTLINED_FUNCTION_40_25();
        v85 = v53;
        v86 = v80;
        v88 = v87;
        (*(v89 + 16))(v160, v86, v81);
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v90, v91, v92, v81);
        AIML.UUID.value.setter();
        v93 = *(v88 + 8);
        v80 = v88 + 8;
        v94 = v86;
        v53 = v85;
        v79 = v180;
        v93(v94, v81);
        v84 = 0;
      }

      v95 = type metadata accessor for AIML.UUID();
      __swift_storeEnumTagSinglePayload(v79, v84, 1, v95);
      MEMORY[0x25F89E950](v79);
      IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.bundleId.setter();
      EntityProperty.wrappedValue.getter();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v78);
      v97 = v53;
      if (EnumTagSinglePayload == 1 || (v98 = outlined destroy of IntentApplication?(v53, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR), OUTLINED_FUNCTION_29_24(v98), v99 = OUTLINED_FUNCTION_93_6(), v101 = __swift_getEnumTagSinglePayload(v99, v100, v78), v97 = v80, v101))
      {
        v102 = outlined destroy of IntentApplication?(v97, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        v103 = v182;
        OUTLINED_FUNCTION_29_24(v102);
        v104 = OUTLINED_FUNCTION_93_6();
        v106 = __swift_getEnumTagSinglePayload(v104, v105, v179);
        v107 = outlined destroy of IntentApplication?(v80, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
        v73 = v103;
        if (v106 != 1)
        {
          OUTLINED_FUNCTION_29_24(v107);
          v108 = OUTLINED_FUNCTION_93_6();
          if (__swift_getEnumTagSinglePayload(v108, v109, v179))
          {
            outlined destroy of IntentApplication?(v163, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
          }

          else
          {
            OUTLINED_FUNCTION_21_35();
            v115 = v163;
            v53 = v155;
            _s10OmniSearch0B6EntityVWOcTm_3(v163, v155, v116);
            outlined destroy of IntentApplication?(v115, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
            EntityProperty.wrappedValue.getter();
            v117 = v185[1];
            OUTLINED_FUNCTION_34_31();
            if (v117)
            {

              OUTLINED_FUNCTION_29_24(v118);
              v119 = OUTLINED_FUNCTION_93_6();
              if (__swift_getEnumTagSinglePayload(v119, v120, v179))
              {
                outlined destroy of IntentApplication?(v80, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
              }

              else
              {
                OUTLINED_FUNCTION_21_35();
                v53 = v155;
                _s10OmniSearch0B6EntityVWOcTm_3(v80, v155, v121);
                outlined destroy of IntentApplication?(v80, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
                EntityProperty.wrappedValue.getter();
                OUTLINED_FUNCTION_34_31();
              }

              IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.bundleId.setter();
            }
          }
        }
      }

      else
      {
        v110 = v162;
        v111 = v154;
        _s10OmniSearch0B6EntityVWOcTm_3(v162, v154, type metadata accessor for SearchAppEntity);
        outlined destroy of IntentApplication?(v110, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        EntityProperty.wrappedValue.getter();
        _s10OmniSearch0B6EntityVWOhTm_3(v111, type metadata accessor for SearchAppEntity);

        OUTLINED_FUNCTION_29_24(v112);
        v113 = OUTLINED_FUNCTION_93_6();
        if (__swift_getEnumTagSinglePayload(v113, v114, v78))
        {
          outlined destroy of IntentApplication?(type metadata accessor for SearchAppEntity, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        }

        else
        {
          _s10OmniSearch0B6EntityVWOcTm_3(type metadata accessor for SearchAppEntity, v111, type metadata accessor for SearchAppEntity);
          outlined destroy of IntentApplication?(type metadata accessor for SearchAppEntity, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
          EntityProperty.wrappedValue.getter();
          _s10OmniSearch0B6EntityVWOhTm_3(v111, type metadata accessor for SearchAppEntity);
        }

        v73 = v182;
        IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResult.bundleId.setter();
        v53 = v158;
        v79 = v180;
      }

      v122 = *(v73 + 1);
      v123 = v177;
      EntityProperty.wrappedValue.getter();
      v124 = (*v169)(v123, v178);
      if (v124 == v168)
      {
        type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
        OUTLINED_FUNCTION_11_51();
        v125 = OUTLINED_FUNCTION_42_26();
        v126(v125, v161, v122);
        OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_36_26(v127, v128, v129);
        v130 = v172;
      }

      else
      {
        v130 = v172;
        if (v124 == v159)
        {
          type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
          OUTLINED_FUNCTION_11_51();
          v131 = OUTLINED_FUNCTION_42_26();
          v133 = &a10;
        }

        else if (v124 == v157)
        {
          type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
          OUTLINED_FUNCTION_11_51();
          v131 = OUTLINED_FUNCTION_42_26();
          v133 = v185;
        }

        else
        {
          if (v124 != v153)
          {
            v143 = v176;
            *v176 = 0;
            type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
            OUTLINED_FUNCTION_11_51();
            (*(v144 + 104))(v143, v151, v122);
            OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_36_26(v145, v146, v147);
            (*v150)(v177, v178);
            goto LABEL_29;
          }

          type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGeneralSearchResultType();
          OUTLINED_FUNCTION_11_51();
          v131 = OUTLINED_FUNCTION_42_26();
          v133 = &a15;
        }

        v132(v131, *(v133 - 64), v122);
        OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_36_26(v134, v135, v136);
      }

LABEL_29:
      (*v167)(v183, v70, v130);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v184 + 16) + 1, 1, v184);
        v184 = v148;
      }

      v78 = v173;
      v138 = *(v184 + 16);
      v137 = *(v184 + 24);
      v139 = v53;
      if (v138 >= v137 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v137 > 1, v138 + 1, 1, v184);
        v184 = v149;
      }

      v140 = v171;
      (*(v171 + 8))(v70, v130);
      v141 = v183;
      v142 = v184;
      *(v184 + 16) = v138 + 1;
      (*(v140 + 32))(v142 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v138, v141, v130);
      _s10OmniSearch0B6EntityVWOhTm_3(v73, type metadata accessor for SearchEntity);
      v76 += v170;
      v74 = v181 - 1;
      v53 = v139;
      if (v181 == 1)
      {
        goto LABEL_37;
      }
    }
  }

  v184 = MEMORY[0x277D84F90];
LABEL_37:
  OUTLINED_FUNCTION_148();
}

void MetricsLogger.createResultsForGlobalSearch(from:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE11RequestTypeOSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0ef6GlobalE11RequestTypeOSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = (v29 - v4);
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult();
  OUTLINED_FUNCTION_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  v31 = *(v1 + 16);
  if (v31)
  {
    v16 = 0;
    v30 = *MEMORY[0x277D1FCE0];
    v29[1] = v8 + 32;
    v29[2] = v8 + 8;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchResult.init()();
      if (v16 == 0x80000000)
      {
        break;
      }

      v32 = 0;
      MEMORY[0x25F89E850](v16);
      *v5 = 0;
      v18 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolGlobalSearchRequestType();
      OUTLINED_FUNCTION_17();
      (*(v19 + 104))(v5, v30, v18);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
      MEMORY[0x25F89E860](v5);
      (*(v8 + 16))(v12, v15, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
        v17 = v27;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v17);
        v17 = v28;
      }

      ++v16;
      v25 = OUTLINED_FUNCTION_88();
      v26(v25);
      *(v17 + 16) = v24 + 1;
      (*(v8 + 32))(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v12, v6);
      if (v31 == v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_148();
  }
}

uint64_t MetricsLogger.computeTimeInMS(start:)(uint64_t a1)
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_182();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_88();
  result = v5(v4);
  v7 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 4294967300.0)
  {
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void MetricsLogger.getSearchToolFailureError(err:)(void *a1)
{
  IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.init()();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for NSError();
  if (swift_dynamicCast())
  {
    v3 = [v4 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.domain.setter();
    [v4 code];
    IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.code.setter();
  }

  else
  {
    IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.domain.setter();
    IntelligenceFlowSearchToolTelemetry.SearchToolFailureError.code.setter();
  }
}

uint64_t _s10OmniSearch0B6EntityVWOcTm_3(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s10OmniSearch0B6EntityVWOhTm_3(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry()
{
  result = lazy protocol witness table cache variable for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry;
  if (!lazy protocol witness table cache variable for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry)
  {
    type metadata accessor for Library.Streams.IntelligenceFlow.SearchToolTelemetry();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Streams.IntelligenceFlow.SearchToolTelemetry and conformance Library.Streams.IntelligenceFlow.SearchToolTelemetry);
  }

  return result;
}

void OUTLINED_FUNCTION_6_49()
{

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
}

uint64_t OUTLINED_FUNCTION_7_51()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_10_48()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_13_38(uint64_t a1, uint64_t a2)
{
  *(v2 - 152) = a2;

  return type metadata accessor for IntelligenceFlowSearchToolTelemetry();
}

void OUTLINED_FUNCTION_15_43()
{

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
}

uint64_t OUTLINED_FUNCTION_16_42()
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_17_40(uint64_t a1, uint64_t a2)
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_23_27(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a2;

  return type metadata accessor for IntelligenceFlowSearchToolTelemetry();
}

uint64_t OUTLINED_FUNCTION_29_24(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

uint64_t OUTLINED_FUNCTION_30_29()
{

  return type metadata accessor for IntelligenceFlowSearchToolTelemetry();
}

void OUTLINED_FUNCTION_33_32()
{

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
}

uint64_t OUTLINED_FUNCTION_34_31()
{

  return _s10OmniSearch0B6EntityVWOhTm_3(v1, v0);
}

void OUTLINED_FUNCTION_35_30()
{

  specialized MetricsLogger.logSearchToolEvent<A>(clientId:context:sendEvent:)();
}

uint64_t OUTLINED_FUNCTION_36_26(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return MEMORY[0x28217B198](v4);
}

Swift::Int NetworkServiceError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkServiceError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  NetworkServiceError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

_BYTE *storeEnumTagSinglePayload for NetworkServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Void __swiftcall NSMutableAttributedString.updateWithExpansionStringsArray(attributedEntityType:substringToValues:updateForNoExpansions:)(Swift::String attributedEntityType, Swift::OpaquePointer substringToValues, Swift::Bool updateForNoExpansions)
{
  OUTLINED_FUNCTION_0_97();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_7:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(substringToValues._rawValue + 6) + 16 * v12);
    v14 = v13[1];
    v29 = *v13;
    v15 = *(*(substringToValues._rawValue + 7) + 8 * v12);

    v16 = [v28 string];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    type metadata accessor for FeatureFlagService();
    v20 = swift_allocObject();
    v30 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v29, v14, v20, v17, v19);
    v22 = v21;
    LOBYTE(v17) = v23;

    if ((v17 & 1) == 0 && ((v26 & 1) != 0 || *(v15 + 16)))
    {
      v24 = MEMORY[0x25F89F4C0]();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v28 addAttribute:v24 value:isa range:{v30, v22}];
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_7;
    }
  }
}

Swift::Void __swiftcall NSMutableAttributedString.updateWithExpansionString(attributedEntityType:substringToValues:updateForNoExpansions:)(Swift::String attributedEntityType, Swift::OpaquePointer substringToValues, Swift::Bool updateForNoExpansions)
{
  OUTLINED_FUNCTION_0_97();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v31 = v3;
  while (v6)
  {
LABEL_7:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(substringToValues._rawValue + 6) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(substringToValues._rawValue + 7) + 8 * v12);

    v17 = [v33 string];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    type metadata accessor for FeatureFlagService();
    v21 = swift_allocObject();
    v22 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v14, v15, v21, v18, v20);
    v24 = v23;
    LOBYTE(v14) = v25;

    if ((v14 & 1) == 0 && ((v30 & 1) != 0 || v16[2]))
    {
      v26 = MEMORY[0x25F89F4C0]();
      if (v16[2])
      {
        v27 = v16[4];
        v28 = v16[5];
      }

      else
      {
        v27 = 0;
        v28 = 0xE000000000000000;
      }

      v29 = MEMORY[0x25F89F4C0](v27, v28);

      [v33 addAttribute:v26 value:v29 range:{v22, v24}];

      v3 = v31;
    }

    else
    {

      v3 = v31;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_7;
    }
  }
}

Swift::Void __swiftcall NSMutableAttributedString.updateWithBool(attributedEntityType:substrings:)(Swift::String attributedEntityType, Swift::OpaquePointer substrings)
{
  object = attributedEntityType._object;
  v3 = *(substrings._rawValue + 2);
  if (v3)
  {
    countAndFlagsBits = attributedEntityType._countAndFlagsBits;
    v5 = (substrings._rawValue + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = [v2 string];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      type metadata accessor for FeatureFlagService();
      v12 = swift_allocObject();
      v13 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(v6, v7, v12, v9, v11);
      v15 = v14;
      LOBYTE(v9) = v16;

      if ((v9 & 1) == 0)
      {
        v17 = MEMORY[0x25F89F4C0](countAndFlagsBits, object);
        isa = Bool._bridgeToObjectiveC()().super.super.isa;
        [v2 addAttribute:v17 value:isa range:{v13, v15}];
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t static OmniSearchError.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t InteractionMode.assistantContextInteractionMode.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_17();
  v6 = *(v5 + 104);
  v7 = **(&unk_2799EEE00 + a1);

  return v6(a2, v7, v4);
}

uint64_t OmniSearchOptions.init(isFirstToolInvocation:isOnScreenReference:isExpectingAnswer:isSingleStepSearch:searchContext:interactionMode:assistantLocale:clientId:alwaysHydrateDocuments:skipGlobalSearch:skipLocalSearch:progressReporter:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, const void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v23);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_59_4();
  memcpy(v39, a5, sizeof(v39));
  memcpy(__dst, a5, 0xA0uLL);
  v25 = _s10OmniSearch0B7ContextVSgWOg(__dst);
  if (v25 == 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
  }

  else
  {
    memcpy(v37, v39, sizeof(v37));
    outlined init with copy of SearchContext(v37, v38);
    EntityProperty.wrappedValue.getter();
    outlined destroy of IntentApplication?(v39, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    v32 = v38[0];
    memcpy(v38, v39, sizeof(v38));
    outlined init with copy of SearchContext(v38, v36);
    EntityProperty.wrappedValue.getter();
    outlined destroy of IntentApplication?(v39, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    v31 = v36[0];
    EntityProperty.wrappedValue.getter();
    outlined destroy of IntentApplication?(v39, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    v30 = v36[0];
  }

  LOBYTE(v38[0]) = v25 == 1;
  v37[0] = v25 == 1;
  outlined init with copy of Date?(a6, v16, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v26 = InteractionMode.init(interactionMode:)(v16);
  result = outlined destroy of IntentApplication?(a6, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v28 = v38[0];
  v29 = v37[0];
  *a9 = v32;
  *(a9 + 8) = v28;
  *(a9 + 16) = v31;
  *(a9 + 24) = v29;
  *(a9 + 32) = v30;
  *(a9 + 40) = v26;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a15;
  *(a9 + 88) = a16;
  *(a9 + 96) = a1 & 1;
  *(a9 + 97) = a2 & 1;
  *(a9 + 98) = a3 & 1;
  *(a9 + 99) = a4 & 1;
  *(a9 + 100) = a12 & 1;
  *(a9 + 101) = a13 & 1;
  *(a9 + 102) = a14 & 1;
  *(a9 + 103) = 0;
  return result;
}

uint64_t InteractionMode.init(interactionMode:)(uint64_t a1)
{
  v2 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  if (__swift_getEnumTagSinglePayload(a1, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(a1, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
    return 4;
  }

  v12 = *(v4 + 32);
  v12(v10, a1, v2);
  v12(v7, v10, v2);
  v13 = (*(v4 + 88))(v7, v2);
  if (v13 == *MEMORY[0x277CBA0B8])
  {
    return 0;
  }

  if (v13 == *MEMORY[0x277CBA0A8])
  {
    return 1;
  }

  if (v13 == *MEMORY[0x277CBA0C0])
  {
    return 2;
  }

  if (v13 != *MEMORY[0x277CBA0B0])
  {
    (*(v4 + 8))(v7, v2);
    return 4;
  }

  return 3;
}

uint64_t OmniSearchOptions.init(request:clientId:progressReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v81 = a4;
  v82 = a5;
  v79 = a2;
  v80 = a3;
  v77 = a6;
  v8 = type metadata accessor for SearchToolIntentRequest(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v75 = v10;
  v11 = type metadata accessor for SearchRouter(0);
  v12 = OUTLINED_FUNCTION_114(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  v74 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v14);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_59_4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v17 = OUTLINED_FUNCTION_114(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  v23 = v8[9];
  memcpy(__dst, (a1 + v23), 0xA0uLL);
  v24 = _s10OmniSearch0B7ContextVSgWOg(__dst);
  v84 = 0;
  if (v24 != 1)
  {
    EntityProperty.wrappedValue.getter();
    v84 = v110[0];
  }

  memcpy(v110, (a1 + v23), sizeof(v110));
  v25 = _s10OmniSearch0B7ContextVSgWOg(v110);
  if (v25 == 1)
  {
    v83 = 0;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v83 = v109[0];
  }

  memcpy(v109, (a1 + v23), sizeof(v109));
  if (_s10OmniSearch0B7ContextVSgWOg(v109) == 1)
  {
    v76 = 0;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v76 = v86;
  }

  v115 = v24 == 1;
  v113 = v25 == 1;
  v26 = v8[12];
  v73 = *(a1 + v8[11]);
  v27 = *(a1 + v26);
  v28 = v8[7];
  outlined init with copy of Date?(a1 + v28, v22, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, Entity) == 1)
  {
    outlined destroy of IntentApplication?(v22, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v30 = v86;
    OUTLINED_FUNCTION_2_73();
    outlined destroy of SearchRouter(v22, v31);
    if (v30)
    {
LABEL_14:
      v69 = 1;
      goto LABEL_16;
    }
  }

  v32 = *(a1 + v8[15]);
  if (v32 && *(v32 + 16))
  {
    goto LABEL_14;
  }

  v69 = v27;
LABEL_16:
  v68 = *(a1 + v8[13]);
  v33 = a1 + v8[16];
  outlined init with copy of Date?(v33, v6, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v72 = InteractionMode.init(interactionMode:)(v6);
  v34 = (v33 + *(type metadata accessor for AssistantSystemContext(0) + 24));
  v35 = v34[1];
  v36 = v27;
  if (v35)
  {
    v37 = *v34;
    v70 = v35;
    v71 = v37;
  }

  else
  {
    v38 = type metadata accessor for NSUserDefaults();
    v43 = static NSUserDefaults.fallbackLocale.getter(v38, v39, v40, v41, v42);
    v70 = v44;
    v71 = v43;
  }

  v45 = v75;
  outlined init with copy of SearchToolIntentRequest(a1, v75);

  v46 = v74;
  SearchRouter.init(request:)(v45, v74);
  v47 = SearchRouter.isPersonal.getter();
  outlined destroy of SearchRouter(v46, type metadata accessor for SearchRouter);
  v48 = *(a1 + v8[14]);
  outlined init with copy of Date?(a1 + v28, v19, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, Entity);
  v78 = a1;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(v19, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
LABEL_26:
    v53 = 0;
    goto LABEL_27;
  }

  EntityProperty.wrappedValue.getter();
  v50 = v86;
  if (!v86)
  {
    OUTLINED_FUNCTION_2_73();
    outlined destroy of SearchRouter(v19, v54);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_2_73();
  outlined destroy of SearchRouter(v19, v51);
  if (!*(v50 + 16))
  {

    goto LABEL_26;
  }

  v52 = *(v50 + 32);

  v53 = v52 != 39;
LABEL_27:
  v64 = v53;
  v85[0] = v84;
  v67 = v48 ^ 1;
  LODWORD(v75) = v115;
  v68 &= 1u;
  v69 &= 1u;
  LOBYTE(v85[1]) = v115;
  v55 = v72;
  v73 &= 1u;
  LODWORD(v74) = (v48 ^ 1 | v47) & 1;
  *(&v85[1] + 1) = *v114;
  HIDWORD(v85[1]) = *&v114[3];
  v85[2] = v83;
  v65 = v113;
  v66 = v36 & 1;
  LOBYTE(v85[3]) = v113;
  *(&v85[3] + 1) = *v112;
  HIDWORD(v85[3]) = *&v112[3];
  v56 = v76;
  v85[4] = v76;
  LOBYTE(v85[5]) = v72;
  HIDWORD(v85[5]) = *&v111[3];
  *(&v85[5] + 1) = *v111;
  v58 = v70;
  v57 = v71;
  v85[6] = v71;
  v85[7] = v70;
  v59 = v79;
  v60 = v80;
  v85[8] = v79;
  v85[9] = v80;
  v62 = v81;
  v61 = v82;
  v85[10] = v81;
  v85[11] = v82;
  LOBYTE(v85[12]) = v73;
  BYTE1(v85[12]) = v66;
  BYTE2(v85[12]) = v69;
  BYTE3(v85[12]) = v68;
  BYTE4(v85[12]) = v67;
  *(&v85[12] + 5) = v74;
  HIBYTE(v85[12]) = v53;
  LOBYTE(v85[13]) = 0;
  memcpy(v77, v85, 0x69uLL);
  outlined init with copy of OmniSearchOptions(v85, &v86);
  outlined destroy of SearchRouter(v78, type metadata accessor for SearchToolIntentRequest);
  v86 = v84;
  v87 = v75;
  *v88 = *v114;
  *&v88[3] = *&v114[3];
  v89 = v83;
  v90 = v65;
  *v91 = *v112;
  *&v91[3] = *&v112[3];
  v92 = v56;
  v93 = v55;
  *&v94[3] = *&v111[3];
  *v94 = *v111;
  v95 = v57;
  v96 = v58;
  v97 = v59;
  v98 = v60;
  v99 = v62;
  v100 = v61;
  v101 = v73;
  v102 = v66;
  v103 = v69;
  v104 = v68;
  v105 = v67;
  v106 = v74;
  v107 = 0;
  v108 = v64;
  return outlined destroy of OmniSearchOptions(&v86);
}

OmniSearch::OmniSearchOptions::CodingKeys_optional __swiftcall OmniSearchOptions.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OmniSearchOptions.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t OmniSearchOptions.CodingKeys.rawValue.getter(char a1)
{
  result = 0x747865746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0x6E61747369737361;
      break;
    case 3:
      result = 0x6449746E65696C63;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x61636F4C70696B73;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x766E496370587369;
      break;
    default:
      return result;
  }

  return result;
}

OmniSearch::OmniSearchOptions::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OmniSearchOptions.CodingKeys@<W0>(Swift::String *a1@<X0>, OmniSearch::OmniSearchOptions::CodingKeys_optional *a2@<X8>)
{
  result.value = OmniSearchOptions.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OmniSearchOptions.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = OmniSearchOptions.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

OmniSearch::OmniSearchOptions::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchOptions.CodingKeys@<W0>(uint64_t a1@<X0>, OmniSearch::OmniSearchOptions::CodingKeys_optional *a2@<X8>)
{
  result.value = OmniSearchOptions.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OmniSearchOptions.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t OmniSearchOptions.assistantLocale.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t OmniSearchOptions.clientId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t OmniSearchOptions.progressReporter.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void __swiftcall OmniSearchContext.init(latitude:longitude:onScreenText:)(OmniSearch::OmniSearchContext *__return_ptr retstr, Swift::Double_optional latitude, Swift::Double_optional longitude, Swift::OpaquePointer_optional onScreenText)
{
  retstr->latitude.value = *&latitude.is_nil;
  retstr->latitude.is_nil = longitude.is_nil;
  *(&retstr->longitude.value + 7) = onScreenText.value._rawValue;
  BYTE6(retstr->onScreenText.value._rawValue) = onScreenText.is_nil;
  *(&retstr[1].latitude.value + 5) = v4;
}

uint64_t outlined init with copy of SearchToolIntentRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchToolIntentRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchRouter(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

void OmniSearchOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE7OptionsV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE7OptionsV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  v31 = v29;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18_9();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type OmniSearchContext and conformance OmniSearchContext();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v24)
  {
    lazy protocol witness table accessor for type InteractionMode and conformance InteractionMode();
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(4);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(5);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(6);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(7);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(8);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(9);
    OUTLINED_FUNCTION_4_62();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(11);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_8_53(12);
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v31 + 8))(v25, v28);
  OUTLINED_FUNCTION_61_2();
}

unint64_t lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchContext and conformance OmniSearchContext()
{
  result = lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext;
  if (!lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext;
  if (!lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext and conformance OmniSearchContext);
  }

  return result;
}

void OmniSearchOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE7OptionsV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE7OptionsV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  lazy protocol witness table accessor for type OmniSearchOptions.CodingKeys and conformance OmniSearchOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    lazy protocol witness table accessor for type OmniSearchContext and conformance OmniSearchContext();
    OUTLINED_FUNCTION_11_52();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v62 = v69;
    v85 = v66;
    v84 = v68;
    LOBYTE(v64[0]) = 1;
    lazy protocol witness table accessor for type InteractionMode and conformance InteractionMode();
    OUTLINED_FUNCTION_11_52();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = v67;
    v30 = v65;
    OUTLINED_FUNCTION_0_98(2);
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v31;
    OUTLINED_FUNCTION_0_98(3);
    v58 = KeyedDecodingContainer.decode(_:forKey:)();
    v59 = v65;
    v33 = v32;
    OUTLINED_FUNCTION_0_98(4);
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_98(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_98(6);
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_98(7);
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_0_98(8);
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_22_31(v34, v74 + 4);
    OUTLINED_FUNCTION_0_98(9);
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_22_31(v35, v74);
    OUTLINED_FUNCTION_0_98(10);
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_22_31(v36, &v73 + 4);
    OUTLINED_FUNCTION_0_98(11);
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_22_31(v37, &v73);
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_143_10();
    v57 = v39;
    OUTLINED_FUNCTION_143_10();
    v56 = v40;
    OUTLINED_FUNCTION_143_10();
    v55 = v41;
    OUTLINED_FUNCTION_143_10();
    v54 = v42;
    OUTLINED_FUNCTION_143_10();
    v53 = v43;
    OUTLINED_FUNCTION_143_10();
    v52 = v44;
    OUTLINED_FUNCTION_143_10();
    v51 = v45;
    OUTLINED_FUNCTION_143_10();
    v50 = v46;
    v47 = OUTLINED_FUNCTION_49_13();
    v48(v47);
    v64[0] = v59;
    LOBYTE(v64[1]) = v85;
    v64[2] = v61;
    v49 = v84;
    LOBYTE(v64[3]) = v84;
    v64[4] = v62;
    LOBYTE(v64[5]) = v30;
    v64[6] = v60;
    v64[7] = v63;
    v64[8] = v58;
    v64[9] = v33;
    v64[10] = 0;
    v64[11] = 0;
    LOBYTE(v64[12]) = v57;
    BYTE1(v64[12]) = v56;
    BYTE2(v64[12]) = v55;
    BYTE3(v64[12]) = v54;
    BYTE4(v64[12]) = v53;
    BYTE5(v64[12]) = v52;
    BYTE6(v64[12]) = v51;
    HIBYTE(v64[12]) = v50;
    LOBYTE(v64[13]) = v38 & 1;
    memcpy(v28, v64, 0x69uLL);
    outlined init with copy of OmniSearchOptions(v64, &v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v65 = v59;
    v66 = v85;
    v67 = v61;
    v68 = v49;
    v69 = v62;
    v70 = v30;
    v71 = v60;
    v72 = v63;
    v73 = v58;
    v74[0] = v33;
    v74[1] = 0;
    v74[2] = 0;
    v75 = v57;
    v76 = v56;
    v77 = v55;
    v78 = v54;
    v79 = v53;
    v80 = v52;
    v81 = v51;
    v82 = v50;
    v83 = v38 & 1;
    outlined destroy of OmniSearchOptions(&v65);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t OmniSearchContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E65657263536E6FLL && a2 == 0xEC00000074786554)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t OmniSearchContext.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656475746974616CLL;
  }

  if (a1 == 1)
  {
    return 0x64757469676E6F6CLL;
  }

  return 0x6E65657263536E6FLL;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void OmniSearchContext.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE7ContextV10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE7ContextV10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v6 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59_4();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_61_2();
}

unint64_t lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys);
  }

  return result;
}

void OmniSearchContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE7ContextV10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE7ContextV10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v32 = v31;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_9();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  lazy protocol witness table accessor for type OmniSearchContext.CodingKeys and conformance OmniSearchContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v35;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v38;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v32 + 8))(v25, v30);
    *v29 = v34;
    *(v29 + 8) = v36 & 1;
    *(v29 + 16) = v39;
    *(v29 + 24) = v41 & 1;
    *(v29 + 32) = v40;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  OUTLINED_FUNCTION_61_2();
}

uint64_t OmniSearchOptions.onScreenText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 97);
  v3 = *(v0 + 99);
  type metadata accessor for FeatureFlagService();
  swift_initStackObject();
  if (!FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_onScreenReferences))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logging.search);
    v5 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v10))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "OmniSearch/onScreenReferences FF is not enabled, dropping onScreenText";
      goto LABEL_16;
    }

LABEL_17:

    return 0;
  }

  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logging.search);
    v5 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_77_5(v12))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "options.isOnScreenReference is false, dropping onScreenText";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!v3)
  {

    return v1;
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.search);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (!OUTLINED_FUNCTION_77_5(v6))
  {
    goto LABEL_17;
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = "options.isSingleStepSearch is true, dropping onScreenText";
LABEL_16:
  _os_log_impl(&dword_25D85C000, v5, v1, v8, v7, 2u);
  MEMORY[0x25F8A1050](v7, -1, -1);

  return 0;
}

uint64_t InteractionMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4679616C70736964 && a2 == 0xEE0064726177726FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6E4F6563696F76 && a2 == 0xE900000000000079;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F466563696F76 && a2 == 0xEC00000064726177)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
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

uint64_t InteractionMode.CodingKeys.stringValue.getter(char a1)
{
  result = 0x4679616C70736964;
  switch(a1)
  {
    case 1:
      result = 0x4F79616C70736964;
      break;
    case 2:
      result = 0x6C6E4F6563696F76;
      break;
    case 3:
      result = 0x726F466563696F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InteractionMode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = InteractionMode.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.DisplayForwardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.DisplayForwardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.DisplayOnlyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.DisplayOnlyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.VoiceForwardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.VoiceForwardCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InteractionMode.VoiceOnlyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InteractionMode.VoiceOnlyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void InteractionMode.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  v64 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO22VoiceForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO22VoiceForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v62 = v28;
  v63 = v27;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_49_3();
  v61 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO19VoiceOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO19VoiceOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v59 = v32;
  v60 = v31;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_49_3();
  v58 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO21DisplayOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO21DisplayOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v56 = v36;
  v57 = v35;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v54 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO24DisplayForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO24DisplayForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v55 = v41;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  v44 = &v54 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15InteractionModeO10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v47 = v46;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v48);
  v50 = &v54 - v49;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v64)
  {
    case 1:
      lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys();
      OUTLINED_FUNCTION_11_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v56 + 8))(v39, v57);
      break;
    case 2:
      lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys();
      v51 = v58;
      OUTLINED_FUNCTION_11_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v53 = v59;
      v52 = v60;
      goto LABEL_5;
    case 3:
      lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys();
      v51 = v61;
      OUTLINED_FUNCTION_11_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v53 = v62;
      v52 = v63;
LABEL_5:
      (*(v53 + 8))(v51, v52);
      break;
    default:
      lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys();
      OUTLINED_FUNCTION_11_52();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v44, v40);
      break;
  }

  (*(v47 + 8))(v50, v45);
  OUTLINED_FUNCTION_61_2();
}

void InteractionMode.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  a23 = v26;
  a24 = v27;
  v97 = v24;
  v29 = v28;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO22VoiceForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO22VoiceForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v93 = v30;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_49_3();
  v95 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO19VoiceOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO19VoiceOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v90 = v34;
  v91 = v33;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49_3();
  v92 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO21DisplayOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO21DisplayOnlyCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v88 = v38;
  v89 = v37;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  v41 = &v82 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO24DisplayForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO24DisplayForwardCodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v87 = v43;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  v46 = &v82 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15InteractionModeO10CodingKeys33_FE5883D83F619B4D9F23850D35FE187FLLOGMR);
  OUTLINED_FUNCTION_14();
  v94 = v48;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18_9();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys();
  v50 = v97;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v50)
  {
    goto LABEL_8;
  }

  v84 = v42;
  v85 = v46;
  v86 = v41;
  v51 = v95;
  v52 = v96;
  v97 = v29;
  v53 = v25;
  KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5();
  if (v55 == v56 >> 1)
  {
LABEL_7:
    v69 = type metadata accessor for DecodingError();
    swift_allocError();
    v71 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v71 = &type metadata for InteractionMode;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x277D84160], v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v94 + 8))(v53, v47);
    v29 = v97;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
LABEL_9:
    OUTLINED_FUNCTION_61_2();
    return;
  }

  v83 = 0;
  if (v55 < (v56 >> 1))
  {
    v57 = *(v54 + v55);
    specialized ArraySlice.subscript.getter();
    v59 = v58;
    v61 = v60;
    swift_unknownObjectRelease();
    if (v59 == v61 >> 1)
    {
      v62 = v57;
      v64 = v93;
      v63 = v94;
      switch(v62)
      {
        case 1:
          a12 = 1;
          v79 = lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys();
          v73 = v86;
          OUTLINED_FUNCTION_10_49(&unk_286F864C0, &a12, v80, v81, v79);
          swift_unknownObjectRelease();
          v77 = v88;
          v76 = v89;
          goto LABEL_15;
        case 2:
          a13 = 2;
          v72 = lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys();
          v73 = v92;
          OUTLINED_FUNCTION_10_49(&unk_286F864E0, &a13, v74, v75, v72);
          swift_unknownObjectRelease();
          v77 = v90;
          v76 = v91;
LABEL_15:
          (*(v77 + 8))(v73, v76);
          goto LABEL_16;
        case 3:
          a14 = 3;
          lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys();
          v78 = v83;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v78)
          {
            (*(v63 + 8))(v53, v47);
            swift_unknownObjectRelease();
            v29 = v97;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v64 + 8))(v51, v52);
LABEL_16:
          (*(v63 + 8))(v53, v47);
          __swift_destroy_boxed_opaque_existential_1Tm(v97);
          break;
        default:
          a11 = 0;
          v65 = lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys();
          v66 = v85;
          OUTLINED_FUNCTION_10_49(&unk_286F864A0, &a11, v67, v68, v65);
          swift_unknownObjectRelease();
          (*(v87 + 8))(v66, v84);
          goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OmniSearchContext.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.CodingKeys and conformance InteractionMode.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceForwardCodingKeys and conformance InteractionMode.VoiceForwardCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.VoiceOnlyCodingKeys and conformance InteractionMode.VoiceOnlyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayOnlyCodingKeys and conformance InteractionMode.DisplayOnlyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys()
{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys;
  if (!lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionMode.DisplayForwardCodingKeys and conformance InteractionMode.DisplayForwardCodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OmniSearchOptions(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for OmniSearchOptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OmniSearchContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for OmniSearchContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InteractionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OmniSearchContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_10_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t static OmniSearchResponseRenderOption.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      outlined consume of OmniSearchResponseRenderOption(*a1, 1);
      outlined consume of OmniSearchResponseRenderOption(v4, 1);
      return v5;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_13;
      }

      outlined consume of OmniSearchResponseRenderOption(*a1, 2);
      v6 = v4;
      v7 = 2;
      goto LABEL_10;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_13;
      }

      outlined consume of OmniSearchResponseRenderOption(*a1, 3);
      v6 = v4;
      v7 = 3;
      goto LABEL_10;
    case 4:
      if (v5 != 4)
      {
        goto LABEL_13;
      }

      outlined consume of OmniSearchResponseRenderOption(*a1, 4);
      v6 = v4;
      v7 = 4;
      goto LABEL_10;
    default:
      if ((v5 - 1) >= 4)
      {
        if (v3)
        {
          if (!v5)
          {
            outlined copy of OmniSearchResponseRenderOption(*a2, 0);
            v8 = v4;
            v9 = 0;
            goto LABEL_14;
          }

          v13 = *a1;
          if (v2 == v4 && v3 == v5)
          {
            OUTLINED_FUNCTION_7_52(v13, v3);
            v6 = v2;
            v7 = v3;
LABEL_10:
            outlined consume of OmniSearchResponseRenderOption(v6, v7);
          }

          else
          {
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v16 = OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_7_52(v16, v17);
            v18 = OUTLINED_FUNCTION_32_0();
            outlined consume of OmniSearchResponseRenderOption(v18, v19);
            if ((v15 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {

          v20 = OUTLINED_FUNCTION_32_0();
          outlined copy of OmniSearchResponseRenderOption(v20, v21);
          outlined copy of OmniSearchResponseRenderOption(v2, 0);
          outlined consume of OmniSearchResponseRenderOption(v2, 0);
          v22 = OUTLINED_FUNCTION_32_0();
          outlined consume of OmniSearchResponseRenderOption(v22, v23);
          if (v5)
          {
            goto LABEL_15;
          }
        }

        return 1;
      }

LABEL_13:
      v8 = OUTLINED_FUNCTION_32_0();
LABEL_14:
      OUTLINED_FUNCTION_7_52(v8, v9);
LABEL_15:
      v10 = OUTLINED_FUNCTION_32_0();
      outlined consume of OmniSearchResponseRenderOption(v10, v11);
      return 0;
  }
}

uint64_t key path setter for OmniSearchResponse.results : OmniSearchResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t OmniSearchResponse.results.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t OmniSearchResponse.renderOption.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of OmniSearchResponseRenderOption(v2, v3);
}

uint64_t OmniSearchResponse.inAppSearchString.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t OmniSearchResponse.__allocating_init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  v12 = a3;
  OUTLINED_FUNCTION_140();
  v15 = swift_allocObject();
  OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(a1, a2, v12, v11, a5, a6, a7);
  return v15;
}

uint64_t OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(uint64_t a1, _OWORD *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  *(v7 + 16) = a1;
  *(v7 + 24) = *a2;
  *(v7 + 40) = a3;
  *(v7 + 41) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  return v7;
}

uint64_t OmniSearchResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x704F7265646E6572 && a2 == 0xEC0000006E6F6974;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974736575517369 && a2 == 0xEF79726575516E6FLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x75516E65704F7369 && a2 == 0xEB00000000797265;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x800000025DBF9A90 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x800000025DBF9AB0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t OmniSearchResponse.CodingKeys.stringValue.getter(char a1)
{
  result = 0x73746C75736572;
  switch(a1)
  {
    case 1:
      result = 0x704F7265646E6572;
      break;
    case 2:
      result = 0x6974736575517369;
      break;
    case 3:
      result = 0x75516E65704F7369;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OmniSearchResponse.deinit()
{

  outlined consume of OmniSearchResponseRenderOption(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t OmniSearchResponse.__deallocating_deinit()
{
  OmniSearchResponse.deinit();
  OUTLINED_FUNCTION_140();

  return swift_deallocClassInstance();
}

uint64_t OmniSearchResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE8ResponseC10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE8ResponseC10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (*(*v3 + 128))(v11);
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
  _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_1(&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, &protocol conformance descriptor for SearchResult, MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v12 = v3[4];
    v15 = v3[3];
    v16 = v12;
    v17 = 1;
    outlined copy of OmniSearchResponseRenderOption(v15, v12);
    lazy protocol witness table accessor for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of OmniSearchResponseRenderOption(v15, v16);
    LOBYTE(v15) = 2;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 3;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 4;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[8];
    v17 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption);
  }

  return result;
}

uint64_t OmniSearchResponse.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_140();
  v2 = swift_allocObject();
  OmniSearchResponse.init(from:)(a1);
  return v2;
}

uint64_t OmniSearchResponse.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE8ResponseC10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE8ResponseC10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchResponse.CodingKeys and conformance OmniSearchResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for OmniSearchResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_1(&lazy protocol witness table cache variable for type [SearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, &protocol conformance descriptor for SearchResult, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_8_54();
    *(v1 + 16) = v9;
    lazy protocol witness table accessor for type OmniSearchResponseRenderOption and conformance OmniSearchResponseRenderOption();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 24) = v9;
    OUTLINED_FUNCTION_5_54(2);
    *(v1 + 40) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    OUTLINED_FUNCTION_5_54(3);
    *(v1 + 41) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    OUTLINED_FUNCTION_5_54(4);
    *(v1 + 48) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 56) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D83808], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_8_54();
    v7 = OUTLINED_FUNCTION_17_7();
    v8(v7);
    *(v1 + 64) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t _sSay10OmniSearch0B6ResultVGSayxGSEsSERzlWlTm_1(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B6ResultVGMd, &_sSay10OmniSearch0B6ResultVGMR);
    _s10OmniSearch0B6ResultVACSEAAWlTm_5(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_5(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OmniSearchResponseRenderOption.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E65746E6F63 && a2 == 0xED00006863726165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x41746E6573657270 && a2 == 0xED0000726577736ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6769626D61736964 && a2 == 0xEC00000065746175;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726577736E416F6ELL && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6574616C706D6574 && a2 == 0xEF726577736E4164)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t OmniSearchResponseRenderOption.CodingKeys.stringValue.getter(char a1)
{
  result = 0x53746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x41746E6573657270;
      break;
    case 2:
      result = 0x6769626D61736964;
      break;
    case 3:
      result = 0x726577736E416F6ELL;
      break;
    case 4:
      result = 0x6574616C706D6574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OmniSearchResponseRenderOption.DisambiguateCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for Decodable.init(from:) in conformance OmniSearchResponse@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OmniSearchResponse.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchResponseRenderOption.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchResponseRenderOption.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OmniSearchResponseRenderOption.DisambiguateCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OmniSearchResponseRenderOption.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO25TemplatedAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO25TemplatedAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v66 = v5;
  v67 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49_3();
  v65 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO18NoAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO18NoAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v63 = v9;
  v64 = v8;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_3();
  v62 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO22DisambiguateCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO22DisambiguateCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v60 = v13;
  v61 = v12;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49_3();
  v59 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO23PresentAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO23PresentAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v57 = v17;
  v58 = v16;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  v20 = v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO07ContentE10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO07ContentE10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v56 = v22;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  v25 = v55 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0dE20ResponseRenderOptionO10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v68 = v26;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  v28 = *v2;
  v29 = v2[1];
  v55[1] = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v29)
  {
    case 1:
      v69 = 0;
      v30 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys();
      OUTLINED_FUNCTION_6_50(&unk_286F866D0, &v69, v31, v32, v30);
      (*(v56 + 8))(v25, v21);
      goto LABEL_8;
    case 2:
      v70 = 1;
      v42 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys();
      OUTLINED_FUNCTION_6_50(&unk_286F866F0, &v70, v43, v44, v42);
      v40 = v58;
      v41 = *(v57 + 8);
      v39 = v20;
      goto LABEL_7;
    case 3:
      v72 = 3;
      v33 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys();
      OUTLINED_FUNCTION_6_50(&unk_286F867A0, &v72, v34, v35, v33);
      goto LABEL_5;
    case 4:
      v73 = 4;
      v36 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys();
      OUTLINED_FUNCTION_6_50(&unk_286F867C0, &v73, v37, v38, v36);
LABEL_5:
      v39 = OUTLINED_FUNCTION_41_10();
LABEL_7:
      v41(v39, v40);
LABEL_8:
      v45 = OUTLINED_FUNCTION_14_35();
      result = v46(v45);
      break;
    default:
      v71 = 2;
      v48 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys();
      v49 = v59;
      OUTLINED_FUNCTION_6_50(&unk_286F86780, &v71, v50, v51, v48);
      v52 = v61;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      (*(v60 + 8))(v49, v52);
      v53 = OUTLINED_FUNCTION_14_35();
      result = v54(v53);
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys()
{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys;
  if (!lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys);
  }

  return result;
}

uint64_t OmniSearchResponseRenderOption.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO25TemplatedAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO25TemplatedAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v92 = v3;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_49_3();
  v94 = v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO18NoAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO18NoAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v88 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_3();
  v93 = v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO22DisambiguateCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO22DisambiguateCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v89 = v9;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49_3();
  v98 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO23PresentAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO23PresentAnswerCodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v86 = v13;
  v87 = v12;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO07ContentE10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO07ContentE10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v85 = v18;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0dE20ResponseRenderOptionO10CodingKeys33_438D7F62115BD621367A3B9A1A4BB7F4LLOGMR);
  OUTLINED_FUNCTION_14();
  v96 = v23;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OmniSearchResponseRenderOption.CodingKeys and conformance OmniSearchResponseRenderOption.CodingKeys();
  v27 = v99;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v82 = v17;
  v83 = v21;
  v84 = v16;
  v28 = v97;
  v99 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch25AnswerSynthesisXPCRequestO10CodingKeys33_18ED8F970BA16618CFCD4DE038CDDD96LLO_Tt1g5();
  if (v31 == v32 >> 1)
  {
    goto LABEL_7;
  }

  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return result;
  }

  v81 = *(v30 + v31);
  specialized ArraySlice.subscript.getter();
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_7:
    v47 = type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v49 = &type metadata for OmniSearchResponseRenderOption;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_1_84();
    v51(v50);
    a1 = v99;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v37 = v95;
  switch(v81)
  {
    case 1:
      v101 = 1;
      v68 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.PresentAnswerCodingKeys and conformance OmniSearchResponseRenderOption.PresentAnswerCodingKeys();
      OUTLINED_FUNCTION_2_74(&unk_286F866F0, &v101, v69, v70, v68);
      swift_unknownObjectRelease();
      v73 = OUTLINED_FUNCTION_41_10();
      v74(v73);
      v75 = OUTLINED_FUNCTION_1_84();
      v76(v75);
      v45 = 0;
      v46 = 2;
      break;
    case 2:
      v102 = 2;
      v58 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.DisambiguateCodingKeys and conformance OmniSearchResponseRenderOption.DisambiguateCodingKeys();
      OUTLINED_FUNCTION_2_74(&unk_286F86780, &v102, v59, v60, v58);
      v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v72 = v96;
      v45 = v71;
      v46 = v77;
      swift_unknownObjectRelease();
      v78 = OUTLINED_FUNCTION_16_43();
      v79(v78);
      (*(v72 + 8))(v26, v22);
      break;
    case 3:
      v103 = 3;
      v61 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.NoAnswerCodingKeys and conformance OmniSearchResponseRenderOption.NoAnswerCodingKeys();
      OUTLINED_FUNCTION_2_74(&unk_286F867A0, &v103, v62, v63, v61);
      swift_unknownObjectRelease();
      v64 = OUTLINED_FUNCTION_41_10();
      v65(v64, v90);
      v66 = OUTLINED_FUNCTION_1_84();
      v67(v66);
      v45 = 0;
      v46 = 3;
      break;
    case 4:
      v104 = 4;
      v52 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys and conformance OmniSearchResponseRenderOption.TemplatedAnswerCodingKeys();
      v53 = v94;
      OUTLINED_FUNCTION_2_74(&unk_286F867C0, &v104, v54, v55, v52);
      swift_unknownObjectRelease();
      (*(v92 + 8))(v53, v28);
      v56 = OUTLINED_FUNCTION_1_84();
      v57(v56);
      v45 = 0;
      v46 = 4;
      break;
    default:
      v100 = 0;
      v38 = lazy protocol witness table accessor for type OmniSearchResponseRenderOption.ContentSearchCodingKeys and conformance OmniSearchResponseRenderOption.ContentSearchCodingKeys();
      OUTLINED_FUNCTION_2_74(&unk_286F866D0, &v100, v39, v40, v38);
      swift_unknownObjectRelease();
      v41 = OUTLINED_FUNCTION_41_10();
      v42(v41, v82);
      v43 = OUTLINED_FUNCTION_1_84();
      v44(v43);
      v45 = 0;
      v46 = 1;
      break;
  }

  *v37 = v45;
  v37[1] = v46;
  return __swift_destroy_boxed_opaque_existential_1Tm(v99);
}

uint64_t get_enum_tag_for_layout_string_10OmniSearch0aB20ResponseRenderOptionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for OmniSearchResponseRenderOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OmniSearchResponseRenderOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchResponseRenderOption.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OmniSearchResponseRenderOption.DisambiguateCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for OmniSearchResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_6_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_7_52(uint64_t a1, uint64_t a2)
{
  outlined copy of OmniSearchResponseRenderOption(a1, a2);
  outlined copy of OmniSearchResponseRenderOption(v2, v3);

  return outlined consume of OmniSearchResponseRenderOption(v2, v3);
}

uint64_t OUTLINED_FUNCTION_8_54()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for SearchResult(0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

id one-time initialization function for shared(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for OmniSearchService()) init];
  static OmniSearchService.shared = result;
  return result;
}

id OmniSearchService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static OmniSearchService.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static OmniSearchService.shared;

  return v1;
}

uint64_t key path getter for OmniSearchService.intermediateCallback : OmniSearchService@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for OmniSearchService.intermediateCallback : OmniSearchService(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  sub_25D875F08(v3, v4);
  return v7(v6, v5);
}

uint64_t OmniSearchService.intermediateCallback.getter()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_107();
  sub_25D875F08(v0, v1);
  return OUTLINED_FUNCTION_107();
}

uint64_t OmniSearchService.intermediateCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_intermediateCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @async (@guaranteed [SearchResult], @guaranteed String?) -> (@owned [SearchResult], @error @owned Error))?(v6, v7);
}

uint64_t OmniSearchService.init()()
{
  swift_getObjectType();
  OmniSearchService.__allocating_init(eagerResolutionEnabled:)();
  v1 = v0;
  OUTLINED_FUNCTION_94();
  swift_deallocPartialClassInstance();
  return v1;
}

void OmniSearchService.__allocating_init(eagerResolutionEnabled:)()
{
  OUTLINED_FUNCTION_155();
  v58 = v0;
  v56 = v1;
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_183_7();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v6 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v6, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v7 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    *swift_slowAlloc() = 0;
    v8 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_265_4(&dword_25D85C000, v9, v10, v8, "OmniSearchService.init", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  v13 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v13);
  OUTLINED_FUNCTION_93_6();
  OSSignpostIntervalState.init(id:isOpen:)();
  v14 = OUTLINED_FUNCTION_116_0();
  v15(v14);
  v16 = type metadata accessor for SageSearch();
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  v17 = SageSearch.__allocating_init()();
  v18 = objc_opt_self();
  v19 = [v18 sharedSession];
  type metadata accessor for FeatureFlagService();
  swift_allocObject();
  OUTLINED_FUNCTION_42_2();
  v20 = type metadata accessor for GlobalSearchClient();
  v21 = swift_allocObject();
  v66 = v16;
  v67 = &protocol witness table for SageSearch;
  *&v65 = v17;
  *&v22 = OUTLINED_FUNCTION_13(v21);
  *(v23 + 88) = v22;
  v24 = v23 + 88;
  outlined init with take of ResponseOverrideMatcherProtocol(&v65, v21 + 32);
  *(v21 + 72) = v19;
  *(v21 + 80) = v3 + 8;
  OUTLINED_FUNCTION_147_2(v24, v64);
  outlined assign with take of SearchResultItem?(&v68, v24, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E7Service_pGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E7Service_pGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25DBC8400;
  *(v25 + 56) = &type metadata for LocalSearchService;
  *(v25 + 64) = &protocol witness table for LocalSearchService;
  v26 = swift_allocObject();
  *(v25 + 32) = v26;

  LocalSearchService.init(maxItemCount:)(10, 0, v26 + 16);
  *(v25 + 96) = &type metadata for UCGSearchService;
  *(v25 + 104) = &protocol witness table for UCGSearchService;
  v27 = swift_allocObject();
  *(v25 + 72) = v27;
  *(v27 + 16) = 1;
  *(v27 + 24) = 3;
  *(v27 + 32) = 0;
  *(v27 + 40) = 1;
  *(v27 + 48) = OUTLINED_FUNCTION_144_11();
  *(v25 + 136) = v20;
  *(v25 + 144) = &protocol witness table for GlobalSearchClient;
  *(v25 + 112) = v21;
  v57 = v18;
  if (v56)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v28 = SageSearch.__allocating_init()();
    v29 = [v18 sharedSession];
    v30 = OUTLINED_FUNCTION_144_11();
    v31 = swift_allocObject();
    v31[7] = v16;
    v31[8] = &protocol witness table for SageSearch;
    v31[9] = v29;
    v31[4] = v28;
    *&v32 = OUTLINED_FUNCTION_13(v31);
    *(v33 + 88) = v32;
    v34 = v33 + 88;
    *(v33 + 80) = v30;
    OUTLINED_FUNCTION_147_2(v33 + 88, &v65);
    outlined assign with take of SearchResultItem?(&v68, v34, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
    swift_endAccess();
    v35 = type metadata accessor for GlobalResolutionService();
    OUTLINED_FUNCTION_128_2();
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    v37 = &protocol witness table for GlobalResolutionService;
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v36 = 0;
    *(&v68 + 1) = 0;
    *&v69 = 0;
  }

  *(&v69 + 1) = v35;
  v70 = v37;
  *&v68 = v36;
  OUTLINED_FUNCTION_144_11();
  OUTLINED_FUNCTION_42_2();
  v38 = type metadata accessor for AnswerResolver();
  OUTLINED_FUNCTION_188_8(v38);
  AnswerResolver.init(resolutionService:featureFlagService:)(&v68);
  *(&v69 + 1) = v38;
  v70 = &protocol witness table for AnswerResolver;
  *&v68 = v39;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v40 = static LLMQueryParser.shared;
  v66 = type metadata accessor for LLMQueryParser();
  v67 = &protocol witness table for LLMQueryParser;
  *&v65 = v40;
  v41 = one-time initialization token for shared;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = static AnswerSynthesisController.shared;
  v64[3] = type metadata accessor for AnswerSynthesisController();
  v64[4] = &protocol witness table for AnswerSynthesisController;
  v64[0] = v42;
  v43 = OUTLINED_FUNCTION_144_11();
  type metadata accessor for ResultHydrator();
  OUTLINED_FUNCTION_112_2();

  v63[3] = v41;
  v63[4] = &protocol witness table for ResultHydrator;
  v63[0] = ResultHydrator.__allocating_init()();
  v62 = 0;
  v61 = 0u;
  v60 = 0u;
  v44 = SageSearch.__allocating_init()();
  v45 = [v57 &selRef_setCompletionHandler_ + 5];
  v46 = OUTLINED_FUNCTION_144_11();
  v47 = swift_allocObject();
  v47[7] = v16;
  v47[8] = &protocol witness table for SageSearch;
  v47[9] = v45;
  v47[4] = v44;
  *&v48 = OUTLINED_FUNCTION_13(v47);
  *(v49 + 88) = v48;
  v50 = v49 + 88;
  *(v49 + 80) = v46;
  OUTLINED_FUNCTION_147_2(v49 + 88, &v59);
  outlined assign with take of SearchResultItem?(&v60, v50, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMd, &_s10OmniSearch0b10ToolGlobalB3XPC_pSgMR);
  swift_endAccess();
  v51 = type metadata accessor for GlobalResolutionService();
  OUTLINED_FUNCTION_128_2();
  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  *(&v61 + 1) = &type metadata for RequestedPropertyController;
  v62 = &protocol witness table for RequestedPropertyController;
  v53 = swift_allocObject();
  *&v60 = v53;
  v53[5] = v51;
  v53[6] = &protocol witness table for GlobalResolutionService;
  v53[2] = v52;
  Parser = type metadata accessor for DefaultSpotlightQueryParser();
  OUTLINED_FUNCTION_128_2();
  v55 = swift_allocObject();
  *(v55 + 16) = [objc_opt_self() defaultManager];
  v53[10] = Parser;
  v53[11] = &protocol witness table for DefaultSpotlightQueryParser;
  v53[7] = v55;
  (*(v58 + 176))(v25, &v68, 10, 0, 0, &v65, v64, v43, v63, &v60);

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_148();
}

id OmniSearchService.__allocating_init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  OUTLINED_FUNCTION_226_4();
  v14 = objc_allocWithZone(v10);
  v15 = OUTLINED_FUNCTION_17_17();
  return OmniSearchService.init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)(v15, v16, v17, v18, a5, a6, a7, a8, a9, a10);
}

id OmniSearchService.init(searchServices:answerResolver:maxPerSourceLimit:intermediateCallback:queryParser:answerSynthesisController:featureFlagService:resultHydrator:requestedPropertyController:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v17 = &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_intermediateCallback];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices] = a1;
  outlined init with copy of ChatMessageRecord(a2, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerResolver]);
  *&v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_maxPerSourceLimit] = a3;
  swift_beginAccess();
  *v17 = a4;
  *(v17 + 1) = a5;
  outlined init with copy of ChatMessageRecord(a7, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController]);
  *&v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_featureFlagService] = a8;
  outlined init with copy of ChatMessageRecord(a9, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_resultHydrator]);
  outlined init with copy of ChatMessageRecord(a10, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_requestedPropertyController]);
  outlined init with copy of ChatMessageRecord(a6, &v10[OBJC_IVAR____TtC10OmniSearch17OmniSearchService_queryParser]);
  v21.receiver = v10;
  v21.super_class = type metadata accessor for OmniSearchService();
  v18 = objc_msgSendSuper2(&v21, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v18;
}

Swift::Void __swiftcall OmniSearchService.prewarm()()
{
  OUTLINED_FUNCTION_155();
  v2 = v0;
  v3 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_109();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_183_7();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v11 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v11, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v12 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    *swift_slowAlloc() = 0;
    v13 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_265_4(&dword_25D85C000, v14, v15, v13, "OmniSearchService.prewarm", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  (*(v5 + 16))(v9, v1, v3);
  v16 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v16);
  OSSignpostIntervalState.init(id:isOpen:)();
  v17 = OUTLINED_FUNCTION_116_1();
  v18(v17);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v19, static Logging.search);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_77_5(v21))
  {
    v22 = OUTLINED_FUNCTION_173_0();
    *v22 = 67109120;
    v22[1] = qos_class_self();
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v23, v24, v25, v26, v27, 8u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v28 = *(v2 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v28 + 32;
    do
    {
      outlined init with copy of ChatMessageRecord(v30, v33);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      v31 = OUTLINED_FUNCTION_54_0();
      v32(v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v30 += 40;
      --v29;
    }

    while (v29);
  }

  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_148();
}

uint64_t OmniSearchService.search(_:rewrittenQuery:matchedEntities:sources:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v1[49] = v4;
  v1[50] = v0;
  v1[47] = v5;
  v1[48] = v6;
  v1[45] = v7;
  v1[46] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v9);
  v1[51] = OUTLINED_FUNCTION_160();
  v1[52] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v11 = OUTLINED_FUNCTION_199();
  v12 = *v3;
  v1[53] = v11;
  v1[54] = v12;
  v13 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v13);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *v6 = *v1;
  v5[56] = v0;

  v7 = v4[53];
  if (v0)
  {
    memcpy(v5 + 16, v5 + 2, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 16));
  }

  else
  {
    v5[57] = v3;
    memcpy(v5 + 30, v5 + 2, 0x69uLL);
    outlined destroy of OmniSearchOptions((v5 + 30));
  }

  outlined destroy of EagerResolutionService?(v7, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v8);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_133();
  v1 = (*(v0 + 128))();

  OUTLINED_FUNCTION_62();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

void OmniSearchService.search(_:rewrittenQuery:matchedEntities:sources:)()
{
  OUTLINED_FUNCTION_61_0();
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(v0 + 352) = v1;
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_32_0();
  outlined init with copy of SpotlightRankingItem?(v11, v12, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  InteractionMode.init(interactionMode:)(v2);
  v13 = OUTLINED_FUNCTION_211_3();
  outlined destroy of EagerResolutionService?(v13, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_254_3(1);
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_155_9();
  v16 = *((*MEMORY[0x277D85000] & v14) + 0xE0) + **((*MEMORY[0x277D85000] & v14) + 0xE0);
  v15 = swift_task_alloc();
  *(v0 + 440) = v15;
  *v15 = v0;
  v15[1] = OmniSearchService.search(_:rewrittenQuery:matchedEntities:sources:);
  OUTLINED_FUNCTION_49_4(*(v0 + 360));

  __asm { BRAA            X8, X16 }
}

uint64_t OmniSearchService.search(_:rewrittenQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v1[51] = v4;
  v1[52] = v0;
  v1[49] = v5;
  v1[50] = v6;
  v1[47] = v7;
  v1[48] = v8;
  v1[45] = v9;
  v1[46] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v11);
  v1[53] = OUTLINED_FUNCTION_160();
  v12 = swift_task_alloc();
  v13 = *v3;
  v1[54] = v12;
  v1[55] = v13;
  v14 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v14);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  v4[57] = v0;

  if (v0)
  {
    memcpy(v4 + 16, v4 + 2, 0x69uLL);
    outlined destroy of OmniSearchOptions((v4 + 16));
    v8 = OUTLINED_FUNCTION_29();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {
    memcpy(v4 + 30, v4 + 2, 0x69uLL);
    outlined destroy of OmniSearchOptions((v4 + 30));

    OUTLINED_FUNCTION_62();

    return v9(v1);
  }
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

void OmniSearchService.search(_:rewrittenQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:)()
{
  OUTLINED_FUNCTION_159();
  v1 = *(v0 + 424);
  *(v0 + 352) = *(v0 + 440);
  type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_107();
  outlined init with copy of SpotlightRankingItem?(v6, v7, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  LOBYTE(v1) = InteractionMode.init(interactionMode:)(v1);
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v8, v9, v10);
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_254_3(1);
  *(v0 + 56) = v1;
  OUTLINED_FUNCTION_155_9();
  v13 = *((*MEMORY[0x277D85000] & v11) + 0xE0) + **((*MEMORY[0x277D85000] & v11) + 0xE0);
  v12 = swift_task_alloc();
  *(v0 + 448) = v12;
  *v12 = v0;
  v12[1] = OmniSearchService.search(_:rewrittenQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:);
  OUTLINED_FUNCTION_49_4(*(v0 + 360));

  __asm { BRAA            X8, X16 }
}

uint64_t OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, _OWORD *a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78();
  *(v13 + 304) = a12;
  *(v13 + 312) = v12;
  *(v13 + 288) = v14;
  *(v13 + 296) = a9;
  *(v13 + 272) = v15;
  *(v13 + 280) = v16;
  *(v13 + 256) = v17;
  *(v13 + 264) = v18;
  *(v13 + 240) = v19;
  *(v13 + 248) = v20;
  *(v13 + 232) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v22);
  *(v13 + 320) = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for UserQuery(0);
  *(v13 + 328) = v23;
  OUTLINED_FUNCTION_114(v23);
  *(v13 + 336) = OUTLINED_FUNCTION_160();
  *(v13 + 344) = swift_task_alloc();
  v24 = type metadata accessor for OSSignpostID();
  *(v13 + 352) = v24;
  OUTLINED_FUNCTION_21(v24);
  *(v13 + 360) = v25;
  *(v13 + 368) = OUTLINED_FUNCTION_160();
  v26 = swift_task_alloc();
  v27 = a11[2];
  *(v13 + 392) = a11[3];
  v28 = a11[1];
  *(v13 + 128) = *a11;
  *(v13 + 144) = v28;
  v29 = a11[4];
  v30 = a11[5];
  *(v13 + 160) = v27;
  *(v13 + 176) = v29;
  v31 = *a10;
  *(v13 + 376) = v26;
  *(v13 + 384) = v31;
  *(v13 + 192) = v30;
  *(v13 + 201) = *(a11 + 89);
  v32 = OUTLINED_FUNCTION_29();
  return OUTLINED_FUNCTION_266_3(v32);
}

uint64_t OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v15 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v15, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v16 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    OUTLINED_FUNCTION_51_5();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v17);
    v18 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v19, v20, v18, "OmniSearchService.search", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v21 = OUTLINED_FUNCTION_9_27();
  v22(v21);
  v23 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v23);
  OUTLINED_FUNCTION_45_4();
  *(v14 + 408) = OSSignpostIntervalState.init(id:isOpen:)();
  v24 = OUTLINED_FUNCTION_67_19();
  v25(v24);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v26, static Logging.search);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v28))
  {
    v29 = OUTLINED_FUNCTION_173_0();
    *v29 = 67109120;
    v29[1] = qos_class_self();
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v30, v31, v32, v33, v34, 8u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v35 = *(v14 + 336);
  v36 = *(v14 + 320);
  v37 = *(v14 + 280);
  v38 = *(v14 + 256);
  v40 = *(v14 + 232);
  v39 = *(v14 + 240);

  outlined init with copy of SpotlightRankingItem?(v37, v36, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  *v35 = v40;
  v35[1] = v39;
  if (!v38)
  {
    goto LABEL_14;
  }

  v42 = *(v14 + 248);
  v41 = *(v14 + 256);
  v43 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v43 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    v44 = *(v14 + 336);
    *(v44 + 16) = v42;
    *(v44 + 24) = v41;
  }

  else
  {
LABEL_14:
    v45 = *(v14 + 336);
    v46 = *(v14 + 240);
    *(v45 + 16) = *(v14 + 232);
    *(v45 + 24) = v46;
  }

  v48 = *(v14 + 392);
  v47 = *(v14 + 400);
  v49 = *(v14 + 336);
  v70 = *(v14 + 344);
  v72 = *(v14 + 384);
  v51 = *(v14 + 320);
  v50 = *(v14 + 328);
  v52 = *(v14 + 312);
  v53 = *(v14 + 272);
  *(v49 + 32) = *(v14 + 264);
  *(v49 + 40) = v53;
  outlined init with copy of SpotlightRankingItem?(v51, v49 + *(v50 + 28), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v54 = (v49 + *(v50 + 32));
  *v54 = v48;
  v54[1] = v47;

  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_62_3();
  UtteranceNormalizer.init(locale:)();
  outlined destroy of EagerResolutionService?(v51, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_7_53();
  outlined init with take of UserQuery(v49, v70);
  *(v14 + 224) = v72;
  v55 = *(v14 + 144);
  *(v14 + 16) = *(v14 + 128);
  *(v14 + 32) = v55;
  v56 = *(v14 + 176);
  *(v14 + 48) = *(v14 + 160);
  *(v14 + 64) = v48;
  *(v14 + 72) = v47;
  v57 = *(v14 + 192);
  *(v14 + 80) = v56;
  *(v14 + 96) = v57;
  *(v14 + 105) = *(v14 + 201);
  v58 = *((*MEMORY[0x277D85000] & *v52) + 0xE8);
  v71 = (*MEMORY[0x277D85000] & *v52) + 232;
  v73 = v58 + *v58;
  v59 = swift_task_alloc();
  *(v14 + 416) = v59;
  *v59 = v14;
  v59[1] = OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
  OUTLINED_FUNCTION_49_4(*(v14 + 344));
  OUTLINED_FUNCTION_83_0();

  return v66(v60, v61, v62, v63, v64, v65, v66, v67, a9, v71, v73, a12, a13, a14);
}

uint64_t OmniSearchService.search(_:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v4 + 424) = v0;

  if (!v0)
  {
    *(v4 + 432) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v8);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_204();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v1[111] = v0;
  v1[110] = v6;
  v1[109] = v7;
  v1[108] = v8;
  v9 = type metadata accessor for UserQuery(0);
  v1[112] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[113] = v10;
  v1[114] = *(v11 + 64);
  v1[115] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_114(v12);
  v1[116] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_114(v13);
  v1[117] = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for IntentApplication();
  v1[118] = v14;
  OUTLINED_FUNCTION_21(v14);
  v1[119] = v15;
  v1[120] = OUTLINED_FUNCTION_199();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v16);
  v1[121] = OUTLINED_FUNCTION_199();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v17);
  v1[122] = OUTLINED_FUNCTION_199();
  v1[123] = *v5;
  memcpy(v1 + 2, v3, 0x69uLL);
  v18 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v18);
}

{
  OUTLINED_FUNCTION_230_4();
  v20 = v1;
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v2, static Logging.search);
  outlined init with copy of OmniSearchOptions((v1 + 2), (v1 + 16));
  v3 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  outlined destroy of OmniSearchOptions((v1 + 2));
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    v4 = OUTLINED_FUNCTION_10_23();
    v19[0] = v4;
    *v0 = 136315138;
    OUTLINED_FUNCTION_204_8(v1 + 72);
    outlined init with copy of OmniSearchOptions((v1 + 2), (v1 + 86));
    String.init<A>(describing:)();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v0 + 4) = v5;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v11 = v1[12];
  v1[124] = v11;
  if (v11)
  {
    v1[125] = v1[13];
    v1[126] = swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_219_5();

    return MEMORY[0x2822009F8](v12);
  }

  else
  {
    v14 = v1[110];
    OUTLINED_FUNCTION_204_8(v19);
    OUTLINED_FUNCTION_154_4();
    (*(v15 + 240))(v19, v14);
    OUTLINED_FUNCTION_204_8(v1 + 30);
    v16 = swift_task_alloc();
    v1[129] = v16;
    *v16 = v1;
    v16[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    OUTLINED_FUNCTION_49_4(v1[108]);
    OUTLINED_FUNCTION_219_5();

    return OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)();
  }
}

{
  OUTLINED_FUNCTION_48();
  SearchToolProgressReporter.setupProgress()();
  v0 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v0);
}

{
  OUTLINED_FUNCTION_217_6();
  OUTLINED_FUNCTION_75();
  v1 = v0[109];
  v2 = *(v1 + 16);
  v3 = v1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[127] = v4;
    if (!v2)
    {
      break;
    }

    EntityProperty.wrappedValue.getter();
    v5 = v0[104];
    v6 = v0[105];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10);
      v4 = v11;
    }

    v8 = *(v4 + 16);
    v7 = *(v4 + 24);
    if (v8 >= v7 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v7 > 1);
      v4 = v12;
    }

    *(v4 + 16) = v8 + 1;
    v9 = v4 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    v3 += 16;
    --v2;
  }

  swift_getObjectType();
  v13 = swift_task_alloc();
  v0[128] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_84(v13);
  OUTLINED_FUNCTION_218_6();

  return SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)(v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_230_4();
  v7 = v0;
  v1 = v0[110];
  OUTLINED_FUNCTION_204_8(v6);
  OUTLINED_FUNCTION_154_4();
  (*(v2 + 240))(v6, v1);
  OUTLINED_FUNCTION_204_8(v0 + 30);
  v3 = swift_task_alloc();
  v0[129] = v3;
  *v3 = v0;
  v3[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
  OUTLINED_FUNCTION_49_4(v0[108]);
  OUTLINED_FUNCTION_219_5();

  return OmniSearchService.handleShortCircuitPhotoSearch(for:options:typeIdentifiers:)();
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  v4[130] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_204();

    return MEMORY[0x2822009F8](v8);
  }

  else if (v1)
  {
    OUTLINED_FUNCTION_262_3();

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_204();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = swift_task_alloc();
    v4[131] = v18;
    *v18 = v6;
    v18[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    OUTLINED_FUNCTION_49_4(v4[110]);
    OUTLINED_FUNCTION_204();

    return OmniSearchService.handlePropertyResolutionForHydrationEntity(requestedProperties:)();
  }
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_11();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_261_3();

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_204();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_261_3();

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_204();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v26 = swift_task_alloc();
    *(v5 + 1056) = v26;
    *v26 = v7;
    v26[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    OUTLINED_FUNCTION_49_4(*(v5 + 864));
    OUTLINED_FUNCTION_204();

    return OmniSearchService.handleShortCircuitMusicSearch(for:typeIdentifiers:)(v27, v28);
  }
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1064) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_262_3();

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_204();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_204();

    return MEMORY[0x2822009F8](v15);
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 1112) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 1136) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_204();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_34_4();
  if (v20[133])
  {
    OUTLINED_FUNCTION_46_25();

    OUTLINED_FUNCTION_31_27();
    OUTLINED_FUNCTION_17_4();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v30 = v20[122];
  outlined init with copy of SpotlightRankingItem?(v20[108] + *(v20[112] + 28), v30, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, Entity);
  v33 = v20[122];
  if (EnumTagSinglePayload == 1)
  {

    outlined destroy of EagerResolutionService?(v33, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    v34 = v20[118];

    EntityProperty.wrappedValue.getter();
    v35 = OUTLINED_FUNCTION_93_6();
    v37 = __swift_getEnumTagSinglePayload(v35, v36, v34);
    v38 = v20[121];
    if (!v37)
    {
      v84 = OUTLINED_FUNCTION_194_7();
      v85(v84);
      outlined destroy of EagerResolutionService?(v38, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
      OUTLINED_FUNCTION_5_55();
      v86 = outlined destroy of UserQuery();
      v87 = MEMORY[0x25F898B70](v86);
      v89 = v88;
      v90 = OUTLINED_FUNCTION_179_0();
      v91(v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
      LocalizedStringResource.init(stringLiteral:)();
      v92 = EntityProperty<>.init(title:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
      LocalizedStringResource.init(stringLiteral:)();
      v93 = EntityProperty<>.init(title:)();
      v20[100] = v87;
      v20[101] = v89;
      EntityProperty.wrappedValue.setter();
      v20[102] = 0;
      v20[103] = 0;
      EntityProperty.wrappedValue.setter();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v20[109];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v99 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v99, v100, v101, v102);
        v95 = v103;
      }

      v97 = *(v95 + 16);
      v96 = *(v95 + 24);
      if (v97 >= v96 >> 1)
      {
        v104 = OUTLINED_FUNCTION_22_5(v96);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104, v105, v106, v107);
        v95 = v108;
      }

      v114 = v95;
      *(v95 + 16) = v97 + 1;
      v98 = v95 + 16 * v97;
      *(v98 + 32) = v92;
      *(v98 + 40) = v93;
      goto LABEL_10;
    }

    outlined destroy of EagerResolutionService?(v20[121], &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    OUTLINED_FUNCTION_5_55();
    outlined destroy of UserQuery();
  }

  v114 = v20[109];
LABEL_10:
  v117 = v20[123];
  v39 = v20[116];
  v40 = v20[115];
  v41 = v20[114];
  v42 = v20[113];
  v43 = v20[111];
  v44 = v20[110];
  v45 = v20[108];
  type metadata accessor for RequestedPropertiesMapper();
  v112 = v45;
  v115 = static RequestedPropertiesMapper.resolve(_:query:)(v44, v45);
  static TaskPriority.userInitiated.getter();
  v113 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  OUTLINED_FUNCTION_16_44();
  v111 = v50;
  v51 = OUTLINED_FUNCTION_51_4();
  outlined init with copy of UserQuery(v51, v52);
  v53 = *(v42 + 80);
  v54 = (v53 + 40) & ~v53;
  v110 = v41 + 7;
  v55 = (v54 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v57[4] = v43;
  OUTLINED_FUNCTION_7_53();
  v109 = v58;
  outlined init with take of UserQuery(v40, v59 + v54);
  *(v57 + v55) = v114;
  *(v57 + v56) = v117;
  OUTLINED_FUNCTION_204_8(v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
  *(v57 + ((v56 + 127) & 0xFFFFFFFFFFFFFFF8)) = v115;
  outlined init with copy of OmniSearchOptions((v20 + 2), (v20 + 44));
  v60 = v43;

  v61 = type metadata completion function for DataFilter.FilterResult();
  v116 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10OmniSearch0eF8ResponseCSg_Tt2g5(v61, v62, v39, v63, v57);
  v20[134] = v116;
  static TaskPriority.userInitiated.getter();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v113);
  v67 = v40;
  outlined init with copy of UserQuery(v112, v40);
  v68 = (v53 + 48) & ~v53;
  v69 = (v68 + v110) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v70[2] = 0;
  v70[3] = 0;
  v70[4] = v114;
  v70[5] = v60;
  outlined init with take of UserQuery(v67, v70 + v68);
  *(v70 + v69) = v117;
  OUTLINED_FUNCTION_204_8(v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8));
  outlined init with copy of OmniSearchOptions((v20 + 2), (v20 + 58));
  v71 = v60;
  v72 = type metadata completion function for DataFilter.FilterResult();
  v20[135] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10OmniSearch0eF8ResponseCSg_Tt2g5(v72, v73, v39, v74, v70);
  v75 = swift_task_alloc();
  v20[136] = v75;
  v20[137] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0aB8ResponseCSgMd, &_s10OmniSearch0aB8ResponseCSgMR);
  v20[138] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v75 = v20;
  v75[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x282200430](v76, v77, v78, v79, v80, v81, v82, v83, v109, v39, v110, v111, v112, v113, v114, v116, v117, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_205();
  v52 = v22;
  OUTLINED_FUNCTION_72();
  v23 = *(v20 + 848);
  *(v20 + 1120) = v23;
  if (!v23)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_133();
  v25 = *(v24 + 128);

  v27 = *(v25(v26) + 16);

  if (v27)
  {
    goto LABEL_5;
  }

  if (*(v23 + 32) != 3)
  {
    v38 = OUTLINED_FUNCTION_32_0();
    outlined copy of OmniSearchResponseRenderOption(v38, v39);
    v40 = OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_246_3(v40, v41);

LABEL_11:
    v28 = 1;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_246_3(*(v23 + 24), 3);
LABEL_5:

  if (*(v20 + 120))
  {
    v28 = 0;
LABEL_12:
    *(v20 + 121) = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v20 + 1128) = v42;
    *v42 = v43;
    v42[1] = OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    OUTLINED_FUNCTION_204();

    return MEMORY[0x282200430](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, v20, v21, v52, a17, a18, a19, a20);
  }

  MEMORY[0x25F89FAA0](*(v20 + 1080), *(v20 + 1096), *(v20 + 1104), MEMORY[0x277D84950]);

  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_204();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_259_5();
  OUTLINED_FUNCTION_159();
  if ((*(v19 + 121) & 1) != 0 || !*(v19 + 1120))
  {
    if (*(v19 + 856))
    {

      goto LABEL_11;
    }

    a9 = xmmword_25DBC9A70;
    OUTLINED_FUNCTION_242_4();
    if (UserQuery.inAppSearchString(ecrResults:bundleId:)(v38, v20).value._object)
    {
      OUTLINED_FUNCTION_33_27();
    }

    else
    {
    }

    v21 = Dictionary.init(dictionaryLiteral:)();
    v22 = type metadata accessor for OmniSearchResponse();
    OUTLINED_FUNCTION_188_8(v22);
    OUTLINED_FUNCTION_134_11();
    OmniSearchResponse.init(results:renderOption:isQuestionQuery:isOpenQuery:searchString:perAppSearchStrings:foundProperties:)(v23, v24, v25, v26, v27, v28, v21);
    OUTLINED_FUNCTION_37_3();
  }

  else
  {
  }

LABEL_11:
  OUTLINED_FUNCTION_46_25();

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_198();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, *(&a9 + 1), a10, a11);
}

uint64_t specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__src)
{
  v8[17] = a1;
  v8[16] = a7;
  memcpy(v8 + 2, __src, 0x69uLL);
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0xF8);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  v8[18] = v13;
  *v13 = v8;
  v13[1] = specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);

  return (v15)(a5, a6, v8 + 16, v8 + 2);
}

uint64_t specialized closure #1 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v4 + 152) = v0;

  if (!v0)
  {
    *(v4 + 160) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v8);
}

{
  return OUTLINED_FUNCTION_100_10(*(v0 + 160));
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10OmniSearch0eF8ResponseCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  outlined init with copy of SpotlightRankingItem?(a3, v21 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of EagerResolutionService?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0aB8ResponseCSgMd, &_s10OmniSearch0aB8ResponseCSgMR);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      outlined destroy of EagerResolutionService?(a3, &_sScPSgMd, &_sScPSgMR);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of EagerResolutionService?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0aB8ResponseCSgMd, &_s10OmniSearch0aB8ResponseCSgMR);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a1;
  v8[18] = a4;
  return MEMORY[0x2822009F8](specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:));
}

uint64_t specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_72();
  if (*(*(v0 + 144) + 16))
  {
    **(v0 + 136) = 0;
    OUTLINED_FUNCTION_127();

    return v1();
  }

  else
  {
    static Task<>.checkCancellation()();
    v3 = *(v0 + 176);
    v4 = *(v0 + 152);
    *(v0 + 128) = *(v0 + 168);
    memcpy((v0 + 16), v3, 0x69uLL);
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0x100);
    v8 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = specialized closure #2 in OmniSearchService.search(query:typeIdentifiers:matchedEntities:sources:options:requestedProperties:);
    v7 = OUTLINED_FUNCTION_49_4(*(v0 + 160));

    return v8(v7, v0 + 128);
  }
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_51_19();
  v4 = v3;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v4 + 192) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x2822009F8](v8);
}

{
  return OUTLINED_FUNCTION_100_10(*(v0 + 200));
}

{
  OUTLINED_FUNCTION_127();
  return v0();
}

void OmniSearchService.preflightChecks(options:requestedProperties:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPropertyRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = *(a2 + 16);
  if (!v6)
  {
    return;
  }

  v7 = *a1;
  v25 = *(a1 + 8);
  v8 = *(a1 + 16);
  v24 = *(a1 + 24);
  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  while (2)
  {
    OUTLINED_FUNCTION_49_24();
    v11 = OUTLINED_FUNCTION_116_0();
    outlined init with copy of UserQuery(v11, v12);
    EntityProperty.wrappedValue.getter();
    switch(v26)
    {
      case 7:

        OUTLINED_FUNCTION_2_75();
        outlined destroy of UserQuery();
        goto LABEL_8;
      default:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        OUTLINED_FUNCTION_2_75();
        outlined destroy of UserQuery();
        if ((v13 & 1) == 0)
        {
          v9 += v10;
          if (!--v6)
          {
            return;
          }

          continue;
        }

LABEL_8:
        if ((v25 | v24))
        {
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v14 = type metadata accessor for Logger();
          __swift_project_value_buffer(v14, static Logging.search);
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.error.getter();
          v17 = OUTLINED_FUNCTION_32_9();
          if (os_log_type_enabled(v17, v18))
          {
            OUTLINED_FUNCTION_51_5();
            v19 = swift_slowAlloc();
            *v19 = 0;
            v20 = "Latitude and/or longitude are nil but request is navigation";
            goto LABEL_19;
          }

          goto LABEL_20;
        }

        if (v7 == 0.0 && v8 == 0.0)
        {
          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v21 = type metadata accessor for Logger();
          __swift_project_value_buffer(v21, static Logging.search);
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.error.getter();
          v22 = OUTLINED_FUNCTION_32_9();
          if (os_log_type_enabled(v22, v23))
          {
            OUTLINED_FUNCTION_51_5();
            v19 = swift_slowAlloc();
            *v19 = 0;
            v20 = "Latitude and/or longitude are both 0 but request is navigation";
LABEL_19:
            _os_log_impl(&dword_25D85C000, v15, v16, v20, v19, 2u);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

LABEL_20:

          type metadata accessor for AppIntentError();
          lazy protocol witness table accessor for type AppIntentError and conformance AppIntentError(&lazy protocol witness table cache variable for type AppIntentError and conformance AppIntentError, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
          OUTLINED_FUNCTION_227_3();
          swift_allocError();
          static AppIntentError.PermissionRequired.location(precise:)();
          swift_willThrow();
        }

        return;
    }
  }
}

uint64_t OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v1[765] = v0;
  v1[764] = v6;
  v1[763] = v7;
  v1[762] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v9);
  v1[766] = swift_task_alloc();
  v1[767] = swift_task_alloc();
  v1[768] = swift_task_alloc();
  v10 = type metadata accessor for UserQuery(0);
  v1[769] = v10;
  OUTLINED_FUNCTION_114(v10);
  v1[770] = swift_task_alloc();
  v1[771] = swift_task_alloc();
  v1[772] = swift_task_alloc();
  v1[773] = swift_task_alloc();
  v1[774] = swift_task_alloc();
  v11 = type metadata accessor for Locale();
  v1[775] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[776] = v12;
  v1[777] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for OSSignpostID();
  v1[778] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[779] = v14;
  v1[780] = swift_task_alloc();
  v1[781] = swift_task_alloc();
  v1[782] = *v5;
  memcpy(v1 + 719, v3, 0x69uLL);
  v15 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v15);
}

{
  v185 = v0;
  v1 = v0;
  if (*(v0 + 5854))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v2, static Logging.search);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_11(v4))
    {
      OUTLINED_FUNCTION_51_5();
      v5 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v5);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

LABEL_7:
    OUTLINED_FUNCTION_113_12();

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_161_5();

    __asm { BRAA            X2, X16 }
  }

  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22(&one-time initialization token for searchSignposter);
  }

  v13 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v13, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v14 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_190_6())
  {
    OUTLINED_FUNCTION_51_5();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v15);
    v16 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_193(&dword_25D85C000, v17, v18, v16, "OmniSearchService.localSearch", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v19 = OUTLINED_FUNCTION_9_27();
  v20(v19);
  v21 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_170(v21);
  OUTLINED_FUNCTION_45_4();
  *(v0 + 6264) = OSSignpostIntervalState.init(id:isOpen:)();
  v22 = OUTLINED_FUNCTION_67_19();
  v23(v22);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  *(v0 + 6272) = __swift_project_value_buffer(v24, static Logging.search);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_77_5(v26))
  {
    v27 = OUTLINED_FUNCTION_173_0();
    *v27 = 67109120;
    v27[1] = qos_class_self();
    OUTLINED_FUNCTION_200_5();
    _os_log_impl(v28, v29, v30, v31, v32, 8u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  if (!*(v0 + 5808))
  {
    v33 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    static NSUserDefaults.fallbackLocale.getter(v33, v34, v35, v36, v37);
  }

  v38 = *(v0 + 6216);
  v39 = *(v0 + 6120);

  OUTLINED_FUNCTION_88();
  Locale.init(identifier:)();
  v40 = (v39 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_answerSynthesisController);
  v41 = v1;
  v42 = v40[3];
  v43 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v42);
  (*(v43 + 32))(v38, v42, v43);
  v44 = v41;
  if ((*(v41 + 6256) & 1) == 0)
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_77_5(v46))
    {
      OUTLINED_FUNCTION_51_5();
      v47 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v47);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v53 = OUTLINED_FUNCTION_54_0();
    v54(v53);
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();
    goto LABEL_24;
  }

  v55 = (v41 + 4096);
  OUTLINED_FUNCTION_16_44();
  outlined init with copy of UserQuery(v56, v57);
  memcpy((v41 + 5864), (v41 + 5752), 0x62uLL);
  v58 = *(v41 + 5850);
  *(v41 + 4177) = v58;
  *(v41 + 6376) = *(v41 + 5851);
  *(v41 + 6380) = *(v41 + 5855);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v59 = outlined init with copy of OmniSearchOptions(v41 + 5752, v41 + 5640);
  v181 = (v41 + 4096);
  if ((static NSUserDefaults.forceLLMQU.getter(v59) & 1) != 0 || (v60 = v58, OUTLINED_FUNCTION_47_11(), outlined init with copy of SpotlightRankingItem?(v61, v62, v63, &_s10OmniSearch21StructuredQueryEntityVSgMR), type metadata accessor for StructuredQueryEntity(0), v64 = OUTLINED_FUNCTION_45_4(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, v65, v66), v68 = OUTLINED_FUNCTION_88(), outlined destroy of EagerResolutionService?(v68, v69, &_s10OmniSearch21StructuredQueryEntityVSgMR), EnumTagSinglePayload == 1))
  {
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_173_0();
      *v72 = 67109120;
      *(v72 + 4) = static NSUserDefaults.forceLLMQU.getter(v72) & 1;
      _os_log_impl(&dword_25D85C000, v70, v71, "forceLLMQU enabled (forceLLMQU: %{BOOL}d), or structured query is nil, calling LLMQU to generate structured query", v72, 8u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v73 = *(v44 + 6192);
    v74 = *(v44 + 6176);
    v75 = *(v44 + 6152);
    v76 = *(v44 + 6136);
    v178 = *(v44 + 6184);
    v179 = *(v44 + 6120);

    v182 = v44;
    v78 = *v73;
    v77 = v73[1];
    v79 = v73[2];
    v80 = v73[3];
    v81 = v73[4];
    v82 = v73[5];
    *(v182 + 6280) = type metadata accessor for StructuredQueryEntity(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
    *v74 = v78;
    v74[1] = v77;
    v87 = HIBYTE(v80) & 0xF;
    if ((v80 & 0x2000000000000000) == 0)
    {
      v87 = v79 & 0xFFFFFFFFFFFFLL;
    }

    if (v87)
    {
      v88 = v80;
    }

    else
    {
      v88 = v77;
    }

    if (v87)
    {
      v89 = v79;
    }

    else
    {
      v89 = v78;
    }

    v74[2] = v89;
    v74[3] = v88;

    v74[4] = v81;
    v74[5] = v82;
    outlined init with copy of SpotlightRankingItem?(v76, v74 + *(v75 + 28), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    v90 = (v74 + *(v75 + 32));
    *v90 = 0;
    v90[1] = 0;

    type metadata completion function for DataFilter.FilterResult();
    UtteranceNormalizer.init(locale:)();
    outlined destroy of EagerResolutionService?(v76, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    OUTLINED_FUNCTION_7_53();
    outlined init with take of UserQuery(v74, v178);
    outlined assign with take of UserQuery(v178, v73);
    outlined init with copy of SpotlightRankingItem?(v179 + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_queryParser, v182 + 6048, &_s10OmniSearch12QueryParsing_pSgMd, &_s10OmniSearch12QueryParsing_pSgMR);
    if (*(v182 + 6072))
    {
      __swift_project_boxed_opaque_existential_1((v182 + 6048), *(v182 + 6072));
      OUTLINED_FUNCTION_28_0();
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v182 + 6288) = v91;
      *v91 = v92;
      v91[1] = OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:);
      OUTLINED_FUNCTION_161_5();

      __asm { BRAA            X7, X16 }
    }

    outlined destroy of EagerResolutionService?(v182 + 6048, &_s10OmniSearch12QueryParsing_pSgMd, &_s10OmniSearch12QueryParsing_pSgMR);
    _s10OmniSearch18LLMQUModelResponseVSgWOi0_((v182 + 1888));
    memcpy((v182 + 1264), (v182 + 1888), 0x138uLL);
    outlined init with copy of SpotlightRankingItem?(v182 + 1264, v182 + 2200, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
    v95 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_179_1();
    outlined destroy of EagerResolutionService?(v96, v97, v98);
    if (OUTLINED_FUNCTION_143_8())
    {
      OUTLINED_FUNCTION_51_0();
      __dst[0] = OUTLINED_FUNCTION_10_23();
      _s10OmniSearch18LLMQUModelResponseVSgMd = 136315138;
      memcpy((v182 + 952), (v182 + 1264), 0x138uLL);
      outlined init with copy of SpotlightRankingItem?(v182 + 1264, v182 + 640, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
      v99 = OUTLINED_FUNCTION_63_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v99, v100);
      String.init<A>(describing:)();
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *algn_27FC71E74 = v101;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(__dst[0]);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v107 = *(v182 + 6192);
    v109 = *v107;
    v108 = v107[1];
    v111 = v107[2];
    v110 = v107[3];
    memcpy((v182 + 2512), (v182 + 1264), 0x138uLL);
    if (_s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v182 + 2512) == 1 || (v112 = *(v182 + 2696)) == 0)
    {
      v112 = *(*(v182 + 6192) + 40);
      v180 = *(*(v182 + 6192) + 32);
    }

    else
    {
      v180 = *(v182 + 2688);
    }

    memcpy((v182 + 2824), (v182 + 1264), 0x138uLL);
    v113 = _s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v182 + 2824);
    v114 = *(v182 + 6280);
    v115 = *(v182 + 6128);
    if (v113 == 1)
    {
      v116 = *(v182 + 6128);
      v117 = 1;
    }

    else
    {
      memcpy(__dst, (v182 + 2824), sizeof(__dst));
      memcpy((v182 + 3136), (v182 + 1264), 0x138uLL);
      outlined init with copy of LLMQUModelResponse(v182 + 3136, v182 + 1576);
      LLMQUModelResponse.toStructuredQuery()(v115);
      memcpy((v182 + 3448), __dst, 0x138uLL);
      outlined destroy of LLMQUModelResponse(v182 + 3448);
      v116 = v115;
      v117 = 0;
    }

    __swift_storeEnumTagSinglePayload(v116, v117, 1, v114);
    v118 = *(v182 + 6160);
    *v118 = v109;
    v118[1] = v108;
    v119 = HIBYTE(v110) & 0xF;
    if ((v110 & 0x2000000000000000) == 0)
    {
      v119 = v111 & 0xFFFFFFFFFFFFLL;
    }

    if (v119)
    {
      v109 = v111;
      v108 = v110;
    }

    else
    {
    }

    v120 = *(v182 + 6168);
    v121 = *(v182 + 6160);
    v122 = *(v182 + 6152);
    v123 = *(v182 + 6128);
    v121[2] = v109;
    v121[3] = v108;
    v124 = v181[1760];
    v121[4] = v180;
    v121[5] = v112;
    OUTLINED_FUNCTION_267_1(*(v122 + 28));
    OUTLINED_FUNCTION_39_20(*(v122 + 32));
    type metadata completion function for DataFilter.FilterResult();
    UtteranceNormalizer.init(locale:)();
    outlined destroy of EagerResolutionService?(v123, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    OUTLINED_FUNCTION_7_53();
    outlined init with take of UserQuery(v121, v120);
    v125 = OUTLINED_FUNCTION_62_3();
    outlined assign with take of UserQuery(v125, v126);
    if (v124)
    {
      outlined destroy of EagerResolutionService?(v182 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
      v60 = v181[81];
      v44 = v182;
      v55 = v181;
    }

    else
    {
      v44 = v182;
      if (*(*(v182 + 6112) + 16))
      {
        outlined destroy of EagerResolutionService?(v182 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
        LOBYTE(v127) = 1;
        v55 = v181;
      }

      else
      {
        v55 = v181;
        if (v181[1753] == 1)
        {
          outlined destroy of EagerResolutionService?(v182 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
          LOBYTE(v127) = 1;
        }

        else
        {
          memcpy((v182 + 3760), (v182 + 1264), 0x138uLL);
          if (_s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v182 + 3760) == 1 || (outlined destroy of EagerResolutionService?(v182 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR), v127 = *(v182 + 3792), v127 == 2))
          {
            LOBYTE(v127) = 0;
          }
        }
      }

      v60 = v127 & 1;
    }
  }

  v183 = v60;
  v55[82] = v60;
  v128 = *(*(v44 + 6120) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v129 = *(v128 + 16);
  if (v129)
  {
    v130 = v128 + 32;
    v131 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v130, v44 + 6008);
      OUTLINED_FUNCTION_70_15((v44 + 6008));
      v132 = OUTLINED_FUNCTION_63_21();
      v133(v132);
      v134 = __dst[0];
      OUTLINED_FUNCTION_70_15((v44 + 6008));
      v135 = OUTLINED_FUNCTION_63_21();
      v136(v135);
      if (v134 & __dst[0])
      {
        outlined init with copy of ChatMessageRecord(v44 + 6008, v44 + 5968);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v131 = v140;
        }

        OUTLINED_FUNCTION_182_9();
        if (v138)
        {
          OUTLINED_FUNCTION_22_5(v137);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v131 = v141;
        }

        OUTLINED_FUNCTION_181_8();
        outlined init with take of ResponseOverrideMatcherProtocol((v44 + 5968), v139 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v44 + 6008));
      v130 += 40;
      --v129;
    }

    while (v129);
    v55 = v181;
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  *(v44 + 6304) = v131;
  v142 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_154_4();
  v144 = (*(v143 + 368))();
  if (!v144)
  {
    v168 = v44;
    *(v44 + 6088) = 1;
    memcpy((v168 + 5528), (v168 + 5864), 0x62uLL);
    v55[1530] = v183;
    OUTLINED_FUNCTION_24_31(v44 + 5627);
    memcpy((v168 + 4184), (v168 + 5528), 0x69uLL);
    outlined init with copy of OmniSearchOptions(v168 + 5528, v168 + 4296);
    v169 = swift_task_alloc();
    *(v44 + 6312) = v169;
    *v169 = v44;
    OUTLINED_FUNCTION_45_21(v169);
    OUTLINED_FUNCTION_49_4(*(v44 + 6192));
    OUTLINED_FUNCTION_161_5();

    __asm { BRAA            X5, X16 }
  }

  v145 = v144;

  v146 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_211_3();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    __dst[0] = OUTLINED_FUNCTION_11_26();
    *v142 = 136315138;
    type metadata accessor for SearchResult(0);
    v147 = OUTLINED_FUNCTION_227_3();
    MEMORY[0x25F89F8A0](v147);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_9();

    *(v142 + 4) = v44;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v148, v149, v150, v151, v152, 0xCu);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v153 = *(v44 + 5784);

  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_77_5(v155))
  {
    OUTLINED_FUNCTION_51_5();
    v156 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v156);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v157, v158, v159, v160, v161, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  *(v44 + 6344) = 0;
  *(v44 + 6336) = v145;
  v162 = *(v145 + 16);

  if (v162)
  {

    goto LABEL_83;
  }

  if (!v153)
  {
    v175 = OUTLINED_FUNCTION_83_15();
    v176(v175);

    goto LABEL_93;
  }

  v172 = *(v153 + 16);

  if (!v172)
  {
    v173 = OUTLINED_FUNCTION_83_15();
    v174(v173);
LABEL_93:
    v177 = v55[82];

    OUTLINED_FUNCTION_213_5((v44 + 5416));
    v55[1418] = v177;
    OUTLINED_FUNCTION_24_31(v44 + 5515);
    outlined destroy of OmniSearchOptions(v44 + 5416);
    OUTLINED_FUNCTION_3_68();
    outlined destroy of UserQuery();
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();
LABEL_24:

    goto LABEL_7;
  }

LABEL_83:
  v163 = v55[82];
  OUTLINED_FUNCTION_213_5((v44 + 4632));
  v55[634] = v163;
  OUTLINED_FUNCTION_24_31(v44 + 4731);
  memcpy((v44 + 4744), (v44 + 4632), 0x69uLL);
  outlined init with copy of OmniSearchOptions(v44 + 4632, v44 + 4856);
  v164 = swift_task_alloc();
  *(v44 + 6352) = v164;
  *v164 = v44;
  OUTLINED_FUNCTION_15_44(v164);
  OUTLINED_FUNCTION_196_6();
  OUTLINED_FUNCTION_49_4(v165);
  OUTLINED_FUNCTION_161_5();

  return OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 6296) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  v86 = v0;
  memcpy((v0 + 16), (v0 + 328), 0x138uLL);
  _s10OmniSearch11GeoLocationVSgWOi_();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6048));
  memcpy((v0 + 1264), (v0 + 16), 0x138uLL);
  outlined init with copy of SpotlightRankingItem?(v0 + 1264, v0 + 2200, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_179_1();
  outlined destroy of EagerResolutionService?(v2, v3, v4);
  if (OUTLINED_FUNCTION_143_8())
  {
    OUTLINED_FUNCTION_51_0();
    *__dst = OUTLINED_FUNCTION_10_23();
    _s10OmniSearch18LLMQUModelResponseVSgMd = 136315138;
    OUTLINED_FUNCTION_222_5((v0 + 952));
    outlined init with copy of SpotlightRankingItem?(v0 + 1264, v0 + 640, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
    v5 = OUTLINED_FUNCTION_63_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *algn_27FC71E74 = v7;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(*__dst);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v13 = *(v0 + 6192);
  v15 = *v13;
  v14 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  OUTLINED_FUNCTION_222_5((v0 + 2512));
  if (_s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v0 + 2512) == 1 || (v18 = *(v0 + 2696)) == 0)
  {
    v20 = *(v0 + 6192);
    v19 = *(v20 + 32);
    v18 = *(v20 + 40);
  }

  else
  {
    v19 = *(v0 + 2688);
  }

  OUTLINED_FUNCTION_222_5((v0 + 2824));
  v21 = _s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v0 + 2824);
  v22 = *(v0 + 6280);
  v23 = *(v0 + 6128);
  if (v21 == 1)
  {
    v24 = *(v0 + 6128);
    v25 = 1;
  }

  else
  {
    memcpy(__dst, (v0 + 2824), 0x138uLL);
    OUTLINED_FUNCTION_222_5((v0 + 3136));
    outlined init with copy of LLMQUModelResponse(v0 + 3136, v0 + 1576);
    LLMQUModelResponse.toStructuredQuery()(v23);
    memcpy((v0 + 3448), __dst, 0x138uLL);
    outlined destroy of LLMQUModelResponse(v0 + 3448);
    v24 = v23;
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v22);
  v26 = *(v0 + 6160);
  *v26 = v15;
  v26[1] = v14;
  v27 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v27 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v15 = v17;
    v14 = v16;
  }

  else
  {
  }

  v28 = *(v0 + 6168);
  v29 = *(v0 + 6160);
  v30 = *(v0 + 6152);
  v31 = *(v0 + 6128);
  v29[2] = v15;
  v29[3] = v14;
  v32 = *(v0 + 5856);
  v29[4] = v19;
  v29[5] = v18;
  OUTLINED_FUNCTION_267_1(*(v30 + 28));
  OUTLINED_FUNCTION_39_20(*(v30 + 32));
  type metadata completion function for DataFilter.FilterResult();
  UtteranceNormalizer.init(locale:)();
  outlined destroy of EagerResolutionService?(v31, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_7_53();
  outlined init with take of UserQuery(v29, v28);
  v33 = OUTLINED_FUNCTION_62_3();
  outlined assign with take of UserQuery(v33, v34);
  if (v32)
  {
    outlined destroy of EagerResolutionService?(v0 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
    v35 = *(v0 + 4177);
    v36 = (v0 + 4096);
  }

  else
  {
    if (*(*(v0 + 6112) + 16))
    {
      outlined destroy of EagerResolutionService?(v0 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
      LOBYTE(v37) = 1;
      v36 = (v0 + 4096);
    }

    else
    {
      v36 = (v0 + 4096);
      if (*(v0 + 5849) == 1)
      {
        outlined destroy of EagerResolutionService?(v0 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR);
        LOBYTE(v37) = 1;
      }

      else
      {
        OUTLINED_FUNCTION_222_5((v0 + 3760));
        if (_s10OmniSearch0B12GlobalEntityV15PlaceAttributesVSgWOg(v0 + 3760) == 1 || (outlined destroy of EagerResolutionService?(v0 + 1264, &_s10OmniSearch18LLMQUModelResponseVSgMd, &_s10OmniSearch18LLMQUModelResponseVSgMR), v37 = *(v0 + 3792), v37 == 2))
        {
          LOBYTE(v37) = 0;
        }
      }
    }

    v35 = v37 & 1;
  }

  v84 = v35;
  v36[82] = v35;
  v38 = *(*(v0 + 6120) + OBJC_IVAR____TtC10OmniSearch17OmniSearchService_searchServices);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = v38 + 32;
    v41 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChatMessageRecord(v40, v0 + 6008);
      OUTLINED_FUNCTION_229_5();
      OUTLINED_FUNCTION_70_15((v0 + 6008));
      v42 = OUTLINED_FUNCTION_63_21();
      v43(v42);
      v31 = __dst[0];
      OUTLINED_FUNCTION_229_5();
      OUTLINED_FUNCTION_70_15((v0 + 6008));
      v44 = OUTLINED_FUNCTION_63_21();
      v45(v44);
      if (v31 & __dst[0])
      {
        outlined init with copy of ChatMessageRecord(v0 + 6008, v0 + 5968);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v41 = v49;
        }

        OUTLINED_FUNCTION_182_9();
        if (v47)
        {
          OUTLINED_FUNCTION_22_5(v46);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v41 = v50;
        }

        OUTLINED_FUNCTION_181_8();
        outlined init with take of ResponseOverrideMatcherProtocol((v0 + 5968), v48 + 32);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6008));
      v40 += 40;
      --v39;
    }

    while (v39);
    v36 = (v0 + 4096);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  *(v0 + 6304) = v41;
  OUTLINED_FUNCTION_154_4();
  if (!(*(v51 + 368))())
  {
    OUTLINED_FUNCTION_130_12();
    v36[1530] = v84;
    OUTLINED_FUNCTION_24_31(v0 + 5627);
    memcpy(&_s10OmniSearch21StructuredQueryEntityVSgMR + v0, (v0 + v31), 0x69uLL);
    outlined init with copy of OmniSearchOptions(v0 + v31, v0);
    v73 = swift_task_alloc();
    *(v0 + 6312) = v73;
    *v73 = v0;
    OUTLINED_FUNCTION_45_21(v73);
    OUTLINED_FUNCTION_233_5();
    OUTLINED_FUNCTION_49_4(v74);
    OUTLINED_FUNCTION_132_6();

    __asm { BRAA            X5, X16 }
  }

  v52 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_211_3();

  if (OUTLINED_FUNCTION_259())
  {
    OUTLINED_FUNCTION_51_0();
    *__dst = OUTLINED_FUNCTION_11_26();
    _s10OmniSearch21StructuredQueryEntityVSgMR = 136315138;
    type metadata accessor for SearchResult(0);
    v53 = OUTLINED_FUNCTION_227_3();
    MEMORY[0x25F89F8A0](v53);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_169_9();

    unk_25DBD92C4 = 0;
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
    OUTLINED_FUNCTION_54_26();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v59 = *(v0 + 5784);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_77_5(v61))
  {
    OUTLINED_FUNCTION_51_5();
    v62 = swift_slowAlloc();
    OUTLINED_FUNCTION_157_0(v62);
    OUTLINED_FUNCTION_56_4();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  OUTLINED_FUNCTION_264_4();
  if (v60)
  {

    goto LABEL_43;
  }

  if (!v59)
  {
    v80 = OUTLINED_FUNCTION_57_19();
    (*(v81 + 8))(v80);

LABEL_53:
    OUTLINED_FUNCTION_208_4();

    OUTLINED_FUNCTION_122_10();
    v36[1418] = v59;
    OUTLINED_FUNCTION_24_31(v0 + 5515);
    outlined destroy of OmniSearchOptions(&_s10OmniSearch21StructuredQueryEntityVSgMR + v0);
    OUTLINED_FUNCTION_3_68();
    outlined destroy of UserQuery();
    $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

    OUTLINED_FUNCTION_101_10();

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_132_6();

    __asm { BRAA            X2, X16 }
  }

  v77 = *(v59 + 16);

  if (!v77)
  {
    v78 = OUTLINED_FUNCTION_57_19();
    (*(v79 + 8))(v78);
    goto LABEL_53;
  }

LABEL_43:
  v68 = v36[82];
  OUTLINED_FUNCTION_122_10();
  v36[634] = v68;
  OUTLINED_FUNCTION_24_31(v0 + 4731);
  memcpy((v0 + 4744), (v0 + 4632), 0x69uLL);
  outlined init with copy of OmniSearchOptions(v0 + 4632, v0 + 4856);
  v69 = swift_task_alloc();
  *(v0 + 6352) = v69;
  *v69 = v0;
  OUTLINED_FUNCTION_15_44(v69);
  OUTLINED_FUNCTION_233_5();
  OUTLINED_FUNCTION_49_4(v70);
  OUTLINED_FUNCTION_132_6();

  return OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  *v4 = *v1;
  v3[790] = v5;
  v3[791] = v0;

  if (v0)
  {
    memcpy(v3 + 509, v3 + 523, 0x69uLL);
    outlined destroy of OmniSearchOptions((v3 + 509));
  }

  else
  {
    memcpy(v3 + 565, v3 + 523, 0x69uLL);
    outlined destroy of OmniSearchOptions((v3 + 565));
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v6);
}

void OmniSearchService.localSearch(query:typeIdentifiers:sources:options:requestedProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v103 = (v16 + 4096);
  v104 = v16;
  v17 = *(v16 + 6320);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = v16 + 6376;
  v22 = *(v16 + 6320);
  v102 = v21;
  v23 = -1;
  v24 = -1 << *(v22 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & v18;
  v26 = (63 - v24) >> 6;

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  if (v25)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = *(v19 + 8 * v29);
    ++v27;
    if (v25)
    {
      v27 = v29;
      do
      {
LABEL_8:
        v30 = (*(v22 + 56) + ((v27 << 10) | (16 * __clz(__rbit64(v25)))));
        v31 = *v30;
        v32 = v30[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36, v37, v38, v28);
          v28 = v39;
        }

        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v28);
          v28 = v40;
        }

        v25 &= v25 - 1;
        *(v28 + 16) = v34 + 1;
        v35 = v28 + 16 * v34;
        *(v35 + 32) = v31;
        *(v35 + 40) = v32;
      }

      while (v25);
    }
  }

  v41 = 0;
  v42 = *(v28 + 16);
  v43 = MEMORY[0x277D84F90];
LABEL_15:
  v44 = 16 * v41 + 40;
  while (v42 != v41)
  {
    if (v41 >= *(v28 + 16))
    {
      goto LABEL_67;
    }

    v45 = *(v28 + v44);
    v44 += 16;
    ++v41;
    if (v45)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v48;
      }

      v47 = v43[2];
      v46 = v43[3];
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v46);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v49;
      }

      v43[2] = v47 + 1;
      v43[v47 + 4] = v45;
      goto LABEL_15;
    }
  }

  if (v43[2])
  {
    v50 = v43[4];
  }

  else
  {
    v50 = 0;
  }

  v51 = 0;
  v52 = MEMORY[0x277D84F90];
  v53 = 32;
  while (v42 != v51)
  {
    if (v51 >= *(v28 + 16))
    {
      goto LABEL_68;
    }

    v54 = *(v28 + v53);
    v55 = *(v54 + 16);
    v56 = *(v52 + 16);
    v57 = v56 + v55;
    if (__OFADD__(v56, v55))
    {
      goto LABEL_69;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v57 > *(v52 + 24) >> 1)
    {
      if (v56 <= v57)
      {
        v59 = v56 + v55;
      }

      else
      {
        v59 = v56;
      }

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v59, 1, v52);
      v52 = v60;
    }

    if (*(v54 + 16))
    {
      v61 = (*(v52 + 24) >> 1) - *(v52 + 16);
      type metadata accessor for SearchResult(0);
      if (v61 < v55)
      {
        goto LABEL_71;
      }

      swift_arrayInitWithCopy();

      if (v55)
      {
        v62 = *(v52 + 16);
        v63 = __OFADD__(v62, v55);
        v64 = v62 + v55;
        if (v63)
        {
          goto LABEL_72;
        }

        *(v52 + 16) = v64;
      }
    }

    else
    {

      if (v55)
      {
        goto LABEL_70;
      }
    }

    v53 += 16;
    ++v51;
  }

  v65 = v104;
  v66 = *(v104 + 6192);

  v67 = *(v104 + 5560);
  v68 = OUTLINED_FUNCTION_116_1();
  v70 = Array<A>.dedupeLocalResults(query:)(v68, v69);

  v71 = Array<A>.rankLocalResults(query:)(v66, v70);

  if (v50)
  {
    v72 = *(v50 + 16);

    if (v72)
    {

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_51_0();
        a13 = OUTLINED_FUNCTION_11_26();
        *v66 = 136642819;
        Dictionary.description.getter();

        OUTLINED_FUNCTION_158();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v66 + 4) = v75;
        v65 = v104;
        OUTLINED_FUNCTION_165_6(&dword_25D85C000, v73, v74, "ECR results: %{sensitive}s");
        OUTLINED_FUNCTION_195_6();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        goto LABEL_51;
      }

      goto LABEL_53;
    }
  }

  else
  {
  }

  v73 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v73, v76))
  {
    OUTLINED_FUNCTION_51_5();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_200_5();
    _os_log_impl(v77, v78, v79, v80, v81, 2u);
LABEL_51:
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

LABEL_53:
  *(v65 + 6344) = v50;
  *(v65 + 6336) = v71;
  v82 = *(v71 + 16);

  if (v82)
  {

LABEL_55:
    v83 = v103[82];
    OUTLINED_FUNCTION_213_5((v65 + 4632));
    v103[634] = v83;
    OUTLINED_FUNCTION_24_31(v65 + 4731);
    memcpy((v65 + 4744), (v65 + 4632), 0x69uLL);
    outlined init with copy of OmniSearchOptions(v65 + 4632, v65 + 4856);
    v84 = swift_task_alloc();
    *(v65 + 6352) = v84;
    *v84 = v65;
    OUTLINED_FUNCTION_15_44(v84);
    OUTLINED_FUNCTION_196_6();
    OUTLINED_FUNCTION_49_4(v85);
    OUTLINED_FUNCTION_115();

    OmniSearchService.handleLocalResults(query:typeIdentifiers:localResults:options:requestedProperties:ecrResults:locale:)();
    return;
  }

  if (v67)
  {
    v87 = *(v67 + 16);

    if (v87)
    {
      goto LABEL_55;
    }

    v88 = OUTLINED_FUNCTION_83_15();
    v89(v88);
  }

  else
  {
    v90 = OUTLINED_FUNCTION_83_15();
    v91(v90);
  }

  v92 = v103[82];

  memcpy((v65 + 5416), (v65 + 5864), 0x62uLL);
  v103[1418] = v92;
  *(v65 + 5515) = *v102;
  *(v65 + 5519) = *(v102 + 4);
  outlined destroy of OmniSearchOptions(v65 + 5416);
  OUTLINED_FUNCTION_3_68();
  outlined destroy of UserQuery();
  $defer #1 () in OmniSearchService.init(eagerResolutionEnabled:)();

  OUTLINED_FUNCTION_113_12();
  v105 = v93;

  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_115();

  v96(v94, v95, v96, v97, v98, v99, v100, v101, a9, v102, v103, v105, a13, a14, a15, a16);
}