uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5E7790](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for UsoEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
          v11 = *v10;

          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [UsoEntity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoEntity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoEntity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoEntity] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with take of CorrectionsCustomizing(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CorrectionsParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrectionsParse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UndoAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for UndoAction;
  if (!type metadata singleton initialization cache for UndoAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of Siri_Nlu_External_UserParse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CorrectionsUSOParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrectionsUSOParse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CorrectionsParse(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Siri_Nlu_External_CorrectionOutcome.CorrectionType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for UndoAction(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserParse?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Siri_Nlu_External_UserParse?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_UserParse?)
  {
    type metadata accessor for Siri_Nlu_External_UserParse();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Siri_Nlu_External_UserParse?);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_26(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
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

uint64_t outlined init with copy of CorrectionsContext?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionCandidateTask(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CorrectionCandidateTask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_14_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_17_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_24()
{

  JUMPOUT(0x26D5E7CB0);
}

BOOL OUTLINED_FUNCTION_25(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_32(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_50(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 - 416) = a1 + 16;
  *(v1 - 432) = v2;
}

uint64_t OUTLINED_FUNCTION_52@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1)
{

  return outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(a1, v1, v2);
}

void OUTLINED_FUNCTION_57()
{
  *(v4 + 16) = v0;
  v5 = v4 + 40 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

__n128 OUTLINED_FUNCTION_59()
{
  v2 = *(v0 + 16);
  *(v1 - 160) = *v0;
  *(v1 - 144) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 128) = result;
  *(v1 - 112) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_63()
{

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

void OUTLINED_FUNCTION_69()
{

  JUMPOUT(0x26D5E7790);
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t ReferenceResolutionUtils.resolveReference(usoEntity:)(uint64_t a1)
{
  v155 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_6();
  v144 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_1();
  v142 = v5 - v4;
  v145 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_6();
  v156 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  v139 = v8;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v9);
  v140 = &v134 - v10;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v11);
  v143 = &v134 - v12;
  v13 = type metadata accessor for RRResult();
  OUTLINED_FUNCTION_6();
  v153 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13();
  v146 = v16;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v134 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v151 = &v134 - v21;
  v152 = type metadata accessor for RRQuery();
  OUTLINED_FUNCTION_6();
  v150 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8_1();
  v147 = (v25 - v24);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_13();
  v149 = v26;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v134 - v28;
  v30 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_6();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_1();
  v36 = v35 - v34;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  static Logger.log;
  OSSignpostID.init(log:)();
  v37 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_10_1(v37, &dword_266A4D000, v38, "resolveReference");
  type metadata accessor for ReferenceResolutionClient();
  v39 = ReferenceResolutionClient.__allocating_init()();
  v154 = a1;
  if (dispatch thunk of ReferenceResolutionClient.hasReference(usoEntity:)())
  {
    v136 = v19;
    v138 = v36;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = __swift_project_value_buffer(v40, static Logger.logger);

    v137 = v41;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    v44 = os_log_type_enabled(v42, v43);
    v141 = v30;
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_9_1();
      v47 = v46;
      v157[0] = v46;
      *v45 = 136315138;
      v48 = UsoTask.verbString.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v157);
      LODWORD(v135) = v43;
      v51 = v13;
      v52 = v39;
      v53 = v29;
      v54 = v32;
      v55 = v50;

      *(v45 + 4) = v55;
      v32 = v54;
      v29 = v53;
      v39 = v52;
      v13 = v51;
      _os_log_impl(&dword_266A4D000, v42, v135, "[ReferenceResolutionUtils.resolveReference] Reference resolver detects a reference in entity %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_5_2();
      v30 = v141;
      OUTLINED_FUNCTION_5_2();
    }

    v56 = UsoTask.verbString.getter();
    v58 = v57;
    type metadata accessor for UsoEntityBuilder();
    swift_allocObject();
    v154 = MEMORY[0x26D5E7310](v56, v58);
    v59 = MEMORY[0x26D5E7340]();
    if (!v59)
    {

      v79 = OUTLINED_FUNCTION_6_3(v78);
      v80 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_10();
        v82 = OUTLINED_FUNCTION_12_1();
        v149 = v39;
        v83 = v82;
        v157[0] = v82;
        *v81 = 136315138;
        v84 = UsoTask.verbString.getter();
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v157);

        *(v81 + 4) = v86;
        _os_log_impl(&dword_266A4D000, v79, v80, "[ReferenceResolutionUtils.resolveReference] Failed to create query entity for %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_5_2();
      }

      goto LABEL_22;
    }

    v60 = v59;
    v134 = v13;
    v61 = v147;
    *v147 = v59;
    v62 = v150;
    v63 = v152;
    (*(v150 + 13))(v61, *MEMORY[0x277D5FEA8], v152);
    v64 = type metadata accessor for RRFilter();
    v65 = v151;
    __swift_storeEnumTagSinglePayload(v151, 1, 1, v64);

    dispatch thunk of ReferenceResolutionClient.resolve(reference:filter:)();
    outlined destroy of RRFilter?(v65, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
    (*(v62 + 8))(v61, v63);
    v66 = v149;
    outlined init with copy of Result<RRResult, Error>(v29, v149);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v135 = v60;
    if (EnumCaseMultiPayload == 1)
    {
      v150 = v29;
      v68 = *v66;
      v69 = OUTLINED_FUNCTION_6_3(*v66);
      v70 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v69, v70))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_9_1();
        v72 = v71;
        v73 = OUTLINED_FUNCTION_12_1();
        v157[0] = v73;
        *v72 = 136315138;
        swift_getErrorValue();
        v74 = Error.localizedDescription.getter();
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v157);

        *(v72 + 4) = v76;
        _os_log_impl(&dword_266A4D000, v69, v70, "[ReferenceResolutionUtils.resolveReference] SRR failed %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v73);
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_5_2();
      }

      else
      {
      }

      v29 = v150;
      v30 = v141;
LABEL_21:
      OUTLINED_FUNCTION_11_0();

      outlined destroy of RRFilter?(v29, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
LABEL_22:
      v77 = MEMORY[0x277D84F90];
LABEL_23:
      v36 = v138;
      goto LABEL_24;
    }

    v87 = v153;
    v88 = v136;
    v89 = v134;
    (*(v153 + 32))(v136, v66, v134);
    v90 = v146;
    (*(v87 + 16))(v146, v88, v89);
    v91 = (*(v87 + 88))(v90, v89);
    if (v91 == *MEMORY[0x277D5FEC0])
    {
      v150 = v29;
      OUTLINED_FUNCTION_9_1();
      v148 = v32;
      (*(v87 + 96))(v90, v89);
      v92 = v156;
      v93 = v90;
      v94 = v143;
      v95 = v145;
      (*(v156 + 32))(v143, v93, v145);
      v96 = (*(v92 + 16))(v140, v94, v95);
      v97 = OUTLINED_FUNCTION_6_3(v96);
      v98 = static os_log_type_t.debug.getter();
      v99 = os_log_type_enabled(v97, v98);
      v30 = v141;
      if (v99)
      {
        v100 = OUTLINED_FUNCTION_10();
        v151 = OUTLINED_FUNCTION_12_1();
        v157[0] = v151;
        *v100 = 136315138;
        v101 = v92;
        v102 = v142;
        RRCandidate.entity.getter();
        RREntity.usoEntity.getter();
        (*(v144 + 8))(v102, v155);
        v147 = UsoEntity.debugString.getter();
        v149 = v39;
        v104 = v103;

        v105 = OUTLINED_FUNCTION_4_4(*(v101 + 8));
        v106(v105);
        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v104, v157);

        *(v100 + 4) = v107;
        _os_log_impl(&dword_266A4D000, v97, v98, "[ReferenceResolutionUtils.resolveReference] found match %s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v151);
        v89 = v134;
        OUTLINED_FUNCTION_5_2();
        v88 = v136;
        OUTLINED_FUNCTION_5_2();

        OUTLINED_FUNCTION_5_3();
      }

      else
      {

        v117 = OUTLINED_FUNCTION_4_4(*(v92 + 8));
        v118(v117);
        OUTLINED_FUNCTION_5_3();
        v102 = v142;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_266A62210;
      v119 = v143;
      RRCandidate.entity.getter();
      v120 = RREntity.usoEntity.getter();
      (*(v144 + 8))(v102, v155);
      *(v77 + 32) = v120;
      OUTLINED_FUNCTION_11_0();

      (v156)(v119, v145);
      (*(v153 + 8))(v88, v89);
      outlined destroy of RRFilter?(v150, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v32 = v148;
      goto LABEL_23;
    }

    v30 = v141;
    if (v91 != *MEMORY[0x277D5FEC8])
    {
      v121 = OUTLINED_FUNCTION_6_3(v91);
      v122 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_266A4D000, v121, v122, "[ReferenceResolutionUtils.resolveReference] Failed to find match", v123, 2u);
        v88 = v136;
        OUTLINED_FUNCTION_5_2();
      }

      v124 = *(v153 + 8);
      v124(v88, v89);
      v124(v146, v89);
      goto LABEL_21;
    }

    v150 = v29;
    v111 = v153;
    (*(v153 + 96))(v90, v89);
    v112 = *v90;

    v114 = OUTLINED_FUNCTION_6_3(v113);
    v115 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = OUTLINED_FUNCTION_10();
      *v116 = 134217984;
      *(v116 + 4) = v112[2];

      _os_log_impl(&dword_266A4D000, v114, v115, "[ReferenceResolutionUtils.resolveReference] found plural match, number of matches %ld", v116, 0xCu);
      OUTLINED_FUNCTION_5_2();
    }

    else
    {
    }

    v125 = v112[2];
    v126 = v144;
    if (!v125)
    {
      OUTLINED_FUNCTION_11_0();

      (*(v111 + 8))(v136, v89);
      outlined destroy of RRFilter?(v150, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
      v77 = MEMORY[0x277D84F90];
      v30 = v141;
      goto LABEL_23;
    }

    v149 = v39;
    OUTLINED_FUNCTION_9_1();
    v148 = v32;
    v157[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v127 = *(v156 + 16);
    v128 = *(v156 + 80);
    v147 = v112;
    v129 = v112 + ((v128 + 32) & ~v128);
    v151 = *(v156 + 72);
    v152 = v127;
    v156 += 16;
    v130 = (v156 - 8);
    v131 = v145;
    v132 = v142;
    v133 = v139;
    do
    {
      v152(v133, v129, v131);
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*(v126 + 8))(v132, v155);
      (*v130)(v133, v131);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v129 += v151;
      --v125;
    }

    while (v125);
    OUTLINED_FUNCTION_11_0();

    (*(v153 + 8))(v136, v134);
    outlined destroy of RRFilter?(v150, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v77 = v157[0];
    v30 = v141;
    v32 = v148;
    v36 = v138;
    OUTLINED_FUNCTION_5_3();
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
  }

LABEL_24:
  v108 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_10_1(v108, &dword_266A4D000, v109, "resolveReference");
  (*(v32 + 8))(v36, v30);
  return v77;
}

uint64_t outlined init with copy of Result<RRResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RRFilter?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}