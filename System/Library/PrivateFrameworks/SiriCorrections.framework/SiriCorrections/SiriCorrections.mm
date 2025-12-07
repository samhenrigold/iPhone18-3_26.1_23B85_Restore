uint64_t CorrectionsSELFHelper.correctionsId.setter(uint64_t a1, uint64_t *a2, const char *a3)
{
  v7 = *a2;
  swift_beginAccess();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 24))(v3 + v7, a1, v8);
  swift_endAccess();
  CorrectionsSELFHelper.correctionsId.didset(a2, a3);
  return (*(v9 + 8))(a1, v8);
}

uint64_t CorrectionsPlatformClient.setupNewTurn(executionUUID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static CorrectionsSELFHelper.shared + 176))(a1);
  return (*(v3 + 8))(v5, v2);
}

void CorrectionsSELFHelper.makeCorrectionsIdAndEmitRequestLink(executionUUID:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v139 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16();
  v131 = v10;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16();
  v134 = v12;
  OUTLINED_FUNCTION_7_1();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v126 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16();
  v132 = v17;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16();
  v136 = v19;
  OUTLINED_FUNCTION_7_1();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v126 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v126 - v24;
  v27 = v6 + 16;
  v26 = *(v6 + 16);
  (v26)(&v126 - v24, a1, v4);
  v137 = v25;
  v135 = v2;
  CorrectionsSELFHelper.executionRequestId.setter(v25);
  if (one-time initialization token for instrumentation != -1)
  {
    OUTLINED_FUNCTION_0_3(&one-time initialization token for instrumentation);
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Logger.instrumentation);
  v140 = a1;
  v143 = v26;
  (v26)(v23, a1, v4);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = os_log_type_enabled(v30, v31);
  v133 = v16;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v138 = v29;
    v34 = v33;
    v130 = swift_slowAlloc();
    v144[0] = v130;
    *v34 = 136315394;
    v35 = @"COMPONENTNAME_SIRI_CORRECTIONS";
    v36 = v6 + 16;
    v37 = v6;
    v38 = v4;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = v39;
    v4 = v38;
    v6 = v37;
    v27 = v36;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v144);

    *(v34 + 4) = v43;
    *(v34 + 12) = 2080;
    UUID.uuidString.getter();
    v45 = v44;
    v142 = *(v6 + 8);
    v142(v23, v4);
    v46 = OUTLINED_FUNCTION_11();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, v47);

    *(v34 + 14) = v48;
    _os_log_impl(&dword_266A4D000, v30, v31, "[CorrectionsSELFHelper] Deriving identifier for: %s and execution ID: %s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    v29 = v138;
    OUTLINED_FUNCTION_5_2();
  }

  else
  {

    v142 = *(v6 + 8);
    v142(v23, v4);
  }

  v49 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  v50 = v143;
  v51 = v139;
  if (v49)
  {
    v52 = v49;
    v53 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v53)
    {
      v30 = v53;
      v54 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v54)
      {
        v138 = v29;
        v55 = v54;
        v56 = type metadata accessor for SISchemaUUID();
        v57 = v137;
        (v50)(v137, v140, v4);
        v128 = v56;
        v58 = SISchemaUUID.__allocating_init(nsuuid:)(v57);
        [v55 setUuid_];

        if (AFDeviceSupportsSAE())
        {
          v59 = 43;
        }

        else
        {
          v59 = 1;
        }

        [v55 setComponent_];
        [v30 setComponent_];
        v139 = v30;
        [v52 setSource_];
        v129 = v52;
        v130 = v55;
        [v52 setTarget_];
        v60 = v27;
        v61 = objc_opt_self();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v63 = [v61 derivedIdentifierForComponentName:31 fromSourceIdentifier:isa];

        if (v63)
        {
          v127 = v61;
          v131 = v6;
          v64 = v136;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v65 = v132;
          (v50)(v132, v64, v4);
          v66 = v133;
          v67 = OUTLINED_FUNCTION_15();
          v140 = v60;
          (v50)(v67);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            v144[0] = v126;
            *v70 = 136315650;
            v71 = @"COMPONENTNAME_SIRI_CORRECTIONS";
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            v74 = OUTLINED_FUNCTION_11();
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, v75);

            *(v70 + 4) = v76;
            *(v70 + 12) = 2080;
            v77 = UUID.uuidString.getter();
            v79 = v78;
            v80 = v142;
            v142(v65, v4);
            v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v144);

            *(v70 + 14) = v81;
            *(v70 + 22) = 2080;
            v82 = UUID.uuidString.getter();
            v84 = v83;
            v80(v66, v4);
            v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v144);

            *(v70 + 24) = v85;
            _os_log_impl(&dword_266A4D000, v68, v69, "[CorrectionsSELFHelper] Emitting request link: %s/%s to ORCH:%s", v70, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_2();
          }

          else
          {

            v106 = v142;
            v142(v66, v4);
            v106(v65, v4);
          }

          v107 = v129;
          v108 = v137;
          OUTLINED_FUNCTION_12();
          v109 = v143;
          v143();
          v110 = SISchemaUUID.__allocating_init(nsuuid:)(v108);
          [v139 setUuid_];

          [objc_msgSend(v127 sharedStream)];
          swift_unknownObjectRelease();
          v111 = v134;
          OUTLINED_FUNCTION_12();
          v109();
          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_9_0(v113))
          {
            OUTLINED_FUNCTION_10();
            v114 = OUTLINED_FUNCTION_4_2();
            v144[0] = v114;
            *v111 = 136315138;
            lazy protocol witness table accessor for type UUID and conformance UUID();
            v115 = dispatch thunk of CustomStringConvertible.description.getter();
            v116 = v4;
            v118 = v117;
            v142(v111, v116);
            v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v118, v144);

            *(v111 + 4) = v119;
            OUTLINED_FUNCTION_6_1(&dword_266A4D000, v120, v121, "[CorrectionsSELFHelper] Emitted request link SELF logging Corrections ID: %s");
            __swift_destroy_boxed_opaque_existential_1(v114);
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_2();
          }

          else
          {

            v142(v111, v4);
          }

          v122 = v137;
          OUTLINED_FUNCTION_12();
          v143();
          CorrectionsSELFHelper.correctionsId.setter(v122);

          OUTLINED_FUNCTION_12();
          v123();
        }

        else
        {
          v95 = v131;
          v96 = OUTLINED_FUNCTION_15();
          (v50)(v96);
          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_9_0(v98))
          {
            OUTLINED_FUNCTION_10();
            v99 = OUTLINED_FUNCTION_4_2();
            v144[0] = v99;
            *v60 = 136315138;
            UUID.uuidString.getter();
            OUTLINED_FUNCTION_14();
            v142(v95, v100);
            v101 = OUTLINED_FUNCTION_11();
            v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v4, v102);

            *(v60 + 4) = v103;
            OUTLINED_FUNCTION_6_1(&dword_266A4D000, v104, v105, "[CorrectionsSELFHelper] Failed to create a derived identifier for SELF for execution ID: %s. Will create a random UUID.");
            __swift_destroy_boxed_opaque_existential_1(v99);
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_2();
          }

          else
          {

            v142(v95, v4);
          }

          v124 = v139;
          v125 = v129;
          UUID.init()();
        }

        goto LABEL_22;
      }
    }

    else
    {
      v30 = v52;
    }
  }

  (v50)(v51, v140, v4);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_9_0(v87))
  {
    OUTLINED_FUNCTION_10();
    v88 = OUTLINED_FUNCTION_4_2();
    v144[0] = v88;
    *v30 = 136315138;
    UUID.uuidString.getter();
    OUTLINED_FUNCTION_14();
    v142(v51, v89);
    v90 = OUTLINED_FUNCTION_11();
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v4, v91);

    *(v30 + 4) = v92;
    OUTLINED_FUNCTION_6_1(&dword_266A4D000, v93, v94, "[CorrectionsSELFHelper] Unable to create RequestLink schemas for SELF for execution ID: %s. Will create an unlinked UUID.");
    __swift_destroy_boxed_opaque_existential_1(v88);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_2();
  }

  else
  {

    v142(v51, v4);
  }

  UUID.init()();
LABEL_22:
  OUTLINED_FUNCTION_19();
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_6_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 OUTLINED_FUNCTION_6_2()
{
  v2 = *(v1 - 144);
  *(v0 + 736) = *(v1 - 160);
  *(v0 + 752) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 768) = result;
  *(v0 + 784) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_slowAlloc();
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

void CorrectionsSELFHelper.correctionsId.didset(uint64_t *a1, const char *a2)
{
  v6 = v2;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_0();
  if (one-time initialization token for instrumentation != -1)
  {
    OUTLINED_FUNCTION_0_3(&one-time initialization token for instrumentation);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.instrumentation);

  v22 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v12))
  {
    v13 = OUTLINED_FUNCTION_10();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = *a1;
    swift_beginAccess();
    (*(v9 + 16))(v3, v6 + v15, v7);
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v9 + 8))(v3, v7);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v23);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_266A4D000, v22, v12, a2, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    OUTLINED_FUNCTION_19();
  }

  else
  {
    OUTLINED_FUNCTION_19();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_5_2()
{

  JUMPOUT(0x26D5E7CB0);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return outlined destroy of CorrectionsParse(v0, type metadata accessor for CorrectionsParse);
}

uint64_t OUTLINED_FUNCTION_11_0()
{
}

unint64_t type metadata accessor for SISchemaUUID()
{
  result = lazy cache variable for type metadata for SISchemaUUID;
  if (!lazy cache variable for type metadata for SISchemaUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SISchemaUUID);
  }

  return result;
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithNSUUID_];

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x26D5E7CB0);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return String.init<A>(describing:)();
}

BOOL OUTLINED_FUNCTION_9_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_4@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 168) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v2;
  *(v3 - 136) = a1;
  return result;
}

Swift::Void __swiftcall CorrectionsPlatformClient.commit()()
{
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  CorrectionsEngine.commit()();
}

Swift::Void __swiftcall CorrectionsEngine.commit()()
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_25(v2))
  {
    v3 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_45(v3);
    OUTLINED_FUNCTION_17_0(&dword_266A4D000, v4, v5, "[CorrectionsEngine.commit] clearing corrections context");
    OUTLINED_FUNCTION_24();
  }

  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    OUTLINED_FUNCTION_3_3(&one-time initialization token for inverseDirectInvocation);
  }

  OUTLINED_FUNCTION_71(&static CorrectionsEngine.inverseDirectInvocation, v14);
  v6 = static CorrectionsEngine.inverseDirectInvocation;
  v7 = qword_281321728;
  v8 = qword_281321730;
  qword_281321728 = 0;
  qword_281321730 = 0;
  static CorrectionsEngine.inverseDirectInvocation = 0;
  outlined consume of CorrectionsDirectInvocation?(v6, v7, v8);
  if (one-time initialization token for context != -1)
  {
    OUTLINED_FUNCTION_4_3(&one-time initialization token for context);
  }

  v9 = static CorrectionsEngine.context;
  OUTLINED_FUNCTION_71(static CorrectionsEngine.context, &v13);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v15[2] = v9[2];
  v15[3] = v12;
  v15[0] = v10;
  v15[1] = v11;
  *v9 = xmmword_266A62200;
  v9[1] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v15, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
}

void OUTLINED_FUNCTION_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void outlined consume of CorrectionsDirectInvocation?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for CorrectionsContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_266A505BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_4_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_4_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_266A506C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_4_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    OUTLINED_FUNCTION_4_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_266A507E4()
{
  OUTLINED_FUNCTION_1_1();
  result = (*(v1 + 112))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266A50828()
{
  OUTLINED_FUNCTION_1_1();
  result = (*(v1 + 136))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266A5086C()
{
  OUTLINED_FUNCTION_1_1();
  result = (*(v1 + 160))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266A508B0()
{
  OUTLINED_FUNCTION_1_1();
  result = (*(v1 + 184))();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266A50904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266A50998(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

BOOL Logger.Subsystem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Subsystem.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Subsystem@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Logger.Subsystem.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Subsystem@<X0>(void *a1@<X8>)
{
  result = Logger.Subsystem.rawValue.getter();
  *a1 = 0xD00000000000001ELL;
  a1[1] = v3;
  return result;
}

SiriCorrections::Logger::Category_optional __swiftcall Logger.Category.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Category.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriCorrections_Logger_Category_instrumentation;
  }

  else
  {
    v4.value = SiriCorrections_Logger_Category_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Logger.Category.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656D757274736E49;
  }

  else
  {
    return 0x6974636572726F43;
  }
}

SiriCorrections::Logger::Category_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Category@<W0>(Swift::String *a1@<X0>, SiriCorrections::Logger::Category_optional *a2@<X8>)
{
  result.value = Logger.Category.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Category@<X0>(uint64_t *a1@<X8>)
{
  result = Logger.Category.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for log()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.log = result;
  return result;
}

uint64_t *Logger.log.unsafeMutableAddressor()
{
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for log);
  }

  return &static Logger.log;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.logger);
  __swift_project_value_buffer(v0, static Logger.logger);
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for log);
  }

  v1 = static Logger.log;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for instrumentation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.instrumentation);
  __swift_project_value_buffer(v0, static Logger.instrumentation);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t Logger.logger.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logger.logger.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t static Logger.makeSignpostID(log:)(void *a1)
{
  v1 = a1;

  return OSSignpostID.init(log:)();
}

uint64_t static Logger.begin(_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.begin(_:_:log:)()
{
  OUTLINED_FUNCTION_2_0();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_1();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.event(_:log:)()
{
  v0 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  OUTLINED_FUNCTION_1();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v2 + 8))(v5, v0);
}

id static Logger.log.getter()
{
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for log);
  }

  v1 = static Logger.log;

  return v1;
}

uint64_t static Logger.end(_:_:log:)()
{
  OUTLINED_FUNCTION_2_0();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_1();

  return os_signpost(_:dso:log:name:signpostID:)();
}

id default argument 1 of static Logger.withSignpost<A>(name:log:completion:)()
{
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for log);
  }

  v1 = static Logger.log;

  return v1;
}

uint64_t static Logger.withSignpost<A>(name:log:completion:)(uint64_t a1, uint64_t a2, int a3, void *a4, void (*a5)(uint64_t))
{
  v21 = a3;
  v20[0] = a1;
  v20[1] = a2;
  v7 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OS_os_log.signpostsEnabled.getter();
  if ((v13 & 1) == 0)
  {
    return (a5)(v13, v14);
  }

  v15 = a4;
  OSSignpostID.init(log:)();
  v16 = static os_signpost_type_t.begin.getter();
  v17 = OUTLINED_FUNCTION_7(v16, &dword_266A4D000);
  a5(v17);
  v18 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_7(v18, &dword_266A4D000);
  return (*(v9 + 8))(v12, v7);
}

unint64_t lazy protocol witness table accessor for type Logger.Subsystem and conformance Logger.Subsystem()
{
  result = lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem;
  if (!lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Logger.Category and conformance Logger.Category()
{
  result = lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category;
  if (!lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Logger.Subsystem(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Logger.Subsystem(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Logger.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Logger.Category(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for SetAlgebra.init() in conformance NSPropertyListMutabilityOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t CorrectionsPlatformClient.undoFollowUpPluginActionUserDataKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CorrectionsPlatformClient.__allocating_init()()
{
  v0 = swift_allocObject();
  CorrectionsPlatformClient.init()();
  return v0;
}

uint64_t CorrectionsPlatformClient.init()()
{
  v1 = off_2813213F0;
  *(v0 + 16) = qword_2813213E8;
  *(v0 + 24) = v1;

  return v0;
}

uint64_t CorrectionsPlatformClient.checkUndo(input:context:)(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  v9 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  CorrectionsEngine.checkUndo(input:context:correctionsOutcome:)(a1, v11);
  return outlined destroy of Siri_Nlu_External_CorrectionOutcome?(v6);
}

void CorrectionsPlatformClient.checkUndo(input:context:correctionsOutcome:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = a2[3];
  v6[2] = a2[2];
  v6[3] = v5;
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  CorrectionsEngine.checkUndo(input:context:correctionsOutcome:)(a1, v6);
}

Swift::Void __swiftcall CorrectionsPlatformClient.setUndoInvocation(directInvocation:context:)(SiriCorrections::CorrectionsDirectInvocation directInvocation, SiriCorrections::CorrectionsContext_optional *context)
{
  v2 = *(directInvocation.identifier._countAndFlagsBits + 16);
  v3 = *(directInvocation.identifier._object + 1);
  v7 = *directInvocation.identifier._countAndFlagsBits;
  v8[0] = *directInvocation.identifier._object;
  v4 = *(directInvocation.identifier._object + 2);
  v5 = *(directInvocation.identifier._object + 3);
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  v9 = v7;
  v10 = v2;
  v11.identifier._countAndFlagsBits = &v9;
  v11.identifier._object = v8;
  CorrectionsEngine.setUndoInvocation(directInvocation:context:)(v11, v6);
}

Swift::Bool __swiftcall CorrectionsPlatformClient.isCorrectionPossible(context:)(SiriCorrections::CorrectionsContext_optional *context)
{
  assistantId = context->value.assistantId;
  v4.value.userId = context->value.userId;
  v4.value.assistantId = assistantId;
  executionRequestId = context->value.executionRequestId;
  v4.value.resultCandidateId = context->value.resultCandidateId;
  v4.value.executionRequestId = executionRequestId;
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  return CorrectionsEngine.isUndoPossible(context:)(&v4);
}

uint64_t CorrectionsPlatformClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of Siri_Nlu_External_CorrectionOutcome?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CorrectionOperation.attribute.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CorrectionOperation.correction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return outlined copy of CorrectionType(v2, v3, v4);
}

uint64_t outlined copy of CorrectionType(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u && a3 != 3)
  {
    if (a3 != 2)
    {
      return v4;
    }
  }
}

__n128 CorrectionOperation.init(attribute:correction:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15SiriCorrections14CorrectionTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CorrectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CorrectionType(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionOperation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for CorrectionOperation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall CorrectionsCustomizing.shouldConsiderVerbAsCorrection(verb:)(Swift::String verb)
{
  object = verb._object;
  countAndFlagsBits = verb._countAndFlagsBits;
  (*(v1 + 16))(&v6);
  if (!v6)
  {
    return 1;
  }

  v4 = specialized Set.contains(_:)(countAndFlagsBits, object, v6);

  return v4;
}

Swift::Bool __swiftcall CorrectionsCustomizing.shouldAllowAttributeToBeCorrected(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v4 = (*(v1 + 8))();
  LOBYTE(object) = specialized Set.contains(_:)(countAndFlagsBits, object, v4);

  return (object & 1) == 0;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t CorrectionsCustomizationsAllowingAllEntities.attributesNotAllowedToBeCorrected.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CorrectionsCustomizationsAllowingAllEntities.explicitCorrectionVerbs.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t CorrectionsCustomizationsAllowingAllEntities.init(attributesNotAllowedToBeCorrected:explicitCorrectionVerbs:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WildcardStringSet(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WildcardStringSet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for WildcardStringSet(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for WildcardStringSet(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionsCustomizationsAllowingAllEntities(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CorrectionsCustomizationsAllowingAllEntities(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CorrectionsDomainClient.undoFollowUpPluginActionUserDataKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CorrectionsDomainClient.__allocating_init()()
{
  v0 = swift_allocObject();
  CorrectionsDomainClient.init()();
  return v0;
}

uint64_t CorrectionsDomainClient.init()()
{
  v1 = off_2813213F0;
  *(v0 + 16) = qword_2813213E8;
  *(v0 + 24) = v1;

  return v0;
}

uint64_t CorrectionsDomainClient.checkCorrection(input:)(uint64_t a1)
{
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  return CorrectionsEngine.checkCorrection(input:)(a1);
}

uint64_t CorrectionsDomainClient.checkCorrections(input:customizations:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CorrectionsEngine();
  inited = swift_initStaticObject();
  CorrectionsEngine.checkCorrection(input:customizations:)(a1, a2, inited, v5, v6, v7, v8, v9, v11, v12, v14, v16, v18, v20, v22, v23, v24, v25, v26, v27);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SiriCorrections19CorrectionOperationVGMd, &_ss23_ContiguousArrayStorageCy15SiriCorrections19CorrectionOperationVGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_266A61D60;
  *(result + 32) = v13;
  *(result + 40) = v15;
  *(result + 48) = v17;
  *(result + 56) = v19;
  *(result + 64) = v21;
  return result;
}

Swift::Void __swiftcall CorrectionsDomainClient.donate(undoParse:)(SiriCorrections::CorrectionsDirectInvocation undoParse)
{
  v3 = *undoParse.identifier._countAndFlagsBits;
  v1 = *(undoParse.identifier._countAndFlagsBits + 16);
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  v8 = v3;
  v9 = v1;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v11.identifier._countAndFlagsBits = &v8;
  v11.identifier._object = &v4;
  CorrectionsEngine.setUndoInvocation(directInvocation:context:)(v11, v2);
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  outlined destroy of CorrectionsContext?(v10);
}

uint64_t CorrectionsDomainClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t outlined destroy of CorrectionsContext?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CorrectionsUSOParse.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  v3 = v10 - v2;
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x26D5E75C0](0x7372615072657355, 0xEB00000000203A65);
  type metadata accessor for Siri_Nlu_External_UserParse();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5E75C0](0xD000000000000014, 0x8000000266A62540);
  v4 = type metadata accessor for CorrectionsUSOParse(0);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v0 + *(v4 + 20), v3);
  v5 = String.init<A>(describing:)();
  MEMORY[0x26D5E75C0](v5);

  MEMORY[0x26D5E75C0](0x6E7542707061202CLL, 0xEF203A6449656C64);
  v6 = (v0 + *(v4 + 24));
  v7 = v6[1];
  v10[0] = *v6;
  v10[1] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, "b\b");
  v8 = String.init<A>(describing:)();
  MEMORY[0x26D5E75C0](v8);

  MEMORY[0x26D5E75C0](41, 0xE100000000000000);
  return v11;
}

uint64_t outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CorrectionsUSOParse.init(userParse:parserIdentifier:appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CorrectionsUSOParse(0);
  outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(a2, a5 + *(v10 + 20));
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_0();
  result = (*(v11 + 32))(a5, a1);
  v13 = (a5 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;
  return result;
}

uint64_t outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CorrectionsUSOParse.userParse.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t CorrectionsUSOParse.parserIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CorrectionsUSOParse(0) + 20);

  return outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v3, a1);
}

uint64_t CorrectionsUSOParse.appBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for CorrectionsUSOParse(0) + 24));

  return v1;
}

uint64_t static CorrectionsUSOParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  if ((static Siri_Nlu_External_UserParse.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for CorrectionsUSOParse(0);
  v18 = *(v17 + 20);
  v19 = *(v13 + 48);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a1 + v18, v16);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_5_0(v16);
  if (!v20)
  {
    outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v16, v12);
    OUTLINED_FUNCTION_5_0(&v16[v19]);
    if (!v20)
    {
      (*(v6 + 32))(v9, &v16[v19], v4);
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v9, v4);
      v23(v12, v4);
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v16, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v6 + 8))(v12, v4);
LABEL_10:
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v16, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
    return 0;
  }

  OUTLINED_FUNCTION_5_0(&v16[v19]);
  if (!v20)
  {
    goto LABEL_10;
  }

  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v16, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
LABEL_14:
  v24 = *(v17 + 24);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (v28)
    {
      v29 = *v25 == *v27 && v26 == v28;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v28)
  {
    return 1;
  }

  return 0;
}

uint64_t CorrectionsDirectInvocation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

SiriCorrections::CorrectionsDirectInvocation __swiftcall CorrectionsDirectInvocation.init(identifier:userData:)(SiriCorrections::CorrectionsDirectInvocation identifier, Swift::OpaquePointer_optional userData)
{
  *v2 = identifier.identifier;
  v2[1]._countAndFlagsBits = userData.value._rawValue;
  identifier.userData = userData;
  return identifier;
}

SiriCorrections::CorrectionsDirectInvocation::CodingKeys_optional __swiftcall CorrectionsDirectInvocation.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = stringValue._countAndFlagsBits == 0x696669746E656469 && stringValue._object == 0xEA00000000007265;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (countAndFlagsBits == 0x6174614472657375 && object == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int CorrectionsDirectInvocation.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E7840](a1 & 1);
  return Hasher._finalize()();
}

uint64_t CorrectionsDirectInvocation.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6174614472657375;
  }

  else
  {
    return 0x696669746E656469;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CorrectionsDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  CorrectionsDirectInvocation.CodingKeys.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

SiriCorrections::CorrectionsDirectInvocation::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance CorrectionsDirectInvocation.CodingKeys@<W0>(uint64_t a1@<X0>, SiriCorrections::CorrectionsDirectInvocation::CodingKeys_optional *a2@<X8>)
{
  result.value = CorrectionsDirectInvocation.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CorrectionsDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CorrectionsDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CorrectionsDirectInvocation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SiriCorrections0E16DirectInvocationV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15SiriCorrections0E16DirectInvocationV10CodingKeysOGMR);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v27) = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v28;
    if (v28 >> 60 == 15)
    {
      v11 = OUTLINED_FUNCTION_1_0();
      v12(v11);
      v13 = 0;
    }

    else
    {
      v14 = v27;
      v23 = objc_opt_self();
      v24 = v14;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v27 = 0;
      v15 = [v23 propertyListWithData:isa options:0 format:0 error:&v27];

      if (!v15)
      {
        v21 = v27;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data?(v24, v25);
        v6 = OUTLINED_FUNCTION_1_0();
        v7(v6);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v16 = v27;
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data?(v24, v25);
      swift_unknownObjectRelease();
      v17 = OUTLINED_FUNCTION_1_0();
      v18(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      v19 = swift_dynamicCast();
      v13 = v26;
      if (!v19)
      {
        v13 = 0;
      }
    }

    *a2 = v8;
    a2[1] = v10;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CorrectionsDirectInvocation.encode(to:)(void *a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SiriCorrections0E16DirectInvocationV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15SiriCorrections0E16DirectInvocationV10CodingKeysOGMR);
  OUTLINED_FUNCTION_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v24 = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v8, v12);
  }

  v14 = v5;
  if (v24)
  {
    v15 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v26[0] = 0;
    v17 = [v15 dataWithPropertyList:isa format:200 options:0 error:v26];

    v18 = v26[0];
    if (v17)
    {
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v26[0] = v19;
      v26[1] = v21;
      v25 = 1;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v14 + 8))(v8, v12);
      return outlined consume of Data._Representation(v19, v21);
    }

    v22 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v14 + 8))(v8, v12);
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t type metadata accessor for CorrectionsUSOParse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CorrectionsParse(uint64_t a1)
{
  result = type metadata accessor for CorrectionsUSOParse(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SIRINLUUserDialogAct();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for SIRINLUUserDialogAct()
{
  result = lazy cache variable for type metadata for SIRINLUUserDialogAct;
  if (!lazy cache variable for type metadata for SIRINLUUserDialogAct)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SIRINLUUserDialogAct);
  }

  return result;
}

void type metadata completion function for CorrectionsUSOParse(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_Parser.ParserIdentifier?)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Siri_Nlu_External_Parser.ParserIdentifier?);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionsDirectInvocation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CorrectionsDirectInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CorrectionsDirectInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void __swiftcall CorrectionsContext.init(userId:assistantId:)(SiriCorrections::CorrectionsContext *__return_ptr retstr, Swift::String_optional userId, Swift::String_optional assistantId)
{
  retstr->userId = userId;
  retstr->assistantId = assistantId;
  retstr->resultCandidateId = 0u;
  retstr->executionRequestId = 0u;
}

double static CorrectionsContext.builder.getter()
{
  type metadata accessor for CorrectionsContext.Builder();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

double CorrectionsContext.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t key path setter for CorrectionsContext.Builder.userId : CorrectionsContext.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);

  return v4(v2, v3);
}

uint64_t CorrectionsContext.Builder.userId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 16, a2);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.Builder.userId.setter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_1(v1 + 16, v3);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t key path setter for CorrectionsContext.Builder.assistantId : CorrectionsContext.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t CorrectionsContext.Builder.assistantId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 32, a2);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_1(v1 + 32, v3);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t key path setter for CorrectionsContext.Builder.resultCandidateId : CorrectionsContext.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t CorrectionsContext.Builder.resultCandidateId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 48, a2);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_1(v1 + 48, v3);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t key path setter for CorrectionsContext.Builder.executionRequestId : CorrectionsContext.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t CorrectionsContext.Builder.executionRequestId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 64, a2);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.Builder.executionRequestId.setter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_1(v1 + 64, v3);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t CorrectionsContext.Builder.userId(_:)()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 120);

  v2 = OUTLINED_FUNCTION_8();
  v1(v2);
}

uint64_t CorrectionsContext.Builder.assistantId(_:)()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 144);

  v2 = OUTLINED_FUNCTION_8();
  v1(v2);
}

uint64_t CorrectionsContext.Builder.resultCandidateId(_:)()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 168);

  v2 = OUTLINED_FUNCTION_8();
  v1(v2);
}

uint64_t CorrectionsContext.Builder.executionRequestId(_:)()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 192);

  v2 = OUTLINED_FUNCTION_8();
  v1(v2);
}

void __swiftcall CorrectionsContext.Builder.build()(SiriCorrections::CorrectionsContext *__return_ptr retstr)
{
  OUTLINED_FUNCTION_2_1();
  v3 = (*(v2 + 112))();
  v5 = v4;
  OUTLINED_FUNCTION_2_1();
  v7 = (*(v6 + 136))();
  v9 = v8;
  OUTLINED_FUNCTION_2_1();
  v11 = (*(v10 + 160))();
  v13 = v12;
  OUTLINED_FUNCTION_2_1();
  v15 = (*(v14 + 184))();
  retstr->userId.value._countAndFlagsBits = v3;
  retstr->userId.value._object = v5;
  retstr->assistantId.value._countAndFlagsBits = v7;
  retstr->assistantId.value._object = v9;
  retstr->resultCandidateId.value._countAndFlagsBits = v11;
  retstr->resultCandidateId.value._object = v13;
  retstr->executionRequestId.value._countAndFlagsBits = v15;
  retstr->executionRequestId.value._object = v16;
}

void *CorrectionsContext.Builder.deinit()
{

  return v0;
}

uint64_t CorrectionsContext.Builder.__deallocating_deinit()
{
  CorrectionsContext.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

double CorrectionsContext.Builder.init()()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t CorrectionsContext.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[4];
  v4 = v0[6];

  _StringGuts.grow(_:)(74);
  MEMORY[0x26D5E75C0](0x203A644972657375, 0xE800000000000000);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, "b\b");
  v13 = OUTLINED_FUNCTION_9(v5, v6, v7, v8, v9, v10, v11, v12, v1);
  MEMORY[0x26D5E75C0](v13);

  v14 = MEMORY[0x26D5E75C0](0x747369737361202CLL, 0xEF203A6449746E61);
  v22 = OUTLINED_FUNCTION_9(v14, v15, v16, v17, v18, v19, v20, v21, v2);
  MEMORY[0x26D5E75C0](v22);

  v23 = MEMORY[0x26D5E75C0](0xD000000000000015, 0x8000000266A62560);
  v31 = OUTLINED_FUNCTION_9(v23, v24, v25, v26, v27, v28, v29, v30, v3);
  MEMORY[0x26D5E75C0](v31);

  v32 = MEMORY[0x26D5E75C0](0xD000000000000016, 0x8000000266A62580);
  v40 = OUTLINED_FUNCTION_9(v32, v33, v34, v35, v36, v37, v38, v39, v4);
  MEMORY[0x26D5E75C0](v40);

  return 0;
}

uint64_t static CorrectionsContext.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a2[2];
  v6 = a2[3];
  if (!v3 || (v8 = a2[1]) == 0 || (*a1 == *a2 ? (v9 = v3 == v8) : (v9 = 0), v9 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v10 & 1) != 0)))
  {
    result = 1;
    if (v5 && v6 && (v4 != v7 || v5 != v6))
    {
      OUTLINED_FUNCTION_8();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for CorrectionsContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t *CorrectionsSELFHelper.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3(&one-time initialization token for shared);
  }

  return &static CorrectionsSELFHelper.shared;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for CorrectionsSELFHelper(0);
  v0 = swift_allocObject();
  UUID.init()();
  result = UUID.init()();
  static CorrectionsSELFHelper.shared = v0;
  return result;
}

uint64_t CorrectionsSELFHelper.__allocating_init()()
{
  v0 = swift_allocObject();
  UUID.init()();
  UUID.init()();
  return v0;
}

uint64_t static CorrectionsSELFHelper.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3(&one-time initialization token for shared);
  }
}

uint64_t static CorrectionsSELFHelper.emit(_:)(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

void CorrectionsSELFHelper.emitCheckUndo(undoType:undoReason:context:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = *v3;
  v6 = a3[1];
  v32[0] = *a3;
  v32[1] = v6;
  v7 = a3[3];
  v32[2] = a3[2];
  v32[3] = v7;
  v8 = (*(v5 + 168))(a1, a2, v32);
  if (v8)
  {
    v9 = v8;
    if (one-time initialization token for instrumentation != -1)
    {
      OUTLINED_FUNCTION_0_3(&one-time initialization token for instrumentation);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.instrumentation);
    v31 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_10();
      v13 = OUTLINED_FUNCTION_4_2();
      *&v32[0] = v13;
      *v4 = 136315138;
      v14 = v31;
      v15 = [v14 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = OUTLINED_FUNCTION_15();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v18);

      *(v4 + 4) = v19;
      OUTLINED_FUNCTION_18(&dword_266A4D000, v20, v21, "[CorrectionsSELFHelper] Emitting checkUndo metric %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
    }

    static CorrectionsSELFHelper.emit(_:)(v31);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      OUTLINED_FUNCTION_0_3(&one-time initialization token for instrumentation);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.instrumentation);
    v31 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17(&dword_266A4D000, v24, v25, "[CorrectionsSELFHelper] checkUndo failed to be emitted", v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_5_2();
    }
  }
}

Swift::Void __swiftcall CorrectionsSELFHelper.emitSetUndo(correctionsDirectInvocation:context:)(SiriCorrections::CorrectionsDirectInvocation correctionsDirectInvocation, SiriCorrections::CorrectionsContext_optional *context)
{
  v4 = *v2;
  v5 = *correctionsDirectInvocation.identifier._countAndFlagsBits;
  v6 = *(correctionsDirectInvocation.identifier._countAndFlagsBits + 16);
  v7 = *(correctionsDirectInvocation.identifier._object + 1);
  v33[0] = *correctionsDirectInvocation.identifier._object;
  v33[1] = v7;
  v8 = *(correctionsDirectInvocation.identifier._object + 3);
  v33[2] = *(correctionsDirectInvocation.identifier._object + 2);
  v33[3] = v8;
  v34 = v5;
  v35 = v6;
  v9 = (*(v4 + 160))(&v34, v33, correctionsDirectInvocation.userData.value._rawValue, *&correctionsDirectInvocation.userData.is_nil, context);
  if (v9)
  {
    v10 = v9;
    if (one-time initialization token for instrumentation != -1)
    {
      OUTLINED_FUNCTION_0_3(&one-time initialization token for instrumentation);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.instrumentation);
    v32 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_10();
      v14 = OUTLINED_FUNCTION_4_2();
      *&v33[0] = v14;
      *v3 = 136315138;
      v15 = v32;
      v16 = [v15 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = OUTLINED_FUNCTION_15();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v19);

      *(v3 + 4) = v20;
      OUTLINED_FUNCTION_18(&dword_266A4D000, v21, v22, "[CorrectionsSELFHelper] Emitting undoSet metric %s");
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
    }

    static CorrectionsSELFHelper.emit(_:)(v32);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      OUTLINED_FUNCTION_0_3(&one-time initialization token for instrumentation);
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.instrumentation);
    v32 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v24))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17(&dword_266A4D000, v25, v26, "[CorrectionsSELFHelper] setUndo failed to be emitted", v27, v28, v29, v30, v31, v32);
      OUTLINED_FUNCTION_5_2();
    }
  }
}

void *CorrectionsSELFHelper.buildSetUndo(correctionsDirectInvocation:context:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  CorrectionsSELFHelper.makeClientEventWrapper(context:)();
  if (v3)
  {
    v4 = v3;
    v5 = closure #1 in CorrectionsSELFHelper.buildSetUndo(correctionsDirectInvocation:context:)(v3, v2, v1);

    return v5;
  }

  else
  {

    return 0;
  }
}

void *closure #1 in CorrectionsSELFHelper.buildSetUndo(correctionsDirectInvocation:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D5A658]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D5A648]) init];
    if (v8)
    {
      v9 = v8;
      outlined bridged method (mbgnn) of @objc SCSchemaSCSetUndoArgs.directInvocationId.setter(a2, a3, v8);
      [v7 setSetUndoArgs_];
      [a1 setUndoSet_];

      v10 = a1;
      return a1;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.instrumentation);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_266A4D000, v12, v13, "[CorrectionsSELFHelper] setUndo failed to be emitted", v14, 2u);
    MEMORY[0x26D5E7CB0](v14, -1, -1);
  }

  return 0;
}

void CorrectionsSELFHelper.buildCheckUndo(undoType:undoReason:context:)(uint64_t a1, uint64_t a2)
{
  CorrectionsSELFHelper.makeClientEventWrapper(context:)();
  if (v4)
  {
    v5 = v4;
    closure #1 in CorrectionsSELFHelper.buildCheckUndo(undoType:undoReason:context:)(v4, a1, a2);
  }
}

void *closure #1 in CorrectionsSELFHelper.buildCheckUndo(undoType:undoReason:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D5A628]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D5A650]) init];
    if (v8)
    {
      v9 = v8;
      [v7 setUndoType_];
      [v7 setReason_];
      [v9 setCheckUndoResponse_];
      [a1 setUndoChecked_];

      v10 = a1;
      return a1;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.instrumentation);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_266A4D000, v12, v13, "[CorrectionsSELFHelper] checkUndo failed to be emitted", v14, 2u);
    MEMORY[0x26D5E7CB0](v14, -1, -1);
  }

  return 0;
}

void CorrectionsSELFHelper.makeClientEventWrapper(context:)()
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_0();
  v6 = [objc_allocWithZone(MEMORY[0x277D5A630]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D5A638]) init];
    if (v8)
    {
      v9 = v8;
      v10 = AFDeviceSupportsSAE();
      type metadata accessor for SISchemaUUID();
      v11 = OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_executionRequestId;
      v12 = (v4 + 16);
      v13 = &selRef_setSubRequestId_;
      if ((v10 & 1) == 0)
      {
        v13 = &selRef_setRequestId_;
      }

      v22 = v13;
      swift_beginAccess();
      v14 = *v12;
      (*v12)(v1, v0 + v11, v2);
      v15 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
      [v9 *v22];

      type metadata accessor for SISchemaUUID();
      v16 = OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_correctionsId;
      swift_beginAccess();
      v14(v1, v0 + v16, v2);
      v17 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
      [v9 setScId_];

      [v7 setEventMetadata_];
      goto LABEL_12;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    OUTLINED_FUNCTION_0_3(&one-time initialization token for instrumentation);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.instrumentation);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_266A4D000, v19, v20, "[CorrectionsSELFHelper] Failed to create base SELF objects", v21, 2u);
    OUTLINED_FUNCTION_5_2();
  }

LABEL_12:
  OUTLINED_FUNCTION_19();
}

uint64_t CorrectionsSELFHelper.deinit()
{
  v2 = OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_correctionsId;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_0();
  v4 = *(v3 + 8);
  v4(v1 + v2, v0);
  v4(v1 + OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_executionRequestId, v0);
  return v1;
}

uint64_t CorrectionsSELFHelper.__deallocating_deinit()
{
  v2 = OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_correctionsId;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_0();
  v4 = *(v3 + 8);
  v4(v1 + v2, v0);
  v4(v1 + OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_executionRequestId, v0);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v5, v6);
}

uint64_t CorrectionsSELFHelper.init()(uint64_t a1)
{
  UUID.init()();
  UUID.init()();
  return v1;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SiriCorrections12ModifiedNode33_B4A290DC396177E2DE6FD9C9F9B768B2LLVGMd, &_ss23_ContiguousArrayStorageCy15SiriCorrections12ModifiedNode33_B4A290DC396177E2DE6FD9C9F9B768B2LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SiriCorrections23CorrectionCandidateTask33_B4A290DC396177E2DE6FD9C9F9B768B2LLVGMd, &_ss23_ContiguousArrayStorageCy15SiriCorrections23CorrectionCandidateTask33_B4A290DC396177E2DE6FD9C9F9B768B2LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SiriCorrections19CorrectionOperationVGMd, &_ss23_ContiguousArrayStorageCy15SiriCorrections19CorrectionOperationVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t type metadata accessor for CorrectionsSELFHelper(uint64_t a1)
{
  result = type metadata singleton initialization cache for CorrectionsSELFHelper;
  if (!type metadata singleton initialization cache for CorrectionsSELFHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CorrectionsSELFHelper(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc SCSchemaSCSetUndoArgs.directInvocationId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E7570](a1, a2);
  [a3 setDirectInvocationId_];
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_17(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656D757274736E49;
  }

  else
  {
    v3 = 0x6974636572726F43;
  }

  if (v2)
  {
    v4 = 0xEB00000000736E6FLL;
  }

  else
  {
    v4 = 0xEF6E6F697461746ELL;
  }

  if (a2)
  {
    v5 = 0x656D757274736E49;
  }

  else
  {
    v5 = 0x6974636572726F43;
  }

  if (a2)
  {
    v6 = 0xEF6E6F697461746ELL;
  }

  else
  {
    v6 = 0xEB00000000736E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void *one-time initialization function for rrUtils()
{
  type metadata accessor for ReferenceResolutionUtils();
  result = swift_allocObject();
  static CorrectionsEngine.rrUtils = result;
  return result;
}

void one-time initialization function for inverseDirectInvocation()
{
  static CorrectionsEngine.inverseDirectInvocation = 0;
  qword_281321728 = 0;
  qword_281321730 = 0;
}

uint64_t *CorrectionsEngine.inverseDirectInvocation.unsafeMutableAddressor()
{
  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    OUTLINED_FUNCTION_3_3(&one-time initialization token for inverseDirectInvocation);
  }

  return &static CorrectionsEngine.inverseDirectInvocation;
}

void static CorrectionsEngine.inverseDirectInvocation.getter(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    a2 = OUTLINED_FUNCTION_3_3(&one-time initialization token for inverseDirectInvocation);
  }

  OUTLINED_FUNCTION_27(a2, v6);
  v3 = static CorrectionsEngine.inverseDirectInvocation;
  v4 = qword_281321728;
  v5 = qword_281321730;
  *a1 = static CorrectionsEngine.inverseDirectInvocation;
  a1[1] = v4;
  a1[2] = v5;
  outlined copy of CorrectionsDirectInvocation?(v3, v4, v5);
}

void outlined copy of CorrectionsDirectInvocation?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void key path getter for static CorrectionsEngine.inverseDirectInvocation : CorrectionsEngine.Type(void *a1@<X8>)
{
  CorrectionsEngine.inverseDirectInvocation.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = static CorrectionsEngine.inverseDirectInvocation;
  v3 = qword_281321728;
  v4 = qword_281321730;
  *a1 = static CorrectionsEngine.inverseDirectInvocation;
  a1[1] = v3;
  a1[2] = v4;
  outlined copy of CorrectionsDirectInvocation?(v2, v3, v4);
}

void key path setter for static CorrectionsEngine.inverseDirectInvocation : CorrectionsEngine.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  outlined copy of CorrectionsDirectInvocation?(*a1, v2, v3);
  CorrectionsEngine.inverseDirectInvocation.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = static CorrectionsEngine.inverseDirectInvocation;
  v5 = qword_281321728;
  v6 = qword_281321730;
  static CorrectionsEngine.inverseDirectInvocation = v1;
  qword_281321728 = v2;
  qword_281321730 = v3;
  outlined consume of CorrectionsDirectInvocation?(v4, v5, v6);
}

uint64_t one-time initialization function for parseStoredTime()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_allocate_value_buffer(v0, static CorrectionsEngine.parseStoredTime);
  v1 = __swift_project_value_buffer(v0, static CorrectionsEngine.parseStoredTime);
  v2 = type metadata accessor for Date();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

double one-time initialization function for context()
{
  v0 = swift_slowAlloc();
  static CorrectionsEngine.context = v0;
  result = 0.0;
  *v0 = xmmword_266A62200;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  return result;
}

uint64_t CorrectionsEngine.context.unsafeMutableAddressor()
{
  if (one-time initialization token for context != -1)
  {
    OUTLINED_FUNCTION_4_3(&one-time initialization token for context);
  }

  return static CorrectionsEngine.context;
}

uint64_t static CorrectionsEngine.context.getter@<X0>(__int128 *a1@<X8>, uint64_t a2@<X0>)
{
  if (one-time initialization token for context != -1)
  {
    a2 = OUTLINED_FUNCTION_4_3(&one-time initialization token for context);
  }

  v3 = static CorrectionsEngine.context;
  OUTLINED_FUNCTION_27(a2, v11);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v12[2] = v3[2];
  v12[3] = v6;
  v12[0] = v4;
  v12[1] = v5;
  v7 = v3[1];
  *a1 = *v3;
  a1[1] = v7;
  v8 = v3[3];
  a1[2] = v3[2];
  a1[3] = v8;
  return outlined init with copy of CorrectionsContext?(v12, v10, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
}

uint64_t key path getter for static CorrectionsEngine.context : CorrectionsEngine.Type@<X0>(__int128 *a1@<X8>)
{
  v2 = CorrectionsEngine.context.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v10[2] = v2[2];
  v10[3] = v5;
  v10[0] = v3;
  v10[1] = v4;
  v6 = v2[1];
  *a1 = *v2;
  a1[1] = v6;
  v7 = v2[3];
  a1[2] = v2[2];
  a1[3] = v7;
  return outlined init with copy of CorrectionsContext?(v10, v9, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
}

uint64_t key path setter for static CorrectionsEngine.context : CorrectionsEngine.Type(__int128 *a1)
{
  v1 = a1[1];
  v11 = *a1;
  v12 = v1;
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  outlined init with copy of CorrectionsContext?(&v11, v15, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  v3 = CorrectionsEngine.context.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v15[2] = v3[2];
  v15[3] = v6;
  v15[0] = v4;
  v15[1] = v5;
  v7 = v11;
  v8 = v12;
  v9 = v14;
  v3[2] = v13;
  v3[3] = v9;
  *v3 = v7;
  v3[1] = v8;
  return outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v15, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
}

uint64_t CorrectionsEngine.undoFollowUpPluginActionUserDataKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static CorrectionsEngine.setReferenceResolver(to:)(void *a1)
{
  if (one-time initialization token for rrUtils != -1)
  {
    swift_once();
  }

  static CorrectionsEngine.rrUtils = a1;
}

uint64_t static CorrectionsEngine.shared()()
{
  type metadata accessor for CorrectionsEngine();

  return swift_initStaticObject();
}

uint64_t CorrectionsEngine.checkCorrection(input:)(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  (*(*v1 + 112))(a1, v3);
  return outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v3, &_s15SiriCorrections0B11Customizing_pSgMd, &_s15SiriCorrections0B11Customizing_pSgMR);
}

void CorrectionsEngine.checkCorrection(input:customizations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v215 = v24;
  type metadata accessor for Siri_Nlu_External_UsoGraph();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_1();
  v28 = v27 - v26;
  v246 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  OUTLINED_FUNCTION_6();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_2();
  v245 = v32;
  OUTLINED_FUNCTION_23();
  v33 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_6();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_2();
  v248 = v37;
  OUTLINED_FUNCTION_23();
  v214 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_6();
  v213 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_1();
  v42 = v41 - v40;
  if (one-time initialization token for log != -1)
  {
LABEL_299:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for log);
  }

  static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v212 = v42;
  os_signpost(_:dso:log:name:signpostID:)();
  v43 = MEMORY[0x277D84F90];
  v258 = MEMORY[0x277D84F90];
  v44 = outlined init with copy of CorrectionsContext?(v23, &v251, &_s15SiriCorrections0B11Customizing_pSgMd, &_s15SiriCorrections0B11Customizing_pSgMR);
  if (v253)
  {
    v44 = outlined init with take of CorrectionsCustomizing(&v251, v255);
  }

  else
  {
    v256 = &type metadata for CorrectionsCustomizationsAllowingAllEntities;
    v257 = &protocol witness table for CorrectionsCustomizationsAllowingAllEntities;
    v255[0] = MEMORY[0x277D84FA0];
    v255[1] = MEMORY[0x277D84FA0];
  }

  v45 = MEMORY[0x26D5E71D0](v44);
  v42 = v45;
  v23 = *(v45 + 16);
  if (v23)
  {
    v46 = 0;
    v47 = 0;
    v48 = v45 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v242 = (v30 + 8);
    v30 = v35 + 8;
    v49 = v248;
    v240 = v28;
    v238 = v33;
    v234 = v35;
    v232 = v45;
    v231 = *(v45 + 16);
    v229 = v48;
    v227 = v35 + 8;
    do
    {
      if (v47 >= *(v42 + 16))
      {
        goto LABEL_282;
      }

      (*(v35 + 16))(v49, v48 + *(v35 + 72) * v47, v33);
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {
        Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
        Siri_Nlu_External_UserStatedTask.task.getter();
        (*v242)(v245, v246);
        v50 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
        v51 = OUTLINED_FUNCTION_46();
        v52(v51);
        v53 = MEMORY[0x26D5E7330](v50);
        v30 = v53;
        if (!v46)
        {
          v42 = specialized Array._getCount()(v53);
          v54 = 0;
          v33 = v30 & 0xC000000000000001;
          v23 = (v30 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            v46 = v42 != v54;
            if (v42 == v54)
            {
              goto LABEL_29;
            }

            if (v33)
            {
              MEMORY[0x26D5E76F0](v54, v30);
            }

            else
            {
              if (v54 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_278;
              }
            }

            if (__OFADD__(v54, 1))
            {
              break;
            }

            v55 = UsoTask.verbString.getter();
            v28 = v56;
            v57 = v55 == 0x657461647075 && v56 == 0xE600000000000000;
            if (v57)
            {

              goto LABEL_28;
            }

            v35 = OUTLINED_FUNCTION_70(v55);

            ++v54;
            if (v35)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
          goto LABEL_298;
        }

LABEL_28:
        v46 = 1;
LABEL_29:
        type metadata accessor for CorrectionsEngine();
        v58 = static CorrectionsEngine.searchTasks(tasks:customizations:)(v30, v255);

        specialized Array.append<A>(contentsOf:)(v58);

        v28 = v240;
        v33 = v238;
        v35 = v234;
        v49 = v248;
        v42 = v232;
        v23 = v231;
        v48 = v229;
        v30 = v227;
      }

      else if ((Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0 && (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) == 0 && (Siri_Nlu_External_UserDialogAct.hasAccepted.getter() & 1) == 0)
      {
        Siri_Nlu_External_UserDialogAct.hasWantedToProceed.getter();
      }

      v47 = (v47 + 1);
      (*v30)(v49, v33);
    }

    while (v47 != v23);

    OUTLINED_FUNCTION_50(v258);
    if (!v60)
    {
      if (v46)
      {

        v61 = MEMORY[0x277D84F90];
LABEL_270:
        if (*(v61 + 16) >= 2uLL)
        {
          v80 = v61;
          if (one-time initialization token for logger != -1)
          {
LABEL_303:
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v206 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_18_0(v206, static Logger.logger);
          v207 = Logger.logObject.getter();
          v208 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_25(v208))
          {
            v209 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_45(v209);
            OUTLINED_FUNCTION_17_0(&dword_266A4D000, v210, v211, "[CorrectionsEngine.checkCorrection] found more than one correction candidate.");
            OUTLINED_FUNCTION_24();
          }

          v61 = v80;
        }

        specialized Collection.first.getter(v61, v215);

        goto LABEL_276;
      }

LABEL_266:

      if (one-time initialization token for logger != -1)
      {
        goto LABEL_301;
      }

      goto LABEL_267;
    }
  }

  else
  {

    OUTLINED_FUNCTION_50(v43);
    if (!v62)
    {
      goto LABEL_266;
    }
  }

  v63 = 0;
  v217 = v59 + 32;
  v64 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v63 >= *v218)
    {
      goto LABEL_294;
    }

    v65 = v217 + 32 * v63;
    v23 = *v65;
    v30 = *(v65 + 16);
    v66 = *(v65 + 24);
    v221 = v64;
    v230 = *(v66 + 16);
    v219 = v63;
    v222 = v30;
    if (!v230)
    {
      v172 = *(v65 + 8);
      if (v172 == 0x657461647075)
      {

        OUTLINED_FUNCTION_34();

        if (v30 == 0xE600000000000000)
        {

          v220 = 0;
          v33 = MEMORY[0x277D84F90];
          goto LABEL_233;
        }
      }

      else
      {

        OUTLINED_FUNCTION_34();
      }

      v220 = 0;
      v33 = MEMORY[0x277D84F90];
      v170 = v172;
      goto LABEL_232;
    }

    v228 = v66 + 32;
    swift_bridgeObjectRetain_n();

    v220 = 0;
    v42 = 0;
    v33 = MEMORY[0x277D84F90];
    v226 = v66;
    while (1)
    {
LABEL_39:
      if (v42 >= *(v66 + 16))
      {
        goto LABEL_279;
      }

      v244 = v33;
      v67 = (v228 + 24 * v42);
      v68 = *v67;
      v28 = v67[1];
      v33 = v67[2];
      ++v42;
      v23 = v256;
      v30 = __swift_project_boxed_opaque_existential_1(v255, v256);

      v69._countAndFlagsBits = v68;
      v69._object = v28;
      if (CorrectionsCustomizing.shouldAllowAttributeToBeCorrected(attribute:)(v69))
      {
        break;
      }

      v220 = 1;
      v33 = v244;
      if (v42 == v230)
      {

        v170 = OUTLINED_FUNCTION_36();
        if (v190)
        {
          v191 = v222 == 0xE600000000000000;
        }

        else
        {
          v191 = 0;
        }

        if (!v191)
        {
          v220 = 1;
          goto LABEL_232;
        }

        goto LABEL_245;
      }
    }

    v239 = v68;
    v241 = v28;
    v243 = v42;
    v247 = v33 + 64;
    v70 = 1 << *(v33 + 32);
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    else
    {
      v71 = -1;
    }

    v72 = v71 & *(v33 + 64);
    v246 = (v70 + 63) >> 6;

    LODWORD(v245) = 0;
    v233 = 0;
    LODWORD(v248) = 0;
    v42 = 0;
    v73 = MEMORY[0x277D84F90];
    v249 = MEMORY[0x277D84F90];
    v250 = v33;
    v30 = 0xED00007465536D6FLL;
    while (v72)
    {
LABEL_50:
      v75 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v76 = v75 | (v42 << 6);
      v77 = *(v33 + 56);
      v78 = (*(v33 + 48) + 16 * v76);
      v79 = *v78;
      v28 = v78[1];
      v80 = *(v77 + 8 * v76);
      v81 = *v78 == 0x7465536F54646461 && v28 == 0xE800000000000000;
      v23 = (v80 >> 62);
      v82 = v73 >> 62;
      if (v81 || (OUTLINED_FUNCTION_28(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v79 == 0x6C61566F54646461 ? (v83 = v28 == 0xEA00000000006575) : (v83 = 0), v83 || (OUTLINED_FUNCTION_28(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v79 == 0x646E65707061 ? (v84 = v28 == 0xE600000000000000) : (v84 = 0), v84 || (v85 = OUTLINED_FUNCTION_28(), (OUTLINED_FUNCTION_70(v85) & 1) != 0))))
      {
        if (v23)
        {
          v139 = OUTLINED_FUNCTION_52(v80 & 0xFFFFFFFFFFFFFF8);
          v35 = MEMORY[0x26D5E7790](v139);
        }

        else
        {
          v35 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v33 = v250;
        if (v82)
        {
          OUTLINED_FUNCTION_69();
        }

        else
        {
          v95 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = v95 + v35;
        if (__OFADD__(v95, v35))
        {
          goto LABEL_280;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v82)
          {
LABEL_114:
            OUTLINED_FUNCTION_69();
          }

LABEL_115:
          v73 = OUTLINED_FUNCTION_63();
          v96 = v73 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_116;
        }

        if (v82)
        {
          goto LABEL_114;
        }

        v96 = v73 & 0xFFFFFFFFFFFFFF8;
        if (v30 > *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_115;
        }

LABEL_116:
        v99 = *(v96 + 16);
        v30 = *(v96 + 24);
        if (v23)
        {
          v101 = OUTLINED_FUNCTION_52(v80 & 0xFFFFFFFFFFFFFF8);
          v103 = v102;
          v104 = MEMORY[0x26D5E7790](v101);
          v96 = v103;
          v28 = v104;
          if (v104)
          {
            goto LABEL_118;
          }

LABEL_122:

          LODWORD(v248) = 1;
          v30 = 0xED00007465536D6FLL;
          if (v35 > 0)
          {
            goto LABEL_281;
          }
        }

        else
        {
          v28 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v28)
          {
            goto LABEL_122;
          }

LABEL_118:
          if (((v30 >> 1) - v99) < v35)
          {
            goto LABEL_283;
          }

          v236 = v73;
          v100 = (v96 + 8 * v99 + 32);
          v223 = v96;
          if (v23)
          {
            if (v28 < 1)
            {
              goto LABEL_288;
            }

            lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
            v23 = 0;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
              v105 = OUTLINED_FUNCTION_44();
              v35 = specialized protocol witness for Collection.subscript.read in conformance [A](v105, v106, v80);
              v108 = *v107;

              v109 = OUTLINED_FUNCTION_43();
              (v35)(v109);
              *v100 = v108;
              OUTLINED_FUNCTION_42();
            }

            while (!v57);
          }

          else
          {
            v23 = (v80 & 0xFFFFFFFFFFFFFF8);
            type metadata accessor for UsoEntity();
            swift_arrayInitWithCopy();
          }

          LODWORD(v248) = 1;
          OUTLINED_FUNCTION_39();
          v30 = 0xED00007465536D6FLL;
          v73 = v236;
          v33 = v250;
          if (!(v111 ^ v112 | v57))
          {
            v113 = *(v223 + 16);
            v112 = __OFADD__(v113, v110);
            v114 = v113 + v110;
            if (v112)
            {
              goto LABEL_286;
            }

            *(v223 + 16) = v114;
            LODWORD(v248) = 1;
          }
        }
      }

      else
      {
        v35 = v80;
        v86 = v79 == 0x724665766F6D6572 && v28 == v30;
        if (v86 || ((OUTLINED_FUNCTION_28(), v87 = _stringCompareWithSmolCheck(_:_:expecting:)(), v79 == 0x724665766F6D6572) ? (v88 = v28 == 0xEF65756C61566D6FLL) : (v88 = 0), !v88 ? (v89 = 0) : (v89 = 1), (v87 & 1) != 0 || (v89 & 1) != 0 || ((OUTLINED_FUNCTION_28(), v90 = _stringCompareWithSmolCheck(_:_:expecting:)(), v79 == 0x6574656C6564) ? (v91 = v28 == 0xE600000000000000) : (v91 = 0), !v91 ? (v92 = 0) : (v92 = 1), (v90 & 1) != 0 || (v92 & 1) != 0 || (v93 = OUTLINED_FUNCTION_28(), (OUTLINED_FUNCTION_70(v93) & 1) != 0))))
        {
          if (v23)
          {
            if (v80 < 0)
            {
              v140 = v80;
            }

            else
            {
              v140 = v80 & 0xFFFFFFFFFFFFFF8;
            }

            v28 = MEMORY[0x26D5E7790](v140);
          }

          else
          {
            v28 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v33 = v250;
          v30 = v249 >> 62;
          if (v249 >> 62)
          {
            if (v249 < 0)
            {
              v141 = v249;
            }

            else
            {
              v141 = v249 & 0xFFFFFFFFFFFFFF8;
            }

            v97 = MEMORY[0x26D5E7790](v141);
          }

          else
          {
            v97 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v98 = v97 + v28;
          if (__OFADD__(v97, v28))
          {
            goto LABEL_284;
          }

          v235 = v73;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v30)
            {
LABEL_131:
              if (v249 < 0)
              {
                v115 = v249;
              }

              else
              {
                v115 = v249 & 0xFFFFFFFFFFFFFF8;
              }

              MEMORY[0x26D5E7790](v115);
            }

LABEL_135:
            v249 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v30 = v249 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_136;
          }

          if (v30)
          {
            goto LABEL_131;
          }

          v30 = v249 & 0xFFFFFFFFFFFFFF8;
          if (v98 > *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_135;
          }

LABEL_136:
          v116 = *(v30 + 16);
          v35 = v30 + 16;
          if (v23)
          {
            v118 = OUTLINED_FUNCTION_52(v80 & 0xFFFFFFFFFFFFFF8);
            v28 = MEMORY[0x26D5E7790](v118);
            if (v28)
            {
              goto LABEL_138;
            }

LABEL_142:

            OUTLINED_FUNCTION_49(1);
            v30 = v30 | 0xED00007465530000;
            if (!(v111 ^ v112 | v57))
            {
              goto LABEL_285;
            }
          }

          else
          {
            v28 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v28)
            {
              goto LABEL_142;
            }

LABEL_138:
            OUTLINED_FUNCTION_62();
            if (v111 != v112)
            {
              goto LABEL_287;
            }

            v224 = (v30 + 16);
            v117 = (v30 + 8 * v116 + 32);
            if (v23)
            {
              if (v28 < 1)
              {
                goto LABEL_292;
              }

              lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
              v23 = 0;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
                v119 = OUTLINED_FUNCTION_44();
                v121 = specialized protocol witness for Collection.subscript.read in conformance [A](v119, v120, v80);
                v35 = *v122;

                v123 = OUTLINED_FUNCTION_43();
                (v121)(v123);
                *v117 = v35;
                OUTLINED_FUNCTION_42();
              }

              while (!v57);
            }

            else
            {
              v23 = (v80 & 0xFFFFFFFFFFFFFF8);
              type metadata accessor for UsoEntity();
              swift_arrayInitWithCopy();
            }

            LODWORD(v245) = 1;
            OUTLINED_FUNCTION_39();
            v30 = 0xED00007465536D6FLL;
            v73 = v235;
            v33 = v250;
            if (!(v111 ^ v112 | v57))
            {
              v125 = v224;
              v126 = *v224 + v124;
              if (__OFADD__(*v224, v124))
              {
                goto LABEL_291;
              }

              v127 = &a17;
              goto LABEL_151;
            }
          }
        }

        else
        {
          if (v79 == 0x5474636572726F63 && v28 == 0xE90000000000006FLL)
          {
            v33 = v250;
            goto LABEL_153;
          }

          OUTLINED_FUNCTION_28();
          v33 = v250;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
LABEL_153:
            if (v23)
            {
              v142 = OUTLINED_FUNCTION_52(v80 & 0xFFFFFFFFFFFFFF8);
              v28 = MEMORY[0x26D5E7790](v142);
            }

            else
            {
              v28 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v82)
            {
              OUTLINED_FUNCTION_69();
            }

            else
            {
              v128 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v30 = v128 + v28;
            if (__OFADD__(v128, v28))
            {
              goto LABEL_289;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              if (v82)
              {
LABEL_163:
                OUTLINED_FUNCTION_69();
              }

LABEL_164:
              v73 = OUTLINED_FUNCTION_63();
              v35 = v73 & 0xFFFFFFFFFFFFFF8;
              goto LABEL_165;
            }

            if (v82)
            {
              goto LABEL_163;
            }

            v35 = v73 & 0xFFFFFFFFFFFFFF8;
            if (v30 > *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_164;
            }

LABEL_165:
            v129 = *(v35 + 16);
            v30 = *(v35 + 24);
            if (v23)
            {
              v130 = OUTLINED_FUNCTION_52(v80 & 0xFFFFFFFFFFFFFF8);
              v28 = MEMORY[0x26D5E7790](v130);
              if (v28)
              {
                goto LABEL_167;
              }

LABEL_171:

              OUTLINED_FUNCTION_49(1);
              v30 = v30 | 0xED00007465530000;
              if (!(v111 ^ v112 | v57))
              {
                goto LABEL_290;
              }
            }

            else
            {
              v28 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v28)
              {
                goto LABEL_171;
              }

LABEL_167:
              OUTLINED_FUNCTION_62();
              if (v111 != v112)
              {
                goto LABEL_293;
              }

              v237 = v73;
              v33 = v35 + 8 * v129 + 32;
              v225 = v35;
              if (v23)
              {
                if (v28 < 1)
                {
                  goto LABEL_297;
                }

                lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
                v23 = 0;
                v35 = v80;
                v80 = &_sSay12SiriOntology9UsoEntityCGMR;
                do
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
                  v131 = OUTLINED_FUNCTION_44();
                  v133 = specialized protocol witness for Collection.subscript.read in conformance [A](v131, v132, v35);
                  v135 = *v134;

                  v136 = OUTLINED_FUNCTION_43();
                  (v133)(v136);
                  *v33 = v135;
                  OUTLINED_FUNCTION_42();
                }

                while (!v57);
              }

              else
              {
                v23 = (v80 & 0xFFFFFFFFFFFFFF8);
                type metadata accessor for UsoEntity();
                swift_arrayInitWithCopy();
                v35 = v80;
              }

              v233 = 1;
              OUTLINED_FUNCTION_39();
              v30 = 0xED00007465536D6FLL;
              v73 = v237;
              v33 = v250;
              if (!(v111 ^ v112 | v57))
              {
                v138 = *(v225 + 16);
                v125 = (v225 + 16);
                v126 = v138 + v137;
                if (__OFADD__(v138, v137))
                {
                  __break(1u);
                  goto LABEL_303;
                }

                v127 = &a11;
LABEL_151:
                *(v127 - 64) = 1;
                *v125 = v126;
              }
            }
          }
        }
      }
    }

    while (1)
    {
      v74 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_266;
      }

      if (v74 >= v246)
      {
        break;
      }

      v72 = *(v247 + 8 * v74);
      ++v42;
      if (v72)
      {
        v42 = v74;
        goto LABEL_50;
      }
    }

    v143 = v249;
    if (specialized Array._getCount()(v249))
    {
      v42 = v243;
      v30 = v241;
      v28 = v239;
    }

    else
    {

      type metadata accessor for CorrectionsEngine();
      v144 = OUTLINED_FUNCTION_34();
      v28 = v239;
      v30 = v241;
      v143 = static CorrectionsEngine.getCorrectedEntitiesFromSRR(correctionCandidateTaskEntity:attributePath:)(v144, v239, v241);
      v42 = v243;
    }

    if ((v248 & 1) == 0)
    {
      if ((v233 & 1) == 0)
      {

        if (v245)
        {

          OUTLINED_FUNCTION_56();
          v66 = v226;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_20();
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v161, v162, v163, v164);
          }

          v151 = *(v33 + 16);
          v23 = (v151 + 1);
          if (v151 >= *(v33 + 24) >> 1)
          {
            OUTLINED_FUNCTION_20();
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v165, v166, v167, v168);
          }

          OUTLINED_FUNCTION_57();
          *(v152 + 48) = v143;
          *(v152 + 56) = 0;
          *(v152 + 64) = 1;
        }

        else
        {

          v66 = v226;
          OUTLINED_FUNCTION_56();
        }

        goto LABEL_210;
      }

LABEL_204:

      goto LABEL_205;
    }

    if (v245)
    {
      goto LABEL_204;
    }

    if ((v233 & 1) == 0)
    {

      OUTLINED_FUNCTION_56();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_20();
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v153, v154, v155, v156);
      }

      v145 = *(v33 + 16);
      v23 = (v145 + 1);
      if (v145 >= *(v33 + 24) >> 1)
      {
        OUTLINED_FUNCTION_20();
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v157, v158, v159, v160);
      }

      OUTLINED_FUNCTION_57();
      *(v146 + 48) = v73;
      *(v146 + 56) = 0;
      *(v146 + 64) = 0;
      goto LABEL_209;
    }

LABEL_205:
    OUTLINED_FUNCTION_56();
    v23 = *(v33 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || v23 >= *(v33 + 24) >> 1)
    {
      OUTLINED_FUNCTION_20();
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v147, v148, v149, v150);
    }

    *&v251 = v28;
    *(&v251 + 1) = v30;
    v252 = v143;
    v253 = v73;
    v254 = 2;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, &v251);
LABEL_209:
    v66 = v226;
LABEL_210:
    if (v42 != v230)
    {
      goto LABEL_39;
    }

    v170 = OUTLINED_FUNCTION_36();
    if (v169)
    {
      v171 = v222 == 0xE600000000000000;
    }

    else
    {
      v171 = 0;
    }

    if (v171)
    {
LABEL_233:
      if (!*(v33 + 16) && (v220 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v255, v256);
        OUTLINED_FUNCTION_34();
        v174 = v173;
        if (CorrectionsCustomizing.shouldCheckEntityForCorrections(entity:)())
        {
          if (one-time initialization token for logger != -1)
          {
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v175 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_18_0(v175, static Logger.logger);
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_25(v177))
          {
            v178 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_45(v178);
            _os_log_impl(&dword_266A4D000, v176, v174, "[CorrectionsEngine.checkCorrection] returning underspecified correction type due to UPDATE verb.", v30, 2u);
            OUTLINED_FUNCTION_24();
          }

          type metadata accessor for CorrectionsEngine();
          v179 = OUTLINED_FUNCTION_34();
          v180 = static CorrectionsEngine.getCorrectedEntitiesFromSRR(correctionCandidateTaskEntity:attributePath:)(v179, 0, 0xE000000000000000);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_20();
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v192, v193, v194, v195);
          }

          v181 = *(v33 + 16);
          if (v181 >= *(v33 + 24) >> 1)
          {
            OUTLINED_FUNCTION_20();
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v196, v197, v198, v199);
          }

          *(v33 + 16) = v181 + 1;
          v182 = v33 + 40 * v181;
          *(v182 + 32) = 0;
          *(v182 + 40) = 0xE000000000000000;
          *(v182 + 48) = v180;
          *(v182 + 56) = 0;
          *(v182 + 64) = 3;
        }
      }
    }

    else
    {
LABEL_232:
      if (OUTLINED_FUNCTION_70(v170))
      {
        goto LABEL_233;
      }
    }

LABEL_245:
    v23 = *(v33 + 16);
    v183 = *(v221 + 2);
    v30 = v23 + v183;
    if (__OFADD__(v183, v23))
    {
      goto LABEL_295;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v185 = v221;
    if (!isUniquelyReferenced_nonNull_native || (v186 = *(v221 + 3) >> 1, v186 < v30))
    {
      if (v183 <= v30)
      {
        v187 = v23 + v183;
      }

      else
      {
        v187 = v183;
      }

      v185 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v187, 1, v221);
      v186 = *(v185 + 3) >> 1;
    }

    if (!*(v33 + 16))
    {
      v64 = v185;

      if (v23)
      {
        goto LABEL_296;
      }

LABEL_258:
      v23 = (v219 + 1);

      OUTLINED_FUNCTION_34();

      v63 = v219 + 1;
      if (v219 + 1 == v216)
      {
        v61 = v64;

        goto LABEL_270;
      }

      continue;
    }

    break;
  }

  if (v186 - *(v185 + 2) < v23)
  {
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

  v64 = v185;
  swift_arrayInitWithCopy();

  if (!v23)
  {
    goto LABEL_258;
  }

  v188 = *(v64 + 2);
  v112 = __OFADD__(v188, v23);
  v189 = v23 + v188;
  if (!v112)
  {
    *(v64 + 2) = v189;
    goto LABEL_258;
  }

  __break(1u);
LABEL_301:
  OUTLINED_FUNCTION_0_4();
  swift_once();
LABEL_267:
  v200 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v200, static Logger.logger);
  v201 = Logger.logObject.getter();
  v202 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_25(v202))
  {
    v203 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_45(v203);
    OUTLINED_FUNCTION_17_0(&dword_266A4D000, v204, v205, "[CorrectionsEngine.checkCorrection] No correction candidates, and the verb is not update.");
    OUTLINED_FUNCTION_24();
  }

  *(v215 + 32) = 0;
  *v215 = 0u;
  *(v215 + 16) = 0u;
LABEL_276:
  __swift_destroy_boxed_opaque_existential_1Tm(v255);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v213 + 8))(v212, v214);
  OUTLINED_FUNCTION_19();
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

char *static CorrectionsEngine.searchTasks(tasks:customizations:)(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D5E7790](v36))
  {
    v5 = 0;
    v41 = v3 & 0xFFFFFFFFFFFFFF8;
    v42 = v3 & 0xC000000000000001;
    v47 = MEMORY[0x277D84F90];
    v43 = a2;
    v38 = i;
    v39 = v3;
    while (1)
    {
      if (v42)
      {
        MEMORY[0x26D5E76F0](v5, v3);
      }

      else
      {
        if (v5 >= *(v41 + 16))
        {
          goto LABEL_52;
        }
      }

      v6 = __OFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        goto LABEL_51;
      }

      v44 = v7;
      v8 = UsoTask.arguments.getter();
      v9 = 0;
      v10 = v8 + 64;
      v11 = 1 << *(v8 + 32);
      v12 = v11 < 64 ? ~(-1 << v11) : -1;
      v13 = v12 & *(v8 + 64);
      v14 = (v11 + 63) >> 6;
LABEL_13:
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_14:
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v15 < v14)
      {
        break;
      }

      v5 = v44;
      if (v44 == i)
      {
        return v47;
      }
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v15;
LABEL_18:
    v16 = *(*(v8 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16 >> 62)
    {
      v33 = v8;
      if (v16 < 0)
      {
        v34 = v16;
      }

      else
      {
        v34 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v35 = MEMORY[0x26D5E7790](v34);
      v8 = v33;
      v17 = v35;
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 &= v13 - 1;
    if (!v17)
    {
      goto LABEL_13;
    }

    if (v17 >= 1)
    {
      v40 = v8;
      v48 = v16 & 0xC000000000000001;

      v18 = 0;
      v49 = v17;
      v50 = v16;
      while (1)
      {
        if (v48)
        {
          MEMORY[0x26D5E76F0](v18, v16);
        }

        else
        {
        }

        v19 = dispatch thunk of UsoValue.getAsEntity()();
        if (v19)
        {
          v20 = v19;
          __swift_project_boxed_opaque_existential_1(a2, a2[3]);
          if (CorrectionsCustomizing.shouldCheckEntityForCorrections(entity:)())
          {
            if (UsoTask.verbString.getter() == 0x657461647075 && v21 == 0xE600000000000000)
            {

              v45 = 1;
            }

            else
            {
              v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            __swift_project_boxed_opaque_existential_1(a2, a2[3]);
            v23._countAndFlagsBits = UsoTask.verbString.getter();
            v24 = CorrectionsCustomizing.shouldConsiderVerbAsCorrection(verb:)(v23);

            type metadata accessor for CorrectionsEngine();

            v25 = UsoTask.verbString.getter();
            v46 = static CorrectionsEngine.searchEntityForCorrectedAttributes(usoEntity:isExplicitCorrection:attributePathRoot:)(v20, (v45 | v24) & 1, v25, v26);

            v27 = UsoTask.verbString.getter();
            v29 = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
            }

            v31 = *(v47 + 2);
            v30 = *(v47 + 3);
            if (v31 >= v30 >> 1)
            {
              v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v47);
            }

            *(v47 + 2) = v31 + 1;
            v32 = &v47[32 * v31];
            *(v32 + 4) = v20;
            *(v32 + 5) = v27;
            *(v32 + 6) = v29;
            *(v32 + 7) = v46;
            a2 = v43;
            goto LABEL_42;
          }
        }

LABEL_42:
        ++v18;
        v16 = v50;
        if (v49 == v18)
        {

          i = v38;
          v3 = v39;
          v8 = v40;
          goto LABEL_13;
        }
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    if (v3 < 0)
    {
      v36 = v3;
    }

    else
    {
      v36 = v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array._getCount()(a1);
  v4 = specialized Array._getCount()(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static CorrectionsEngine.getCorrectedEntitiesFromSRR(correctionCandidateTaskEntity:attributePath:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for rrUtils != -1)
  {
LABEL_61:
    swift_once();
  }

  v6 = *(*static CorrectionsEngine.rrUtils + 80);

  a1 = v6(a1);

  v7 = 0;
  v40 = a1 & 0xC000000000000001;
  v41 = specialized Array._getCount()(a1);
  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x277D84F90];
  v34 = a1;
  v35 = a2;
  v38 = a1 + 32;
  v36 = a3;
  while (v7 != v41)
  {
    if (v40)
    {
      a1 = MEMORY[0x26D5E76F0](v7, v34);
    }

    else
    {
      if (v7 >= *(v39 + 16))
      {
        goto LABEL_54;
      }

      a1 = *(v38 + 8 * v7);
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    type metadata accessor for CorrectionsEngine();
    v10 = static CorrectionsEngine.searchEntityForPath(entity:path:)(a1, a2, a3);

    a1 = v10 >> 62;
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v31 = v10;
      }

      else
      {
        v31 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v11 = MEMORY[0x26D5E7790](v31);
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v8 >> 62;
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v32 = v8;
      }

      else
      {
        v32 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = MEMORY[0x26D5E7790](v32);
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 + v11;
    if (__OFADD__(v13, v11))
    {
      goto LABEL_55;
    }

    v42 = v11;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v12)
      {
LABEL_19:
        if (v8 < 0)
        {
          v16 = v8;
        }

        else
        {
          v16 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x26D5E7790](v16);
      }

LABEL_23:
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v43 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v12)
    {
      goto LABEL_19;
    }

    v15 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v14 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

    v43 = v8;
LABEL_24:
    v17 = *(v15 + 16);
    v18 = (*(v15 + 24) >> 1) - v17;
    v19 = v15 + 8 * v17;
    if (a1)
    {
      if (v10 < 0)
      {
        v21 = v10;
      }

      else
      {
        v21 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = MEMORY[0x26D5E7790](v21);
      if (!v22)
      {
        goto LABEL_41;
      }

      a1 = v22;
      v23 = MEMORY[0x26D5E7790](v21);
      if (v18 < v23)
      {
        goto LABEL_59;
      }

      if (a1 < 1)
      {
        goto LABEL_60;
      }

      v37 = v23;
      v24 = v19 + 32;
      lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
      v25 = 0;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
        v26 = specialized protocol witness for Collection.subscript.read in conformance [A](v44, v25, v10);
        v28 = *v27;

        (v26)(v44, 0);
        *(v24 + 8 * v25++) = v28;
      }

      while (a1 != v25);
      a2 = v35;
      a3 = v36;
      v20 = v37;
LABEL_37:

      v8 = v43;
      if (v20 < v42)
      {
        goto LABEL_56;
      }

      if (v20 > 0)
      {
        v29 = *(v15 + 16);
        v9 = __OFADD__(v29, v20);
        v30 = v29 + v20;
        if (v9)
        {
          goto LABEL_57;
        }

        *(v15 + 16) = v30;
      }
    }

    else
    {
      a1 = v10 & 0xFFFFFFFFFFFFFF8;
      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        if (v18 < v20)
        {
          goto LABEL_58;
        }

        type metadata accessor for UsoEntity();
        swift_arrayInitWithCopy();
        goto LABEL_37;
      }

LABEL_41:

      v8 = v43;
      if (v42 > 0)
      {
        goto LABEL_56;
      }
    }
  }

  return v8;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t specialized Collection.first.getter(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  result = MEMORY[0x26D5E7790](a1);
  if (result)
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x26D5E76F0](0, v1);
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void specialized Collection.first.getter(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    v6 = a4;
    v7 = 1;
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return;
    }

    v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    (*(*(v10 - 8) + 16))(a4, a1 + *(*(v10 - 8) + 72) * a2, v10);
    v6 = a4;
    v7 = 0;
    v5 = v10;
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16))
  {
    v4 = *(result + 32);
    v3 = *(result + 40);
    v5 = *(result + 48);
    v6 = *(result + 56);
    v7 = *(result + 64);

    result = outlined copy of CorrectionType(v5, v6, v7);
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

char *static CorrectionsEngine.searchEntityForCorrectedAttributes(usoEntity:isExplicitCorrection:attributePathRoot:)(char *a1, int a2, void *a3, unint64_t a4)
{
  v136 = a2;
  v7 = type metadata accessor for Name();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v118 - v12;
  v14 = MEMORY[0x277D84F90];
  v139 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v14;
  }

  v130 = a3;
  v132 = a4;

  v135 = a1;
  v15 = UsoTask.verbString.getter();
  v17 = v16;
  static Name.primitiveString.getter();
  v18 = Name.value.getter();
  v20 = v19;
  v21 = *(v8 + 8);
  v21(v13, v7);
  if (v15 == v18 && v17 == v20)
  {
    v24 = v132;
LABEL_16:

LABEL_17:
    if ((v136 & 1) == 0)
    {

      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Say12SiriOntology9UsoEntityCGtGMd, &_ss23_ContiguousArrayStorageCySS_Say12SiriOntology9UsoEntityCGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266A61D60;
    *(inited + 32) = 0x5474636572726F63;
    *(inited + 40) = 0xE90000000000006FLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_266A62210;
    *(v35 + 32) = v135;
    *(inited + 48) = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
    v32 = Dictionary.init(dictionaryLiteral:)();

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = *(v14 + 2);
    v36 = *(v14 + 3);
    v37 = v11 + 1;
    if (v11 < v36 >> 1)
    {
LABEL_19:

      *(v14 + 2) = v37;
      v38 = &v14[24 * v11];
      *(v38 + 4) = v130;
      *(v38 + 5) = v24;
      *(v38 + 6) = v32;
      return v14;
    }

LABEL_125:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37, 1, v14);
    goto LABEL_19;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v24 = v132;
  if (v23)
  {
    goto LABEL_17;
  }

  v25 = UsoTask.verbString.getter();
  v27 = v26;
  static Name.primitiveInteger.getter();
  v28 = Name.value.getter();
  v30 = v29;
  v21(v11, v7);
  if (v25 == v28 && v27 == v30)
  {
    goto LABEL_16;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_17;
  }

  if (*(UsoEntity.attributes.getter() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x8000000266A62480);
    v32 = v33;

    if (v32)
    {
      v32 = *(UsoEntity.attributes.getter() + 16);

      v136 |= v32 > 1;
    }
  }

  else
  {
  }

  v14 = v135;
  v40 = UsoEntity.attributes.getter();
  v41 = v40;
  v42 = 0;
  v37 = 0;
  v43 = v40 + 64;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v40 + 64);
  v47 = (v44 + 63) >> 6;
  v124 = xmmword_266A62210;
  v121 = v47;
  v120 = v40;
  v119 = v40 + 64;
  if (!v46)
  {
LABEL_26:
    while (1)
    {
      v36 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v36 >= v47)
      {

        return v139;
      }

      v46 = *(v43 + 8 * v36);
      ++v42;
      if (v46)
      {
        v42 = v36;
        goto LABEL_30;
      }
    }

LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

LABEL_30:
  while (1)
  {
    v123 = v42;
    v48 = __clz(__rbit64(v46)) | (v42 << 6);
    v49 = (*(v41 + 48) + 16 * v48);
    v11 = *v49;
    v32 = v49[1];
    v50 = *(*(v41 + 56) + 8 * v48);
    v122 = (v46 - 1) & v46;
    v137 = v11;
    v138 = v32;
    MEMORY[0x28223BE20](v40);
    v14 = (&v118 - 4);
    *(&v118 - 2) = &v137;

    if (!specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v118 - 4), &outlined read-only object #0 of one-time initialization function for attributeDenyList))
    {
      break;
    }

LABEL_119:
    v42 = v123;
    v47 = v121;
    v46 = v122;
    if (!v122)
    {
      goto LABEL_26;
    }
  }

  v137 = v130;
  v138 = v24;

  v14 = &v137;
  MEMORY[0x26D5E75C0](46, 0xE100000000000000);
  MEMORY[0x26D5E75C0](v11, v32);

  v127 = v137;
  v128 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
  v131 = Dictionary.init(dictionaryLiteral:)();
  v134 = specialized Array._getCount()(v50);
  if (!v134)
  {
LABEL_111:

    v113 = v131;
    if (*(v131 + 16))
    {
      v32 = v139;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v132;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1, v32);
      }

      v11 = *(v32 + 16);
      v115 = *(v32 + 24);
      v14 = (v11 + 1);
      if (v11 >= v115 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v11 + 1, 1, v32);
      }

      *(v32 + 16) = v14;
      v116 = (v32 + 24 * v11);
      v117 = v128;
      v116[4] = v127;
      v116[5] = v117;
      v116[6] = v113;

      v139 = v32;
    }

    else
    {

      v24 = v132;
    }

    v41 = v120;
    v43 = v119;
    goto LABEL_119;
  }

  v24 = 0;
  v133 = v50 & 0xC000000000000001;
  v126 = v50 & 0xFFFFFFFFFFFFFF8;
  v129 = v50;
  while (1)
  {
    if (v133)
    {
      v11 = MEMORY[0x26D5E76F0](v24, v50);
    }

    else
    {
      v36 = *(v126 + 16);
      if (v24 >= v36)
      {
        goto LABEL_124;
      }

      v11 = *(v50 + 8 * v24 + 32);
    }

    v51 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_123;
    }

    v52 = dispatch thunk of UsoValue.getAsExpression()();
    if (v52)
    {
      v32 = v52;
      v53 = UsoExpression.operatorAsString.getter();
      if (v54)
      {
        v55 = v53;
      }

      else
      {
        v55 = 0;
      }

      if (v54)
      {
        v56 = v54;
      }

      else
      {
        v56 = 0xE000000000000000;
      }

      v137 = v55;
      v138 = v56;
      MEMORY[0x28223BE20](v53);
      *(&v118 - 2) = &v137;
      v57 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v118 - 4), &outlined read-only object #0 of one-time initialization function for operatorStrings);

      if (v57)
      {
        v14 = v32;
        v58 = UsoExpression.operatorAsString.getter();
        if (v59)
        {
          v60 = v58;
          v61 = v59;
          v14 = v32;
          v62 = UsoExpression.operandAsValue.getter();
          if (v62)
          {
            v14 = v62;
            v63 = dispatch thunk of UsoValue.getAsEntity()();

            if (v63)
            {
              v64 = v131;
              if (*(v131 + 16) && (v65 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61), (v66 & 1) != 0))
              {
                v67 = *(*(v64 + 56) + 8 * v65);
              }

              else
              {
                v67 = MEMORY[0x277D84F90];
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
              v92 = swift_initStackObject();
              *(v92 + 16) = v124;
              *(v92 + 32) = v63;
              v137 = v67;

              specialized Array.append<A>(contentsOf:)(v92);
              v93 = v137;
              v94 = v131;
              v95 = swift_isUniquelyReferenced_nonNull_native();
              v137 = v94;
              v14 = &v137;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, v60, v61, v95);

              v131 = v137;
            }

            else
            {
            }

            goto LABEL_87;
          }
        }

LABEL_87:
        v50 = v129;
        goto LABEL_105;
      }

      type metadata accessor for CorrectionsEngine();
      v74 = dispatch thunk of UsoValue.getAsEntity()();
      v75 = static CorrectionsEngine.searchEntityForCorrectedAttributes(usoEntity:isExplicitCorrection:attributePathRoot:)(v74, 0, v127, v128);

      v14 = &v139;
      specialized Array.append<A>(contentsOf:)(v75);

LABEL_59:

      goto LABEL_105;
    }

    v14 = v11;
    v68 = dispatch thunk of UsoValue.getAsEntity()();
    if (!v68)
    {
      goto LABEL_59;
    }

    v32 = v68;
    if (v136)
    {
      break;
    }

    type metadata accessor for CorrectionsEngine();
    v76 = static CorrectionsEngine.searchEntityForCorrectedAttributes(usoEntity:isExplicitCorrection:attributePathRoot:)(v32, 0, v127, v128);
    v77 = *(v76 + 16);
    v14 = v139;
    v78 = *(v139 + 16);
    v79 = v78 + v77;
    if (__OFADD__(v78, v77))
    {
      goto LABEL_127;
    }

    v80 = v76;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    if (!v81 || (v82 = *(v14 + 3) >> 1, v82 < v79))
    {
      if (v78 <= v79)
      {
        v83 = v78 + v77;
      }

      else
      {
        v83 = v78;
      }

      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v81, v83, 1, v14);
      v82 = *(v14 + 3) >> 1;
    }

    if (*(v80 + 16))
    {
      if (v82 - *(v14 + 2) < v77)
      {
        goto LABEL_131;
      }

      swift_arrayInitWithCopy();

      v50 = v129;
      if (v77)
      {
        v84 = *(v14 + 2);
        v85 = __OFADD__(v84, v77);
        v86 = v84 + v77;
        if (v85)
        {
          goto LABEL_133;
        }

        *(v14 + 2) = v86;
      }
    }

    else
    {

      v50 = v129;
      if (v77)
      {
        goto LABEL_129;
      }
    }

    v139 = v14;
LABEL_105:
    ++v24;
    if (v51 == v134)
    {
      goto LABEL_111;
    }
  }

  v69 = v131;
  v70 = *(v131 + 16);
  v125 = v24 + 1;
  if (v70 && (v71 = specialized __RawDictionaryStorage.find<A>(_:)(0x5474636572726F63, 0xE90000000000006FLL), (v72 & 1) != 0))
  {
    v73 = *(*(v69 + 56) + 8 * v71);
  }

  else
  {
    v73 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v87 = swift_initStackObject();
  *(v87 + 16) = v124;
  *(v87 + 32) = v32;
  v88 = v73 >> 62;
  if (v73 >> 62)
  {
    if (v73 < 0)
    {
      v112 = v73;
    }

    else
    {
      v112 = v73 & 0xFFFFFFFFFFFFFF8;
    }

    v89 = MEMORY[0x26D5E7790](v112);
  }

  else
  {
    v89 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v89 + 1;
  if (!__OFADD__(v89, 1))
  {

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v88)
      {
        v91 = v73 & 0xFFFFFFFFFFFFFF8;
        if (v90 <= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_95:
          if (*(v91 + 16) >= *(v91 + 24) >> 1)
          {
            goto LABEL_128;
          }

          type metadata accessor for UsoEntity();
          swift_arrayInitWithCopy();

          ++*(v91 + 16);
          v97 = v131;
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v137 = v97;
          v99 = specialized __RawDictionaryStorage.find<A>(_:)(0x5474636572726F63, 0xE90000000000006FLL);
          v101 = v97[2];
          v102 = (v100 & 1) == 0;
          v103 = v101 + v102;
          if (__OFADD__(v101, v102))
          {
            goto LABEL_130;
          }

          v104 = v99;
          v105 = v100;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay12SiriOntology9UsoEntityCGGMd, &_ss17_NativeDictionaryVySSSay12SiriOntology9UsoEntityCGGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v98, v103))
          {
            v106 = specialized __RawDictionaryStorage.find<A>(_:)(0x5474636572726F63, 0xE90000000000006FLL);
            if ((v105 & 1) != (v107 & 1))
            {
              goto LABEL_134;
            }

            v104 = v106;
          }

          v14 = v137;
          v131 = v137;
          if (v105)
          {
            v108 = v137[7];
            v14 = *(v108 + 8 * v104);
            *(v108 + 8 * v104) = v73;
          }

          else
          {
            v137[(v104 >> 6) + 8] |= 1 << v104;
            v109 = (*(v14 + 6) + 16 * v104);
            *v109 = 0x5474636572726F63;
            v109[1] = 0xE90000000000006FLL;
            *(*(v14 + 7) + 8 * v104) = v73;

            v110 = *(v14 + 2);
            v85 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v85)
            {
              goto LABEL_132;
            }

            *(v14 + 2) = v111;
          }

          v50 = v129;
          v51 = v125;
          goto LABEL_105;
        }

LABEL_94:
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v91 = v73 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_95;
      }
    }

    else if (!v88)
    {
      goto LABEL_94;
    }

    if (v73 < 0)
    {
      v96 = v73;
    }

    else
    {
      v96 = v73 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x26D5E7790](v96);
    goto LABEL_94;
  }

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
LABEL_134:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static CorrectionsEngine.searchEntityForPath(entity:path:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = &enum case for CorrectionsParse.uso(_:);
  if (!v4)
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_79;
    }

    goto LABEL_7;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = v6;
  if (v6[2])
  {
    v9 = v6[4];
    v8 = v6[5];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = UsoTask.verbString.getter();
  if (!v8)
  {

    goto LABEL_19;
  }

  if (v9 == v15 && v8 == v16)
  {

    goto LABEL_25;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_19:

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266A4D000, v20, v21, "[CorrectionsEngine.searchEntityForPath] the entity type does not match the path root type", v22, 2u);
      MEMORY[0x26D5E7CB0](v22, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = xmmword_266A62210;
  *(result + 32) = a1;
  v24 = v7[2];
  if (v24 == 1)
  {

    return v14;
  }

  if (!v24)
  {
    __break(1u);
    return result;
  }

  v41 = v7 + 4;

  v25 = 1;
  v42 = v24;
  v43 = v7;
  while (1)
  {
    if (v25 >= v24)
    {
      goto LABEL_78;
    }

    v50 = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      break;
    }

    v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_31;
    }

LABEL_69:
    a1 = MEMORY[0x277D84F90];
LABEL_70:
    ++v25;

    v14 = a1;
    v24 = v42;
    if (v25 == v42)
    {

      return a1;
    }
  }

  if (v14 < 0)
  {
    v40 = v14;
  }

  else
  {
    v40 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  v26 = MEMORY[0x26D5E7790](v40);
  if (!v26)
  {
    goto LABEL_69;
  }

LABEL_31:
  v5 = 0;
  v49 = v14 & 0xC000000000000001;
  v46 = v14 & 0xFFFFFFFFFFFFFF8;
  a1 = MEMORY[0x277D84F90];
  v47 = v26;
  v48 = &v41[2 * v25];
  v44 = v14;
  v45 = v25;
  while (1)
  {
    if (v49)
    {
      MEMORY[0x26D5E76F0](v5, v14);
    }

    else
    {
      if (v5 >= *(v46 + 16))
      {
        goto LABEL_76;
      }
    }

    v27 = __OFADD__(v5, 1);
    v5 = (v5 + 1);
    if (v27)
    {
      break;
    }

    v28 = UsoEntity.attributes.getter();
    if (v25 >= v7[2])
    {
      goto LABEL_75;
    }

    v29 = v28;
    if (*(v28 + 16))
    {
      v30 = *v48;
      v31 = v48[1];

      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
      v34 = v33;

      if (v34)
      {
        v35 = *(*(v29 + 56) + 8 * v32);

        if (v35 >> 62)
        {
          if (v35 < 0)
          {
            v39 = v35;
          }

          else
          {
            v39 = v35 & 0xFFFFFFFFFFFFFF8;
          }

          v36 = MEMORY[0x26D5E7790](v39);
          if (!v36)
          {
            goto LABEL_60;
          }

LABEL_42:
          if (v36 < 1)
          {
            goto LABEL_77;
          }

          for (i = 0; i != v36; ++i)
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              MEMORY[0x26D5E76F0](i, v35);
            }

            else
            {
            }

            if (dispatch thunk of UsoValue.getAsEntity()())
            {

              MEMORY[0x26D5E75F0](v38);
              if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              a1 = v50;
            }

            else
            {
            }
          }

          v7 = v43;
          v14 = v44;
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_42;
          }

LABEL_60:
        }

        v25 = v45;
      }

      else
      {
      }

      v26 = v47;
      goto LABEL_63;
    }

LABEL_63:

    if (v5 == v26)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  swift_once();
LABEL_7:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_266A4D000, v11, v12, "[CorrectionsEngine.searchEntityForPath] No path provided, returning entire entity", v13, 2u);
    MEMORY[0x26D5E7CB0](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = v5[33];
  *(v14 + 32) = a1;

  return v14;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t static CorrectionsEngine.tasks(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v13 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
  {
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v10 + 8))(v12, v9);
    static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    v27 = MEMORY[0x26D5E7330]();

    (*(v13 + 8))(v15, v28);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.logger);
    v17 = *(v3 + 16);
    v17(v8, a1, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v17(v6, v8, v2);
      v22 = String.init<A>(describing:)();
      v24 = v23;
      (*(v3 + 8))(v8, v2);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_266A4D000, v18, v19, "[CorrectionsEngine.checkUndo] No UserStatedTask for %s, returning []", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D5E7CB0](v21, -1, -1);
      MEMORY[0x26D5E7CB0](v20, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    return MEMORY[0x277D84F90];
  }

  return v27;
}

uint64_t static CorrectionsEngine.isCrossAlarmTimerDomain(invocation:incomingParse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v23 - v1;
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(MEMORY[0x26D5E71D0](v5) + 16);

  if (v8 != 1)
  {
    goto LABEL_21;
  }

  v10 = MEMORY[0x26D5E71D0](v9);
  specialized Collection.first.getter(v10, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v2, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_21:
    v22 = 0;
    return v22 & 1;
  }

  (*(v4 + 32))(v7, v2, v3);
  type metadata accessor for CorrectionsEngine();
  v11 = static CorrectionsEngine.tasks(from:)(v7);
  result = specialized Array._getCount()(v11);
  if (!result)
  {

    (*(v4 + 8))(v7, v3);
    goto LABEL_21;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5E76F0](0, v11);
LABEL_8:

    v13 = UsoTask.baseEntityAsString.getter();
    v15 = v14;

    v25 = String.lowercased()();
    v23 = 0x6D72616C61;
    v24 = 0xE500000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v16 = StringProtocol.contains<A>(_:)();

    if (v16)
    {
      v17 = 0xEC0000006D72616CLL;
      v18 = 0x415F6E6F6D6D6F63;
    }

    else
    {
      v25 = String.lowercased()();
      v23 = 0x72656D6974;
      v24 = 0xE500000000000000;
      v19 = StringProtocol.contains<A>(_:)();

      if ((v19 & 1) == 0)
      {
        (*(v4 + 8))(v7, v3);

        goto LABEL_21;
      }

      v17 = 0xEC00000072656D69;
      v18 = 0x545F6E6F6D6D6F63;
    }

    if (v13 == v18 && v15 == v17)
    {

      v22 = 0;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v22 = v21 ^ 1;
    }

    (*(v4 + 8))(v7, v3);
    return v22 & 1;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t static CorrectionsEngine.getFirstTaskUda(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(MEMORY[0x26D5E71D0](v7) + 16);

  if (v10 < 2)
  {
    goto LABEL_4;
  }

  v12 = MEMORY[0x26D5E71D0](v11);
  specialized Collection.first.getter(v12, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v11 = outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v4, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_4:
    v13 = MEMORY[0x26D5E71D0](v11);
    specialized Collection.first.getter(v13, a1);
  }

  (*(v6 + 32))(v9, v4, v5);
  if ((Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0 && (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) == 0 && (Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter() & 1) == 0)
  {
    v11 = (*(v6 + 8))(v9, v5);
    goto LABEL_4;
  }

  v15 = MEMORY[0x26D5E71D0]();
  specialized Collection.dropFirst(_:)(1, v15);
  specialized Collection.first.getter(v16, v17, v18, a1);
  swift_unknownObjectRelease();
  return (*(v6 + 8))(v9, v5);
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = specialized Array.subscript.getter(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CorrectionsEngine.isDeleteAndUpdate(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v26 - v1;
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_281321728;
  if (!qword_281321728)
  {
    return 0;
  }

  v8 = static CorrectionsEngine.inverseDirectInvocation;
  if (static CorrectionsEngine.inverseDirectInvocation == 0xD000000000000024 && qword_281321728 == 0x8000000266A62710)
  {
    return 0;
  }

  v10 = qword_281321730;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  type metadata accessor for CorrectionsEngine();
  *&v27 = v8;
  *(&v27 + 1) = v7;
  v28 = v10;

  if (static CorrectionsEngine.isCrossAlarmTimerDomain(invocation:incomingParse:)())
  {
    v11 = v8;
    v12 = v7;
    v13 = v10;
LABEL_17:
    outlined consume of CorrectionsDirectInvocation?(v11, v12, v13);
    return 0;
  }

  if (!v10)
  {
    v11 = v8;
    v12 = v7;
    v13 = 0;
    goto LABEL_17;
  }

  outlined consume of CorrectionsDirectInvocation?(v8, v7, v10);
  specialized Dictionary.subscript.getter(1651664246, 0xE400000000000000, v10, &v27);

  if (!v29)
  {
    v16 = &_sypSgMd;
    v17 = &_sypSgMR;
    v18 = &v27;
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v15 = v26[1];
  v14 = v26[2];
  static CorrectionsEngine.getFirstTaskUda(_:)(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {

    v16 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
    v17 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
    v18 = v2;
LABEL_20:
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v18, v16, v17);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v20 = static CorrectionsEngine.tasks(from:)(v6);
  result = specialized Array._getCount()(v20);
  if (!result)
  {
    (*(v4 + 8))(v6, v3);

    return 0;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5E76F0](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  if (v15 == 0x6574656C6564 && v14 == 0xE600000000000000)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      (*(v4 + 8))(v6, v3);

      return 0;
    }
  }

  if (UsoTask.verbString.getter() == 0x657461647075 && v23 == 0xE600000000000000)
  {

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v4 + 8))(v6, v3);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Void __swiftcall CorrectionsEngine.setUndoInvocation(directInvocation:context:)(SiriCorrections::CorrectionsDirectInvocation directInvocation, SiriCorrections::CorrectionsContext_optional *context)
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_1();
  v14 = v13 - v12;
  v15 = v3[1];
  v41 = *v3;
  v16 = v3[2];
  OUTLINED_FUNCTION_59();
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for log);
  }

  static Logger.log;
  OSSignpostID.init(log:)();
  v17 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_67(v17, &dword_266A4D000, v18, "setUndoDirectInvocation");
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v19, static Logger.logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_32(v21))
  {
    v22 = OUTLINED_FUNCTION_30();
    v40 = v7;
    *v22 = 0;
    _os_log_impl(&dword_266A4D000, v20, v21, "[CorrectionsEngine.setUndoInvocation] storing an undo direct invocation.", v22, 2u);
    v7 = v40;
    OUTLINED_FUNCTION_5_2();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3(&one-time initialization token for shared);
  }

  v23 = static CorrectionsSELFHelper.shared;
  v42[0] = v41;
  v42[1] = v15;
  v42[2] = v16;
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  (*(*static CorrectionsSELFHelper.shared + 152))(v42, &v45);
  if (one-time initialization token for parseStoredTime != -1)
  {
    OUTLINED_FUNCTION_10_0(&one-time initialization token for parseStoredTime);
  }

  OUTLINED_FUNCTION_18_0(v4, static CorrectionsEngine.parseStoredTime);
  static Date.now.getter();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_35();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  swift_beginAccess();
  outlined assign with take of Date?(v7, v23);
  swift_endAccess();
  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    OUTLINED_FUNCTION_3_3(&one-time initialization token for inverseDirectInvocation);
  }

  OUTLINED_FUNCTION_71(&static CorrectionsEngine.inverseDirectInvocation, &v44);
  v28 = static CorrectionsEngine.inverseDirectInvocation;
  v29 = qword_281321728;
  v30 = qword_281321730;
  static CorrectionsEngine.inverseDirectInvocation = v41;
  qword_281321728 = v15;
  qword_281321730 = v16;

  outlined consume of CorrectionsDirectInvocation?(v28, v29, v30);
  if (one-time initialization token for context != -1)
  {
    OUTLINED_FUNCTION_4_3(&one-time initialization token for context);
  }

  v31 = static CorrectionsEngine.context;
  OUTLINED_FUNCTION_71(static CorrectionsEngine.context, &v43);
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[3];
  v47 = v31[2];
  v48 = v34;
  v45 = v32;
  v46 = v33;
  v35 = v49;
  v36 = v50;
  v37 = v52;
  v31[2] = v51;
  v31[3] = v37;
  *v31 = v35;
  v31[1] = v36;
  outlined init with copy of CorrectionsContext?(&v49, v42, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(&v45, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  v38 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_67(v38, &dword_266A4D000, v39, "setUndoDirectInvocation");
  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_19();
}

void CorrectionsEngine.checkUndo(input:context:correctionsOutcome:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66();
  v370 = v2;
  v362 = v3;
  v367 = v4;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v368 = &v334[-v6];
  OUTLINED_FUNCTION_23();
  v360 = type metadata accessor for Date();
  OUTLINED_FUNCTION_6();
  v355 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_2();
  v358 = v9;
  OUTLINED_FUNCTION_23();
  v369 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_6();
  v340 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_2();
  v339 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v14 = OUTLINED_FUNCTION_48(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13();
  v337 = v15;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16();
  v348 = v17;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16();
  v347 = v19;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v20);
  v345 = &v334[-v21];
  OUTLINED_FUNCTION_23();
  v363 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_6();
  v350 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13();
  v336 = v24;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_16();
  v338 = v26;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_16();
  v346 = v28;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_16();
  v352 = v30;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v31);
  v349 = &v334[-v32];
  OUTLINED_FUNCTION_23();
  v33 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome();
  OUTLINED_FUNCTION_6();
  v356 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_2();
  v344 = v36;
  v37 = OUTLINED_FUNCTION_23();
  v38 = type metadata accessor for CorrectionsUSOParse(v37);
  v39 = OUTLINED_FUNCTION_48(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_2();
  v357 = v40;
  v41 = OUTLINED_FUNCTION_23();
  v361 = type metadata accessor for CorrectionsParse(v41);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_2();
  v371 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  OUTLINED_FUNCTION_48(v44);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v45);
  v374 = &v334[-v46];
  OUTLINED_FUNCTION_23();
  v47 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome.CorrectionType();
  OUTLINED_FUNCTION_6();
  v372 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_13();
  v343 = v50;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v51);
  v353 = &v334[-v52];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSg_AFtMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSg_AFtMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v54);
  v56 = &v334[-v55];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  OUTLINED_FUNCTION_48(v57);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v58);
  v60 = &v334[-v59];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMR);
  v62 = OUTLINED_FUNCTION_48(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_13();
  v359 = v63;
  OUTLINED_FUNCTION_7_1();
  v65 = MEMORY[0x28223BE20](v64);
  v67 = &v334[-v66];
  MEMORY[0x28223BE20](v65);
  v69 = &v334[-v68];
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_6();
  v365 = v71;
  v366 = v70;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_8_1();
  v74 = v73 - v72;
  OUTLINED_FUNCTION_59();
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for log);
  }

  v75 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v364 = v75;
  os_signpost(_:dso:log:name:signpostID:)();
  outlined init with copy of CorrectionsContext?(v370, v60, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  OUTLINED_FUNCTION_16_0(v60);
  v373 = v74;
  v351 = v33;
  if (v99)
  {
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v60, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  }

  else
  {
    Siri_Nlu_External_CorrectionOutcome.type.getter();
    (*(v356 + 8))(v60, v33);
  }

  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  v80 = *(v372 + 104);
  v342 = *MEMORY[0x277D5DCE8];
  v341 = v80;
  v80(v67);
  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  v85 = *(v53 + 48);
  v86 = &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd;
  v87 = &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMR;
  OUTLINED_FUNCTION_29();
  outlined init with copy of CorrectionsContext?(v88, v89, v90, v91);
  OUTLINED_FUNCTION_29();
  outlined init with copy of CorrectionsContext?(v92, v93, v94, v95);
  OUTLINED_FUNCTION_68(v56);
  v96 = v371;
  if (v99)
  {
    OUTLINED_FUNCTION_54(v67);
    OUTLINED_FUNCTION_54(v69);
    OUTLINED_FUNCTION_68(&v56[v85]);
    if (v99)
    {
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v56, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMR);
      v97 = v363;
LABEL_16:
      LODWORD(v86) = 0;
      LODWORD(v359) = 8;
      LOBYTE(v87) = 1;
      goto LABEL_18;
    }

LABEL_14:
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v56, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSg_AFtMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSg_AFtMR);
    OUTLINED_FUNCTION_61();
    v97 = v363;
    goto LABEL_18;
  }

  v98 = v359;
  outlined init with copy of CorrectionsContext?(v56, v359, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMR);
  OUTLINED_FUNCTION_68(&v56[v85]);
  if (v99)
  {
    v100 = v98;
    v86 = &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd;
    OUTLINED_FUNCTION_54(v67);
    OUTLINED_FUNCTION_54(v69);
    (*(v372 + 8))(v100, v47);
    goto LABEL_14;
  }

  v101 = v372;
  v102 = &v56[v85];
  v103 = v353;
  (*(v372 + 32))(v353, v102, v47);
  lazy protocol witness table accessor for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType(&lazy protocol witness table cache variable for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType, MEMORY[0x277D5DCF0]);
  v335 = dispatch thunk of static Equatable.== infix(_:_:)();
  LODWORD(v86) = v101 + 8;
  v104 = *(v101 + 8);
  v104(v103, v47);
  v87 = &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd;
  OUTLINED_FUNCTION_51();
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v105, v106, v107);
  OUTLINED_FUNCTION_51();
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v108, v109, v110);
  v104(v359, v47);
  v96 = v371;
  OUTLINED_FUNCTION_51();
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v111, v112, v113);
  v97 = v363;
  if (v335)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_61();
LABEL_18:
  OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
  outlined init with copy of CorrectionsParse(v362, v96);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v119 = 0x281321000uLL;
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of CorrectionsUSOParse(v96, v357);
    v124 = v351;
    if (__swift_getEnumTagSinglePayload(v370, 1, v351) == 1)
    {
      v125 = v344;
      Siri_Nlu_External_UserParse.correctionOutcome.getter();
      v126 = v353;
      Siri_Nlu_External_CorrectionOutcome.type.getter();
      (*(v356 + 8))(v125, v124);
      v127 = v343;
      v341(v343, v342, v47);
      lazy protocol witness table accessor for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType(&lazy protocol witness table cache variable for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType, MEMORY[0x277D5DCF8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v128 = *(v372 + 8);
      v128(v127, v47);
      v129 = v126;
      v119 = 0x281321000;
      v128(v129, v47);
      if (v390 == *&v405[0])
      {
LABEL_26:
        v130 = 1;
        v122 = v368;
        v131 = v357;
        goto LABEL_37;
      }
    }

    else if (!v86)
    {
      goto LABEL_26;
    }

    v131 = v357;
    v140 = MEMORY[0x26D5E71D0]();
    v141 = v345;
    specialized Collection.first.getter(v140, v345);

    OUTLINED_FUNCTION_16_0(v141);
    v122 = v368;
    if (!v99)
    {
      v165 = v350;
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_51();
      v166();
      OUTLINED_FUNCTION_58();
      if (!v167)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v168 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_18_0(v168, static Logger.logger);
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.debug.getter();
      v171 = OUTLINED_FUNCTION_14_0(v170);
      v146 = v352;
      if (v171)
      {
        v172 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_22(v172);
        OUTLINED_FUNCTION_12_0(&dword_266A4D000, v173, v174, "[CorrectionsEngine.checkUndo] Corrections signal not detected, falling back to using user dialog acts.");
        OUTLINED_FUNCTION_2();
      }

      v175 = v349;
      if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
      {
        v176 = 1;
      }

      else
      {
        if ((Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) == 0)
        {
          v306 = Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter();
          (*(v165 + 8))(v175, v97);
          if (v306)
          {
LABEL_42:
            LODWORD(v372) = 8;
            v165 = v350;
            goto LABEL_67;
          }

LABEL_146:
          OUTLINED_FUNCTION_1_2();
          outlined destroy of CorrectionsParse(v131, v307);
          goto LABEL_147;
        }

        v176 = 2;
      }

      LODWORD(v372) = v176;
      (*(v165 + 8))(v175, v97);
LABEL_67:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v178 = type metadata accessor for Logger();
      __swift_project_value_buffer(v178, static Logger.logger);
      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_32(v180))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_64(&dword_266A4D000, v181, v182, "[CorrectionsEngine.checkUndo] undo request detected in uso");
        v165 = v350;
        OUTLINED_FUNCTION_5_2();
      }

      v183 = MEMORY[0x26D5E71D0]();
      v184 = v347;
      specialized Collection.first.getter(v183, v347);

      OUTLINED_FUNCTION_16_0(v184);
      if (v99)
      {
        v185 = outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v184, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        v186 = v348;
      }

      else
      {
        OUTLINED_FUNCTION_60();
        v187(v146, v184, v97);
        v188 = Siri_Nlu_External_UserDialogAct.hasRejected.getter();
        v186 = v348;
        if (v188 & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter())
        {
          v189 = *(MEMORY[0x26D5E71D0]() + 16);

          if (v189 == 1)
          {
            v133 = Logger.logObject.getter();
            v190 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_14_0(v190))
            {
              v191 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_22(v191);
              OUTLINED_FUNCTION_12_0(&dword_266A4D000, v192, v193, "[CorrectionsEngine.checkUndo] undo action parseExludingUndoUserDialogActs won't be set");
              OUTLINED_FUNCTION_2();

              v194 = OUTLINED_FUNCTION_37();
              v195(v194);
              OUTLINED_FUNCTION_1_2();
              outlined destroy of CorrectionsParse(v131, v196);
              v139 = 1;
              LODWORD(v359) = v372;
              v138 = 2;
              goto LABEL_107;
            }

            v229 = OUTLINED_FUNCTION_37();
            v230(v229);
            OUTLINED_FUNCTION_1_2();
            outlined destroy of CorrectionsParse(v131, v231);
            v138 = 2;
            v139 = 1;
            goto LABEL_106;
          }
        }

        v185 = (*(v165 + 8))(v146, v97);
      }

      v197 = MEMORY[0x26D5E71D0](v185);
      specialized Collection.first.getter(v197, v186);

      OUTLINED_FUNCTION_16_0(v186);
      v198 = v346;
      if (v99)
      {
        outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v186, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_60();
        v209(v198, v186, v97);
        v210 = Siri_Nlu_External_UserDialogAct.hasRejected.getter();
        if (v210 & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter())
        {
          type metadata accessor for CorrectionsEngine();
          if (static CorrectionsEngine.isDeleteAndUpdate(_:)())
          {
            (*(v165 + 8))(v198, v97);
            v211 = v374;
            outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v374, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
            v212 = v369;
            (*(v340 + 16))(v211, v131, v369);
            OUTLINED_FUNCTION_1_2();
            outlined destroy of CorrectionsParse(v131, v213);
            OUTLINED_FUNCTION_35();
            __swift_storeEnumTagSinglePayload(v214, v215, v216, v212);
LABEL_147:
            v177 = 7;
            goto LABEL_148;
          }

          v217 = v97;
          v218 = v131;
          v219 = v339;
          v220 = v340;
          v221 = v369;
          (*(v340 + 16))(v339, v218, v369);
          v222 = Siri_Nlu_External_UserParse.userDialogActs.modify();
          v223 = v338;
          specialized RangeReplaceableCollection.removeFirst()(v338);
          v224 = *(v165 + 8);
          v224(v223, v217);
          v222(&v390, 0);
          v224(v346, v217);
          OUTLINED_FUNCTION_1_2();
          outlined destroy of CorrectionsParse(v357, v225);
          v133 = v374;
          outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v374, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
          (*(v220 + 32))(v133, v219, v221);
          OUTLINED_FUNCTION_35();
          v119 = 0x281321000;
          __swift_storeEnumTagSinglePayload(v226, v227, v228, v221);
LABEL_104:
          v139 = 0;
          v138 = 3;
LABEL_106:
          LODWORD(v359) = v372;
          goto LABEL_107;
        }

        (*(v165 + 8))(v198, v97);
      }

      if (*(v119 + 936) != -1)
      {
        OUTLINED_FUNCTION_3_3(&one-time initialization token for inverseDirectInvocation);
      }

      OUTLINED_FUNCTION_41(&static CorrectionsEngine.inverseDirectInvocation, &v375);
      v133 = qword_281321728;
      if (!qword_281321728)
      {
        goto LABEL_94;
      }

      v199 = static CorrectionsEngine.inverseDirectInvocation;
      v200 = static CorrectionsEngine.inverseDirectInvocation == 0xD000000000000024 && qword_281321728 == 0x8000000266A62710;
      if (v200 || (v201 = qword_281321730, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (type metadata accessor for CorrectionsEngine(), *&v390 = v199, *(&v390 + 1) = v133, *&v391 = v201, (static CorrectionsEngine.isCrossAlarmTimerDomain(invocation:incomingParse:)() & 1) != 0))
      {
        v133 = 0;
LABEL_94:
        v202 = 0;
LABEL_95:
        v203 = v374;
        outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v374, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        v204 = v369;
        (*(v340 + 16))(v203, v131, v369);
        OUTLINED_FUNCTION_1_2();
        outlined destroy of CorrectionsParse(v131, v205);
        OUTLINED_FUNCTION_35();
        __swift_storeEnumTagSinglePayload(v206, v207, v208, v204);
        v177 = 7;
        if (v202 || (v133 & 1) != 0)
        {
          goto LABEL_148;
        }

        goto LABEL_104;
      }

      v322 = *(MEMORY[0x26D5E71D0]() + 16);

      if (v322 == 1)
      {
        v324 = MEMORY[0x26D5E71D0](v323);
        v325 = v337;
        specialized Collection.first.getter(v324, v337);

        OUTLINED_FUNCTION_16_0(v325);
        if (v99)
        {
          outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v325, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        }

        else
        {
          v326 = v350;
          OUTLINED_FUNCTION_60();
          v327 = v336;
          OUTLINED_FUNCTION_51();
          v328();
          v329 = static CorrectionsEngine.tasks(from:)(v327);
          v330 = specialized Collection.first.getter(v329);

          if (v330)
          {
            *&v390 = UsoTask.verbString.getter();
            *(&v390 + 1) = v331;
            MEMORY[0x28223BE20](v390);
            *&v334[-16] = &v390;
            v202 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v334[-32], &outlined read-only object #0 of one-time initialization function for deleteVerbStrings);

            v122 = v368;
            (*(v326 + 8))(v327, v97);
            v119 = 0x281321000;

LABEL_177:
            v133 = static CorrectionsEngine.isDeleteAndUpdate(_:)();
            goto LABEL_95;
          }

          v332 = OUTLINED_FUNCTION_37();
          v333(v332);
        }
      }

      v202 = 0;
      goto LABEL_177;
    }

    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v141, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v130 = 0;
LABEL_37:
    OUTLINED_FUNCTION_58();
    if (!v99)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v142 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v142, static Logger.logger);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();
    v145 = OUTLINED_FUNCTION_14_0(v144);
    v146 = v352;
    if (v145)
    {
      v147 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_22(v147);
      OUTLINED_FUNCTION_12_0(&dword_266A4D000, v148, v149, "[CorrectionsEngine.checkUndo] Corrections signal detected");
      OUTLINED_FUNCTION_2();
    }

    if (v130)
    {
      goto LABEL_42;
    }

    goto LABEL_146;
  }

  if (EnumCaseMultiPayload == 1)
  {
    objc_opt_self();
    v120 = swift_dynamicCastObjCClass();
    objc_opt_self();
    v121 = swift_dynamicCastObjCClass();
    v122 = v368;
    if (v121)
    {
      if (v120)
      {
        v123 = 1;
      }

      else
      {
        v123 = 2;
      }

      goto LABEL_52;
    }

    if (v120)
    {
      v123 = 1;
LABEL_52:
      LODWORD(v359) = v123;
      OUTLINED_FUNCTION_58();
      if (!v99)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v162 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_18_0(v162, static Logger.logger);
      v133 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_32(v163))
      {
        v164 = OUTLINED_FUNCTION_30();
        *v164 = 0;
        _os_log_impl(&dword_266A4D000, v133, v163, "[CorrectionsEngine.checkUndo] undo request detected in NLv4", v164, 2u);
        OUTLINED_FUNCTION_5_2();
      }

      swift_unknownObjectRelease();
      v139 = 1;
      v119 = 0x281321000uLL;
      v138 = 2;
      goto LABEL_107;
    }

    swift_unknownObjectRelease();
    v177 = v359;
LABEL_148:
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v308 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v308, static Logger.logger);
    v309 = Logger.logObject.getter();
    v310 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_14_0(v310))
    {
      v311 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_22(v311);
      OUTLINED_FUNCTION_12_0(&dword_266A4D000, v312, v313, "[CorrectionsEngine.checkUndo] undo was not requested");
      OUTLINED_FUNCTION_2();
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_3(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_6_2();
    v259 = OUTLINED_FUNCTION_47();
    v261 = v177;
    goto LABEL_155;
  }

  v122 = v368;
  if (v87)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v132, static Logger.logger);
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_14_0(v134))
    {
      v135 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_22(v135);
      OUTLINED_FUNCTION_12_0(&dword_266A4D000, v136, v137, "[CorrectionsEngine.checkUndo] this is not nlv4 or uso parse, but correction signal is present");
      OUTLINED_FUNCTION_5_2();
    }

    OUTLINED_FUNCTION_19_0();
    v138 = 2;
    v139 = 1;
LABEL_107:
    if (one-time initialization token for parseStoredTime != -1)
    {
      OUTLINED_FUNCTION_10_0(&one-time initialization token for parseStoredTime);
    }

    v232 = OUTLINED_FUNCTION_18_0(v354, static CorrectionsEngine.parseStoredTime);
    OUTLINED_FUNCTION_41(v232, &v407);
    outlined init with copy of CorrectionsContext?(v133, v122, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v233 = v360;
    if (__swift_getEnumTagSinglePayload(v122, 1, v360) == 1)
    {
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v122, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_127:
      OUTLINED_FUNCTION_58();
      if (!v99)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v253 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_18_0(v253, static Logger.logger);
      v254 = Logger.logObject.getter();
      v255 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_14_0(v255))
      {
        v256 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_22(v256);
        OUTLINED_FUNCTION_12_0(&dword_266A4D000, v257, v258, "[CorrectionsEngine.checkUndo] nothing to undo.");
        OUTLINED_FUNCTION_2();
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_3(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_6_2();
      v259 = OUTLINED_FUNCTION_47();
      v261 = 3;
LABEL_155:
      v260(v259, v261);
LABEL_156:
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v374, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
      type metadata accessor for UndoAction(0);
      OUTLINED_FUNCTION_55();
LABEL_157:
      __swift_storeEnumTagSinglePayload(v272, v273, v274, v275);
      goto LABEL_158;
    }

    (*(v355 + 32))(v358, v122, v233);
    if (*(v119 + 936) != -1)
    {
      OUTLINED_FUNCTION_3_3(&one-time initialization token for inverseDirectInvocation);
    }

    OUTLINED_FUNCTION_41(&static CorrectionsEngine.inverseDirectInvocation, &v406);
    v234 = qword_281321728;
    if (!qword_281321728)
    {
      v251 = OUTLINED_FUNCTION_40();
      v252(v251, v233);
      goto LABEL_127;
    }

    v235 = static CorrectionsEngine.inverseDirectInvocation;
    v236 = qword_281321730;
    v237 = one-time initialization token for context;

    if (v237 != -1)
    {
      v238 = OUTLINED_FUNCTION_4_3(&one-time initialization token for context);
    }

    v239 = static CorrectionsEngine.context;
    OUTLINED_FUNCTION_27(v238, &v405[4] + 8);
    if (*(v239 + 8) == 1)
    {
      goto LABEL_118;
    }

    v240 = *(&v408 + 1);
    if (*(&v408 + 1) == 1)
    {
      goto LABEL_118;
    }

    v371 = v138;
    v372 = v235;
    v276 = *v239;
    v277 = *(v239 + 16);
    v278 = *(v239 + 48);
    v405[2] = *(v239 + 32);
    v405[3] = v278;
    v405[0] = v276;
    v405[1] = v277;
    v279 = *(&v276 + 1);
    v280 = *(v239 + 32);
    v402 = *(v239 + 16);
    v403 = v280;
    v404 = *(v239 + 48);
    v281 = v408;
    v399 = v409;
    v400 = v410;
    v401 = v411;
    if (*(&v276 + 1) == 1)
    {
      OUTLINED_FUNCTION_29();
      v283 = v282;
      outlined init with copy of CorrectionsContext?(v284, v285, v286, v287);
      OUTLINED_FUNCTION_29();
      outlined init with copy of CorrectionsContext?(v288, v289, v290, v291);
      outlined consume of CorrectionsDirectInvocation?(v372, v234, v236);
      *&v390 = v283;
      *(&v390 + 1) = 1;
      v391 = v402;
      v392 = v403;
      v393 = v404;
      v394 = v281;
      v395 = v240;
      v396 = v399;
      v397 = v400;
      v398 = v401;
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(&v390, &_s15SiriCorrections0B7ContextVSg_ADtMd, &_s15SiriCorrections0B7ContextVSg_ADtMR);
    }

    else
    {
      v390 = v276;
      v391 = v402;
      v392 = v403;
      v393 = v404;
      v388 = v403;
      v389 = v404;
      v386 = v276;
      v387 = v402;
      v377 = v409;
      v378 = v410;
      v379 = v411;
      v376 = v408;
      v292 = v276;
      v293 = static CorrectionsContext.== infix(_:_:)(&v386, &v376);
      v380[0] = v376;
      v380[1] = v377;
      v380[2] = v378;
      v380[3] = v379;
      OUTLINED_FUNCTION_29();
      outlined init with copy of CorrectionsContext?(v294, v295, v296, v297);
      OUTLINED_FUNCTION_29();
      outlined init with copy of CorrectionsContext?(v298, v299, v300, v301);
      OUTLINED_FUNCTION_29();
      outlined init with copy of CorrectionsContext?(v302, v303, v304, v305);
      outlined destroy of CorrectionsContext(v380);
      v381[0] = v386;
      v381[1] = v387;
      v381[2] = v388;
      v381[3] = v389;
      outlined destroy of CorrectionsContext(v381);
      v382[0] = v292;
      v382[1] = v279;
      v383 = v402;
      v384 = v403;
      v385 = v404;
      OUTLINED_FUNCTION_54(v382);
      if (v293)
      {
        v138 = v371;
        v235 = v372;
LABEL_118:
        Date.timeIntervalSinceNow.getter();
        if (v241 >= -30.0)
        {
          if (one-time initialization token for logger != -1)
          {
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v262 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_18_0(v262, static Logger.logger);
          v263 = Logger.logObject.getter();
          v264 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_32(v264))
          {
            v265 = OUTLINED_FUNCTION_30();
            *v265 = 0;
            _os_log_impl(&dword_266A4D000, v263, v264, "[CorrectionsEngine.checkUndo] undo action being returned", v265, 2u);
            OUTLINED_FUNCTION_5_2();
          }

          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_3(&one-time initialization token for shared);
          }

          v266 = OUTLINED_FUNCTION_6_2();
          (*(v267 + 144))(v138, v359, &v390, v266);
          v268 = OUTLINED_FUNCTION_40();
          v269(v268, v360);
          v270 = type metadata accessor for UndoAction(0);
          v271 = v367;
          outlined init with take of Siri_Nlu_External_UserParse?(v374, v367 + *(v270 + 24));
          *v271 = v235;
          *(v271 + 8) = v234;
          *(v271 + 16) = v236;
          *(v271 + 24) = v139;
          OUTLINED_FUNCTION_35();
          v275 = v270;
          goto LABEL_157;
        }

        outlined consume of CorrectionsDirectInvocation?(v235, v234, v236);
        if (one-time initialization token for logger != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v242 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_18_0(v242, static Logger.logger);
        v243 = Logger.logObject.getter();
        v244 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_14_0(v244))
        {
          v245 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_22(v245);
          OUTLINED_FUNCTION_12_0(&dword_266A4D000, v246, v247, "[CorrectionsEngine.checkUndo] undo action has gone stale.");
          OUTLINED_FUNCTION_2();
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_3(&one-time initialization token for shared);
        }

        OUTLINED_FUNCTION_6_2();
        v248 = OUTLINED_FUNCTION_47();
        v250 = 4;
        goto LABEL_167;
      }

      outlined consume of CorrectionsDirectInvocation?(v372, v234, v236);
    }

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v314 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v314, static Logger.logger);
    v315 = Logger.logObject.getter();
    v316 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_14_0(v316))
    {
      v317 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_22(v317);
      OUTLINED_FUNCTION_12_0(&dword_266A4D000, v318, v319, "[CorrectionsEngine.checkUndo] mismatched context.");
      OUTLINED_FUNCTION_2();
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_3(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_6_2();
    v248 = OUTLINED_FUNCTION_47();
    v250 = 5;
LABEL_167:
    v249(v248, v250);
    v320 = OUTLINED_FUNCTION_40();
    v321(v320, v360);
    goto LABEL_156;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v150 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v150, static Logger.logger);
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_14_0(v152))
  {
    v153 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_22(v153);
    OUTLINED_FUNCTION_12_0(&dword_266A4D000, v154, v155, "[CorrectionsEngine.checkUndo] this is not nlv4 or uso parse");
    OUTLINED_FUNCTION_5_2();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_6_2();
  v156 = OUTLINED_FUNCTION_47();
  v157(v156, 6);
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v374, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  type metadata accessor for UndoAction(0);
  OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
  OUTLINED_FUNCTION_19_0();
LABEL_158:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v365 + 8))(v373, v366);
  OUTLINED_FUNCTION_19();
}

uint64_t specialized RangeReplaceableCollection.removeFirst()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  specialized Collection.first.getter(*v1, &v9 - v5);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  result = __swift_getEnumTagSinglePayload(v6, 1, v8);
  if (result != 1)
  {
    result = (*(*(v8 - 8) + 32))(a1, v6, v8);
    if (*(v7 + 16))
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t UndoAction.init(directInvocation:isExclusive:parseExludingUndoUserDialogActs:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = a2;
  v7 = a4 + *(type metadata accessor for UndoAction(0) + 24);

  return outlined init with take of Siri_Nlu_External_UserParse?(a3, v7);
}

Swift::Bool __swiftcall CorrectionsEngine.isUndoPossible(context:)(SiriCorrections::CorrectionsContext_optional *context)
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  v7 = type metadata accessor for Date();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_1();
  v13 = v12 - v11;
  v15 = *v2;
  v14 = v2[1];
  v17 = v2[2];
  v16 = v2[3];
  if (one-time initialization token for parseStoredTime != -1)
  {
    OUTLINED_FUNCTION_10_0(&one-time initialization token for parseStoredTime);
  }

  v18 = __swift_project_value_buffer(v3, static CorrectionsEngine.parseStoredTime);
  OUTLINED_FUNCTION_41(v18, &v51);
  outlined init with copy of CorrectionsContext?(v18, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v19 = (*(v9 + 32))(v13, v6, v7);
    if (one-time initialization token for inverseDirectInvocation != -1)
    {
      v19 = OUTLINED_FUNCTION_3_3(&one-time initialization token for inverseDirectInvocation);
    }

    OUTLINED_FUNCTION_27(v19, &v50);
    if (!qword_281321728)
    {
      v30 = OUTLINED_FUNCTION_38();
      v31(v30);
      goto LABEL_16;
    }

    v20 = Date.timeIntervalSinceNow.getter();
    if (v21 < -30.0)
    {
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_18_0(v22, static Logger.logger);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_32(v24))
      {
        goto LABEL_14;
      }

      *OUTLINED_FUNCTION_30() = 0;
      v27 = "[CorrectionsEngine.isUndoPossible] undo action has gone stale.";
LABEL_13:
      OUTLINED_FUNCTION_64(&dword_266A4D000, v25, v26, v27);
      OUTLINED_FUNCTION_5_2();
LABEL_14:

      v28 = OUTLINED_FUNCTION_38();
      v29(v28);
      goto LABEL_21;
    }

    if (v14 == 1)
    {
      goto LABEL_26;
    }

    if (one-time initialization token for context != -1)
    {
      v20 = OUTLINED_FUNCTION_4_3(&one-time initialization token for context);
    }

    v39 = static CorrectionsEngine.context;
    OUTLINED_FUNCTION_27(v20, &v49);
    v40 = v39[1];
    if (v40 == 1)
    {
LABEL_26:
      v41 = OUTLINED_FUNCTION_38();
      v42(v41);
      goto LABEL_21;
    }

    v43 = v39[3];
    if (v43)
    {
      if (!v16)
      {
        goto LABEL_46;
      }

      if (v39[2] != v17 || v43 != v16)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }

        v40 = v39[1];
        if (v40 == 1)
        {
          goto LABEL_45;
        }
      }
    }

    else if (v16)
    {
      goto LABEL_46;
    }

    if (v40)
    {
      if (v14)
      {
        v45 = *v39 == v15 && v40 == v14;
        if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_46;
    }

LABEL_45:
    if (!v14)
    {
      goto LABEL_26;
    }

LABEL_46:
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v46, static Logger.logger);
    v23 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_32(v47))
    {
      goto LABEL_14;
    }

    *OUTLINED_FUNCTION_30() = 0;
    v27 = "[CorrectionsEngine.isUndoPossible] Correction is not possible with the given context.";
    goto LABEL_13;
  }

  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_16:
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v32, static Logger.logger);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_25(v34))
  {
    v35 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_45(v35);
    OUTLINED_FUNCTION_17_0(&dword_266A4D000, v36, v37, "[CorrectionsEngine.isUndoPossible] nothing to undo.");
    OUTLINED_FUNCTION_24();
  }

LABEL_21:
  OUTLINED_FUNCTION_19();
  return result;
}

uint64_t CorrectionsEngine.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t UndoAction.directInvocation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t UndoAction.init(directInvocation:isExclusive:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = a2;
  type metadata accessor for UndoAction(0);
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_55();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x26D5E7790);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12SiriNLUTypes0H27_Nlu_External_UserDialogActV_Tt1g5(v8, v7);
  v10 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12SiriNLUTypes0H27_Nlu_External_UserDialogActV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v4 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for Siri_Nlu_External_UserDialogAct(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
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

    MEMORY[0x26D5E7790](v6);
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

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v8 = *v2;
  v9 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = 5 * result;
  v12 = v10 + 40 * result;
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v15 = v12 + 40 * a3;
  if (!v14)
  {
    goto LABEL_12;
  }

  v16 = *(v9 + 16);
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_19;
  }

  v17 = (v10 + 40 * a2);
  if (v15 != v17 || v17 + 40 * (v16 - a2) <= v15)
  {
    result = memmove((v12 + 40 * a3), v17, 40 * (v16 - a2));
    v16 = *(v9 + 16);
  }

  v13 = __OFADD__(v16, v14);
  v19 = v16 + v14;
  if (v13)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_12:
  if (a3 > 0)
  {
    v20 = a4[1];
    v23 = *a4;
    v24 = v20;
    v25 = *(a4 + 32);
    v21 = 8 * v11 + v9;
    *(v21 + 32) = v23;
    *(v21 + 48) = v20;
    *(v21 + 64) = v25;
    if (v21 + 72 >= v15)
    {
      return result;
    }

    outlined init with copy of CorrectionsContext?(a4, v22, &_ss15CollectionOfOneVy15SiriCorrections19CorrectionOperationVGMd, &_ss15CollectionOfOneVy15SiriCorrections19CorrectionOperationVGMR);
    __break(1u);
  }

  return outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(a4, &_ss15CollectionOfOneVy15SiriCorrections19CorrectionOperationVGMd, &_ss15CollectionOfOneVy15SiriCorrections19CorrectionOperationVGMR);
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay12SiriOntology9UsoEntityCGGMd, &_ss17_NativeDictionaryVySSSay12SiriOntology9UsoEntityCGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v20);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()(a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeType, a3);
  if (IsNativeType)
  {
  }

  else
  {
    v7 = MEMORY[0x26D5E76F0](a2, a3);
  }

  *a1 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for Siri_Nlu_External_UserDialogAct();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}