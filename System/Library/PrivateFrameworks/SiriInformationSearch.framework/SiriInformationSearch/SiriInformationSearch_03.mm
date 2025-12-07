uint64_t storeEnumTagSinglePayload for OnScreenContextType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for OnScreenContextType.GeneratedClientEntity(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t one-time initialization function for pommes(uint64_t a1)
{
  return one-time initialization function for pommes(a1, static Logger.pommes, 0x73656D6D6F70, 0xE600000000000000);
}

{
  return one-time initialization function for pommes(a1, static Signposter.pommes, &one-time initialization token for pommes, static Logger.pommes, one-time initialization function for pommes);
}

uint64_t one-time initialization function for music(uint64_t a1)
{
  return one-time initialization function for pommes(a1, static Logger.music, 0x636973756DLL, 0xE500000000000000);
}

{
  return one-time initialization function for pommes(a1, static Signposter.music, &one-time initialization token for music, static Logger.music, one-time initialization function for music);
}

uint64_t one-time initialization function for insightRequestSummaryLogger()
{
  v0 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_allocate_value_buffer(v0, static Logger.insightRequestSummaryLogger);
  __swift_project_value_buffer(v0, static Logger.insightRequestSummaryLogger);
  return InsightRequestSummaryLogger.init()();
}

uint64_t one-time initialization function for sage(uint64_t a1)
{
  return one-time initialization function for pommes(a1, static Logger.sage, 1701273971, 0xE400000000000000);
}

{
  return one-time initialization function for pommes(a1, static Signposter.sage, &one-time initialization token for sage, static Logger.sage, one-time initialization function for sage);
}

uint64_t one-time initialization function for pommes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for loc()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Signposter.loc);
  __swift_project_value_buffer(v0, static Signposter.loc);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t one-time initialization function for pommes(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return OSSignposter.init(logger:)();
}

uint64_t Logger.pommes.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static Logger.pommes.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t OSSignposter.makeSignpostID(from:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    OSSignposter.logHandle.getter();

    return OSSignpostID.init(log:object:)();
  }

  else
  {
    OSSignposter.logHandle.getter();

    return OSSignpostID.init(log:)();
  }
}

uint64_t SignpostToken.init(name:id:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for SignpostToken(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for OSSignpostID();
  result = (*(*(v11 - 8) + 32))(a6 + v10, a4, v11);
  *(a6 + *(v9 + 24)) = a5;
  return result;
}

uint64_t OSSignposter.end(name:context:message:)(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v34 = a1;
  v35 = a6;
  v32 = a5;
  LODWORD(v33) = a3;
  v7 = type metadata accessor for OSSignpostError();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v29[-v18];
  if (a4)
  {
    swift_unknownObjectRetain();
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:object:)();
  }

  else
  {
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
  }

  (*(v11 + 16))(v17, v19, v10);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();

  v20 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v30 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((v33 & 1) == 0)
  {

    if (!v34)
    {
      __break(1u);
LABEL_8:

LABEL_17:

      v28 = *(v11 + 8);
      v28(v14, v10);
      return (v28)(v19, v10);
    }

LABEL_13:

    checkForErrorAndConsumeState(state:)();

    v22 = v31;
    if ((*(v31 + 88))(v9, v7) == *MEMORY[0x277D85B00])
    {
      v23 = 0;
      v24 = 0;
      v33 = "[Error] Interval already ended";
    }

    else
    {
      (*(v22 + 8))(v9, v7);
      v33 = "%s";
      v24 = 2;
      v23 = 1;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = v24;
    *(v25 + 1) = v23;
    *(v25 + 2) = 2080;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v35, &v36);
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_2232BB000, v20, v30, v27, v34, v33, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x223DE0F80](v26, -1, -1);
    MEMORY[0x223DE0F80](v25, -1, -1);
    goto LABEL_17;
  }

  if (v34 >> 32)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v34 & 0xFFFFF800) != 0xD800)
  {
    if (v34 >> 16 <= 0x10)
    {

      v34 = &v36;
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t SignpostToken.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignpostToken(0) + 20);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignpostToken.state.getter()
{
  type metadata accessor for SignpostToken(0);
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for SignpostToken(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OSSignpostIntervalState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

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

uint64_t SASelectedUserAttributes.selectedUserAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 meetsUserSessionThreshold];
  if (v4)
  {
    v5 = v4;
    [v4 BOOLValue];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2232BB000, v5, v7, "#user-session: could not resolve meetsUserSessionThreshold", v8, 2u);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }
  }

  v9 = [v2 meetsPersonalRequestThreshold];
  if (v9)
  {
    v10 = v9;
    [v9 BOOLValue];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v10, v12, "#user-session: could not resolve meetsPersonalRequestThreshold", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }
  }

  v14 = [v2 userIdentityClassification];
  if (!v14)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.pommes);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_22;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "#user-session: could not resolve userIdentityClassification. Setting to unspecified";
    goto LABEL_21;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v19 == v18)
  {
    goto LABEL_16;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_25;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v33 == v18)
  {
    goto LABEL_16;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_25;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v35 == v18)
  {
    goto LABEL_16;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_25;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v37 == v18)
  {
LABEL_16:

LABEL_25:

    goto LABEL_26;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_25;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v16 && v39 == v18)
  {

    goto LABEL_26;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.pommes);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_22;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "#user-session: unexpected value for userIdentityClassification. Setting to unspecified";
LABEL_21:
    _os_log_impl(&dword_2232BB000, v21, v22, v24, v23, 2u);
    MEMORY[0x223DE0F80](v23, -1, -1);
LABEL_22:
  }

LABEL_26:
  v26 = [v2 score];
  if (v26)
  {
    v27 = v26;
    [v26 intValue];
  }

  v28 = [v2 lowScoreThreshold];
  if (v28)
  {
    v29 = v28;
    [v28 intValue];
  }

  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  v30 = type metadata accessor for SelectedUserAttributes();
  v31 = *(*(v30 - 8) + 56);

  return v31(a1, 0, 1, v30);
}

uint64_t PommesServerFallbackPreferences.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PommesServerFallbackPreferences.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(void *a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return specialized UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(v6, v3, v2, v4, v5);
}

uint64_t closure #1 in UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(void *a1, uint64_t a2, void (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ResolveQuery();
  swift_allocObject();

  ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:)();
  a3();
}

void *specialized UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:)(uint64_t *a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  v108 = a1;
  v109 = a3;
  v112 = type metadata accessor for RREntity();
  v114 = *(v112 - 8);
  v8 = MEMORY[0x28223BE20](v112);
  v103 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v104 = &v102 - v11;
  MEMORY[0x28223BE20](v10);
  v105 = &v102 - v12;
  v115 = type metadata accessor for RRCandidate();
  v110 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RRResult();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v106 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v102 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v111 = &v102 - v27;
  v117[3] = a4;
  v117[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
  v29 = (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v108, a4);
  if (a2)
  {
    if (one-time initialization token for shared != -1)
    {
LABEL_68:
      v29 = swift_once();
    }

    v108 = &v102;
    v30 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v29);
    v100 = v117;
    v101 = v109;
    Date.init()();
    v31 = *(*v30 + 200);
    LOBYTE(v99) = 2;
    v32 = v111;
    v31(0xD000000000000027, 0x80000002234DA930, 0, v22, "SiriInformationSearch/UsoEntity+SRR.swift", 41, 2, 20, "resolveFromSRR(rrClient:useSRREntityAPI:)", 41, v99, partial apply for closure #1 in UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:), &v99, v23);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      v29 = swift_once();
    }

    v108 = &v102;
    v33 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v29);
    v100 = v117;
    v101 = v109;
    Date.init()();
    v34 = *(*v33 + 200);
    LOBYTE(v99) = 2;
    v32 = v111;
    v34(0xD00000000000001CLL, 0x80000002234DA8B0, 0, v22, "SiriInformationSearch/UsoEntity+SRR.swift", 41, 2, 24, "resolveFromSRR(rrClient:useSRREntityAPI:)", 41, v99, partial apply for closure #2 in UsoEntity.resolveFromSRR(rrClient:useSRREntityAPI:), &v99, v23);
  }

  (*(v20 + 8))(v22, v19);
  outlined init with copy of Result<RRResult, Error>(v32, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v26;
    v116 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.pommes);
    v37 = v35;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v116 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v116);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2232BB000, v38, v39, "Could not resolve from SRR: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x223DE0F80](v41, -1, -1);
      MEMORY[0x223DE0F80](v40, -1, -1);
    }

    else
    {
    }

    outlined destroy of Result<RRResult, Error>(v111);
    v51 = 0;
    goto LABEL_32;
  }

  v45 = v107;
  (v15[4])(v107, v26, v14);
  v22 = v106;
  (v15[2])(v106, v45, v14);
  v46 = (v15[11])(v22, v14);
  if (v46 == *MEMORY[0x277D5FEC0])
  {
    (v15[12])(v22, v14);
    v47 = v110;
    v48 = v113;
    v49 = v22;
    v50 = v115;
    (*(v110 + 32))(v113, v49, v115);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_2234CF920;
    RRCandidate.entity.getter();
    (*(v47 + 8))(v48, v50);
    (v15[1])(v45, v14);
    v52 = v32;
LABEL_31:
    outlined destroy of Result<RRResult, Error>(v52);
LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(v117);
    return v51;
  }

  v53 = v46 == *MEMORY[0x277D5FED0];
  v108 = v15;
  v102 = v14;
  if (v53)
  {
    (v15[12])(v22, v14);
    v54 = *v22;
    v55 = *(v54 + 2);
    if (v55)
    {
      v116 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
      v51 = v116;
      v56 = v110 + 16;
      v57 = *(v110 + 16);
      v58 = *(v110 + 80);
      v106 = v54;
      v59 = &v54[(v58 + 32) & ~v58];
      v109 = *(v110 + 72);
      v110 = v57;
      v60 = (v56 - 8);
      v61 = v105;
      do
      {
        v62 = v113;
        v63 = v115;
        (v110)(v113, v59, v115);
        RRCandidate.entity.getter();
        (*v60)(v62, v63);
        v116 = v51;
        v65 = *(v51 + 16);
        v64 = *(v51 + 24);
        if (v65 >= v64 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
          v51 = v116;
        }

        *(v51 + 16) = v65 + 1;
        (*(v114 + 32))(v51 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v65, v61, v112);
        v59 = &v109[v59];
        --v55;
      }

      while (v55);
      goto LABEL_30;
    }

LABEL_55:

    (v15[1])(v45, v14);
    v90 = v32;
    goto LABEL_56;
  }

  if (v46 == *MEMORY[0x277D5FEC8])
  {
    (v15[12])(v22, v14);
    v66 = *v22;
    v67 = *(*v22 + 16);
    if (v67)
    {
      v116 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67, 0);
      v51 = v116;
      v68 = v110 + 16;
      v69 = *(v110 + 16);
      v70 = *(v110 + 80);
      v106 = v66;
      v71 = &v66[(v70 + 32) & ~v70];
      v109 = *(v110 + 72);
      v110 = v69;
      v72 = (v68 - 8);
      v73 = v104;
      do
      {
        v74 = v113;
        v75 = v115;
        (v110)(v113, v71, v115);
        RRCandidate.entity.getter();
        (*v72)(v74, v75);
        v116 = v51;
        v77 = *(v51 + 16);
        v76 = *(v51 + 24);
        if (v77 >= v76 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
          v51 = v116;
        }

        *(v51 + 16) = v77 + 1;
        (*(v114 + 32))(v51 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v77, v73, v112);
        v71 = &v109[v71];
        --v67;
      }

      while (v67);
LABEL_30:

      (v108[1])(v107, v102);
      v52 = v111;
      goto LABEL_31;
    }

    goto LABEL_55;
  }

  if (v46 != *MEMORY[0x277D5FED8])
  {
    v86 = *MEMORY[0x277D5FEE0];
    v87 = v32;
    v88 = v15[1];
    v89 = v46;
    v88(v45, v14);
    outlined destroy of Result<RRResult, Error>(v87);
    if (v89 != v86)
    {
      v88(v22, v14);
    }

    v51 = 0;
    goto LABEL_32;
  }

  (v15[12])(v22, v14);
  v79 = *v22;
  v26 = *(*v22 + 16);
  v19 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v80 = MEMORY[0x277D84F90];
LABEL_58:

    v91 = v80[2];
    if (v91)
    {
      v116 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 0);
      v51 = v116;
      v109 = *(v110 + 16);
      v110 += 16;
      v92 = v80 + ((*(v110 + 64) + 32) & ~*(v110 + 64));
      v106 = *(v110 + 56);
      v93 = (v110 - 8);
      v94 = v103;
      do
      {
        v95 = v113;
        v96 = v115;
        (v109)(v113, v92, v115);
        RRCandidate.entity.getter();
        (*v93)(v95, v96);
        v116 = v51;
        v98 = *(v51 + 16);
        v97 = *(v51 + 24);
        if (v98 >= v97 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
          v51 = v116;
        }

        *(v51 + 16) = v98 + 1;
        (*(v114 + 32))(v51 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v98, v94, v112);
        v92 = &v106[v92];
        --v91;
      }

      while (v91);
      goto LABEL_30;
    }

    (v15[1])(v107, v14);
    v90 = v111;
LABEL_56:
    outlined destroy of Result<RRResult, Error>(v90);
    v51 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v20 = 0;
  v23 = v79 + 32;
  v80 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v20 >= *(v79 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v22 = *(v23 + 8 * v20);
    v81 = v22[2];
    v15 = v80[2];
    v14 = v15 + v81;
    if (__OFADD__(v15, v81))
    {
      goto LABEL_66;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v14 > v80[3] >> 1)
    {
      if (v15 <= v14)
      {
        v82 = v15 + v81;
      }

      else
      {
        v82 = v15;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v82, 1, v80);
      v80 = result;
    }

    v15 = v108;
    v14 = v102;
    if (!v22[2])
    {

      if (v81)
      {
        goto LABEL_67;
      }

      goto LABEL_37;
    }

    if ((v80[3] >> 1) - v80[2] < v81)
    {
      break;
    }

    swift_arrayInitWithCopy();

    if (v81)
    {
      v83 = v80[2];
      v84 = __OFADD__(v83, v81);
      v85 = v83 + v81;
      if (v84)
      {
        goto LABEL_70;
      }

      v80[2] = v85;
    }

LABEL_37:
    if (v26 == ++v20)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Result<RRResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<RRResult, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for numberToWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t one-time initialization function for leetSpeakMappings()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJ_SaySSGtGMd, _ss23_ContiguousArrayStorageCySJ_SaySSGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D0F10;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = &outlined read-only object #0 of one-time initialization function for leetSpeakMappings;
  *(inited + 56) = 49;
  *(inited + 64) = 0xE100000000000000;
  *(inited + 72) = &outlined read-only object #1 of one-time initialization function for leetSpeakMappings;
  *(inited + 80) = 50;
  v1 = MEMORY[0x277D84F90];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v1;
  *(inited + 104) = 51;
  *(inited + 112) = 0xE100000000000000;
  *(inited + 120) = &outlined read-only object #2 of one-time initialization function for leetSpeakMappings;
  *(inited + 128) = 52;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = &outlined read-only object #3 of one-time initialization function for leetSpeakMappings;
  *(inited + 152) = 53;
  *(inited + 160) = 0xE100000000000000;
  *(inited + 168) = &outlined read-only object #4 of one-time initialization function for leetSpeakMappings;
  *(inited + 176) = 54;
  *(inited + 184) = 0xE100000000000000;
  *(inited + 192) = &outlined read-only object #5 of one-time initialization function for leetSpeakMappings;
  *(inited + 200) = 55;
  *(inited + 208) = 0xE100000000000000;
  *(inited + 216) = &outlined read-only object #6 of one-time initialization function for leetSpeakMappings;
  *(inited + 224) = 56;
  *(inited + 232) = 0xE100000000000000;
  *(inited + 240) = &outlined read-only object #7 of one-time initialization function for leetSpeakMappings;
  *(inited + 248) = 57;
  *(inited + 256) = 0xE100000000000000;
  *(inited + 264) = &outlined read-only object #8 of one-time initialization function for leetSpeakMappings;
  *(inited + 272) = 64;
  *(inited + 280) = 0xE100000000000000;
  *(inited + 288) = &outlined read-only object #9 of one-time initialization function for leetSpeakMappings;
  *(inited + 296) = 36;
  *(inited + 304) = 0xE100000000000000;
  *(inited + 312) = &outlined read-only object #10 of one-time initialization function for leetSpeakMappings;
  *(inited + 320) = 33;
  *(inited + 328) = 0xE100000000000000;
  *(inited + 336) = &outlined read-only object #11 of one-time initialization function for leetSpeakMappings;
  *(inited + 344) = 43;
  *(inited + 352) = 0xE100000000000000;
  *(inited + 360) = &outlined read-only object #12 of one-time initialization function for leetSpeakMappings;
  *(inited + 368) = 124;
  *(inited + 376) = 0xE100000000000000;
  *(inited + 384) = &outlined read-only object #13 of one-time initialization function for leetSpeakMappings;
  *(inited + 392) = 40;
  *(inited + 400) = 0xE100000000000000;
  *(inited + 408) = &outlined read-only object #14 of one-time initialization function for leetSpeakMappings;
  *(inited + 416) = 41;
  *(inited + 424) = 0xE100000000000000;
  *(inited + 432) = &outlined read-only object #15 of one-time initialization function for leetSpeakMappings;
  *(inited + 440) = 43458;
  *(inited + 448) = 0xA200000000000000;
  *(inited + 456) = &outlined read-only object #16 of one-time initialization function for leetSpeakMappings;
  *(inited + 464) = 44738;
  *(inited + 472) = 0xA200000000000000;
  *(inited + 480) = &outlined read-only object #17 of one-time initialization function for leetSpeakMappings;
  *(inited + 488) = 42434;
  *(inited + 496) = 0xA200000000000000;
  *(inited + 504) = &outlined read-only object #18 of one-time initialization function for leetSpeakMappings;
  *(inited + 512) = 9537762;
  *(inited + 520) = 0xA300000000000000;
  *(inited + 528) = &outlined read-only object #19 of one-time initialization function for leetSpeakMappings;
  *(inited + 536) = 9864418;
  *(inited + 544) = 0xA300000000000000;
  *(inited + 552) = &outlined read-only object #20 of one-time initialization function for leetSpeakMappings;
  *(inited + 560) = 42691;
  *(inited + 568) = 0xA200000000000000;
  *(inited + 576) = &outlined read-only object #21 of one-time initialization function for leetSpeakMappings;
  *(inited + 584) = 34499;
  *(inited + 592) = 0xA200000000000000;
  *(inited + 600) = &outlined read-only object #22 of one-time initialization function for leetSpeakMappings;
  *(inited + 608) = 40899;
  *(inited + 616) = 0xA200000000000000;
  *(inited + 624) = &outlined read-only object #23 of one-time initialization function for leetSpeakMappings;
  *(inited + 632) = 47299;
  *(inited + 640) = 0xA200000000000000;
  *(inited + 648) = &outlined read-only object #24 of one-time initialization function for leetSpeakMappings;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySSGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSJ_SaySSGtMd, &_sSJ_SaySSGtMR);
  result = swift_arrayDestroy();
  static SynonymGenerator.leetSpeakMappings = v2;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
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
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized static SynonymGenerator.leetDecode(leetText:)(uint64_t a1, uint64_t a2)
{
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static SynonymGenerator.leetDecode(leetText:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return a1;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
        lazy protocol witness table accessor for type String and conformance String();

        a1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static SynonymGenerator.decodeLeetSpeak(_:)(uint64_t a1, uint64_t a2)
{

  v5 = String.Iterator.next()();
  countAndFlagsBits = v5.value._countAndFlagsBits;
  if (!v5.value._object)
  {
LABEL_12:

    return 0;
  }

  object = v5.value._object;
  while (1)
  {
    if (one-time initialization token for leetSpeakMappings != -1)
    {
      v16 = countAndFlagsBits;
      swift_once();
      countAndFlagsBits = v16;
    }

    v8 = static SynonymGenerator.leetSpeakMappings;
    if (*(static SynonymGenerator.leetSpeakMappings + 2))
    {
      v9 = countAndFlagsBits;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
      countAndFlagsBits = v9;
      if (v11)
      {
        v12 = *(v8[7] + 8 * v10);
        if (v12[2])
        {
          break;
        }
      }
    }

    MEMORY[0x223DDF6C0](countAndFlagsBits, object, v3, v4);
LABEL_4:

    v7 = String.Iterator.next()();
    countAndFlagsBits = v7.value._countAndFlagsBits;
    object = v7.value._object;
    if (!v7.value._object)
    {
      goto LABEL_12;
    }
  }

  if (v12[2])
  {
    v14 = v12[4];
    v15 = v12[5];

    MEMORY[0x223DDF6A0](v14, v15);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void *specialized static SynonymGenerator.generateLeetSpeakVariants(_:)()
{
  v67 = MEMORY[0x277D84FA0];
  v0 = String.lowercased()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySSGTt0g5Tf4g_n(outlined read-only object #14 of static SynonymGenerator.generateLeetSpeakVariants(_:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSJ_SaySSGtMd, &_sSJ_SaySSGtMR);
  swift_arrayDestroy();
  result = v1;
  v3 = 0;
  v54 = v1 + 8;
  v55 = v1;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v1[8];
  v52 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_10:
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v9 = v8 | (v3 << 6);
    v10 = *(result[7] + 8 * v9);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (result[6] + 16 * v9);
      v58 = *v12;
      v60 = v12[1];

      lazy protocol witness table accessor for type String and conformance String();
      v13 = (v10 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v62 = v0;
        v65 = v58;
        v66 = v60;
        v63 = v14;
        v64 = v15;

        v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v18 = v17;
        if (v16 == v0._countAndFlagsBits && v17 == v0._object)
        {
        }

        else
        {
          v20 = v16;
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {
            specialized Set._Variant.insert(_:)(&v62._countAndFlagsBits, v20, v18);
          }
        }

        v13 += 2;
        --v11;
      }

      while (v11);

      result = v55;
    }
  }

  while (1)
  {
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v7 >= v52)
    {

      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #15 of static SynonymGenerator.generateLeetSpeakVariants(_:));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
      result = swift_arrayDestroy();
      v23 = 0;
      v51 = v22 + 64;
      v53 = v22;
      v24 = 1 << *(v22 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v22 + 64);
      v50 = (v24 + 63) >> 6;
      while (v26)
      {
LABEL_29:
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v29 = v28 | (v23 << 6);
        v30 = *(*(v22 + 56) + 8 * v29);
        v31 = *(v30 + 16);
        if (v31)
        {
          v56 = v26;
          v57 = v23;
          v32 = (*(v22 + 48) + 16 * v29);
          v59 = *v32;
          v61 = v32[1];

          lazy protocol witness table accessor for type String and conformance String();
          v33 = (v30 + 40);
          do
          {
            v34 = *(v33 - 1);
            v35 = *v33;
            v62 = v0;
            v65 = v59;
            v66 = v61;
            v63 = v34;
            v64 = v35;

            v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v38 = v37;
            if (v36 == v0._countAndFlagsBits && v37 == v0._object)
            {
            }

            else
            {
              v40 = v36;
              v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v41 & 1) == 0)
              {
                specialized Set._Variant.insert(_:)(&v62._countAndFlagsBits, v40, v38);
              }
            }

            v62 = v0;
            v65 = v34;
            v66 = v35;
            v63 = v59;
            v64 = v61;

            v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v44 = v43;

            if (v42 == v0._countAndFlagsBits && v44 == v0._object)
            {
            }

            else
            {
              v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v45 & 1) == 0)
              {
                specialized Set._Variant.insert(_:)(&v62._countAndFlagsBits, v42, v44);
              }
            }

            v33 += 2;
            --v31;
          }

          while (v31);

          v22 = v53;
          v26 = v56;
          v23 = v57;
        }
      }

      while (1)
      {
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_51;
        }

        if (v27 >= v50)
        {
          break;
        }

        v26 = *(v51 + 8 * v27);
        ++v23;
        if (v26)
        {
          v23 = v27;
          goto LABEL_29;
        }
      }

      v46 = v67;
      v47 = *(v67 + 16);
      if (v47)
      {
        v48 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v67 + 16), 0);
        v49 = specialized Sequence._copySequenceContents(initializing:)(&v62, v48 + 4, v47, v46);
        outlined consume of Set<String>.Iterator._Variant(v62._countAndFlagsBits);
        if (v49 != v47)
        {
          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
LABEL_48:

        return MEMORY[0x277D84F90];
      }

      return v48;
    }

    v6 = v54[v7];
    ++v3;
    if (v6)
    {
      v3 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void *specialized static SynonymGenerator.generatePhoneticSynonyms(_:)()
{
  v27 = MEMORY[0x277D84FA0];
  v0 = String.lowercased()();
  object = v0._object;
  v2 = &unk_283697F50;
  v3 = 9;
  lazy protocol witness table accessor for type String and conformance String();
  do
  {
    v4 = *(v2 - 3);
    v5 = *(v2 - 2);
    v6 = *(v2 - 1);
    v7 = *v2;
    countAndFlagsBits = v0._countAndFlagsBits;
    v22 = object;
    v20 = v4;
    v25 = v4;
    v26 = v5;
    v23 = v6;
    v24 = v7;

    v8 = v0._object;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v11 = v9;
    if ((v10 != v0._countAndFlagsBits || v9 != v0._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      specialized Set._Variant.insert(_:)(&countAndFlagsBits, v10, v11);
      v8 = v0._object;
    }

    countAndFlagsBits = v0._countAndFlagsBits;
    v22 = v8;
    v25 = v6;
    v26 = v7;
    v23 = v20;
    v24 = v5;
    object = v0._object;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;

    if ((v12 != v0._countAndFlagsBits || v14 != v0._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      specialized Set._Variant.insert(_:)(&countAndFlagsBits, v12, v14);
      object = v0._object;
    }

    v2 += 4;
    --v3;
  }

  while (v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  v15 = v27;
  v16 = *(v27 + 16);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v27 + 16), 0);
  v18 = specialized Sequence._copySequenceContents(initializing:)(&countAndFlagsBits, v17 + 4, v16, v15);
  outlined consume of Set<String>.Iterator._Variant(countAndFlagsBits);
  if (v18 != v16)
  {
    __break(1u);
LABEL_15:

    return MEMORY[0x277D84F90];
  }

  return v17;
}

char *specialized static SynonymGenerator.generateSynonyms(for:)(char *a1, char *a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[0] = a1;
  v75[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v69 = v8;
  v74 = String.lowercased()();
  v76 = MEMORY[0x277D84FA0];
  if (one-time initialization token for numberToWord != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v11 = static SynonymGenerator.numberToWord;
    if (*(static SynonymGenerator.numberToWord + 2))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v10);
      if (v13)
      {
        v14 = *(v11[7] + 8 * v12);
        v15 = *(v14 + 16);
        if (v15)
        {

          v16 = v14 + 40;
          do
          {
            v17 = String.lowercased()();
            specialized Set._Variant.insert(_:)(v75, v17._countAndFlagsBits, v17._object);

            v16 += 16;
            --v15;
          }

          while (v15);
        }
      }
    }

    if (one-time initialization token for wordToNumber != -1)
    {
      swift_once();
    }

    v18 = static SynonymGenerator.wordToNumber;
    if (*(static SynonymGenerator.wordToNumber + 2))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v74._countAndFlagsBits, v74._object);
      if (v20)
      {
        v21 = *(v18[7] + 8 * v19);
        v22 = *(v21 + 16);
        if (v22)
        {

          v23 = v21 + 40;
          do
          {
            v24 = String.lowercased()();
            specialized Set._Variant.insert(_:)(v75, v24._countAndFlagsBits, v24._object);

            v23 += 16;
            --v22;
          }

          while (v22);
        }
      }
    }

    if (one-time initialization token for commonAbbreviations != -1)
    {
      swift_once();
    }

    v25 = static SynonymGenerator.commonAbbreviations;
    if (*(static SynonymGenerator.commonAbbreviations + 2))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v74._countAndFlagsBits, v74._object);
      if (v27)
      {
        v28 = *(v25[7] + 8 * v26);
        v29 = *(v28 + 16);
        if (v29)
        {

          v30 = v28 + 40;
          do
          {
            v31 = String.lowercased()();
            specialized Set._Variant.insert(_:)(v75, v31._countAndFlagsBits, v31._object);

            v30 += 16;
            --v29;
          }

          while (v29);
        }
      }
    }

    v68 = v10;
    v32 = (v25 + 8);
    v33 = 1 << *(v25 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v10 = v34 & v25[8];
    v35 = (v33 + 63) >> 6;

    v36 = 0;
    v70 = (v25 + 8);
    v71 = v25;
LABEL_29:
    if (!v10)
    {
      break;
    }

    v37 = v36;
LABEL_34:
    v38 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v39 = v38 | (v37 << 6);
    v40 = v25[7];
    v41 = (v25[6] + 16 * v39);
    v42 = v41[1];
    v72 = *v41;
    v73 = v42;
    v43 = *(v40 + 8 * v39);
    v44 = *(v43 + 16);

    v45 = 0;
    v46 = v43 + 40;
    v47 = v43 + 40;
    while (1)
    {
      if (v44 == v45)
      {

        goto LABEL_28;
      }

      if (v45 >= *(v43 + 16))
      {
        break;
      }

      v48 = String.lowercased()();
      if (v48._countAndFlagsBits == v74._countAndFlagsBits && v48._object == v74._object)
      {

LABEL_44:
        v51 = String.lowercased()();

        specialized Set._Variant.insert(_:)(v75, v51._countAndFlagsBits, v51._object);

        do
        {
          v52 = String.lowercased()();
          specialized Set._Variant.insert(_:)(v75, v52._countAndFlagsBits, v52._object);

          v46 += 16;
          --v44;
        }

        while (v44);
LABEL_28:

        v36 = v37;
        v32 = v70;
        v25 = v71;
        goto LABEL_29;
      }

      ++v45;
      v47 += 16;
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v50)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_64;
    }

    if (v37 >= v35)
    {
      break;
    }

    v10 = *&v32[8 * v37];
    ++v36;
    if (v10)
    {
      goto LABEL_34;
    }
  }

  specialized static SynonymGenerator.decodeLeetSpeak(_:)(v69, v68);
  v53 = String.lowercased()();

  if ((v53._countAndFlagsBits != v74._countAndFlagsBits || v53._object != v74._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    specialized Set._Variant.insert(_:)(v75, v53._countAndFlagsBits, v53._object);
  }

  v54 = specialized static SynonymGenerator.generateLeetSpeakVariants(_:)();
  v55 = v54[2];
  if (v55)
  {
    v56 = v54 + 5;
    do
    {
      v57 = String.lowercased()();
      specialized Set._Variant.insert(_:)(v75, v57._countAndFlagsBits, v57._object);

      v56 += 2;
      --v55;
    }

    while (v55);
  }

  v58 = specialized static SynonymGenerator.generatePhoneticSynonyms(_:)();

  v59 = v58[2];
  if (v59)
  {
    v60 = v58 + 5;
    do
    {
      v61 = String.lowercased()();
      specialized Set._Variant.insert(_:)(v75, v61._countAndFlagsBits, v61._object);

      v60 += 2;
      --v59;
    }

    while (v59);
  }

  specialized Set._Variant.remove(_:)(v74._countAndFlagsBits, v74._object);

  v62 = v76;
  v63 = *(v76 + 16);
  if (!v63)
  {
    goto LABEL_61;
  }

  v64 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v76 + 16), 0);
  v65 = specialized Sequence._copySequenceContents(initializing:)(v75, v64 + 4, v63, v62);
  outlined consume of Set<String>.Iterator._Variant(v75[0]);
  if (v65 != v63)
  {
    __break(1u);
LABEL_61:

    v64 = MEMORY[0x277D84F90];
  }

  v75[0] = v64;

  specialized MutableCollection<>.sort(by:)(v75);

  return v75[0];
}

Swift::tuple_hasAddress_Bool_hasPhoneNumber_Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CNContactStore.contactsAddressAndPhoneFlags(id:)(Swift::String id)
{
  v1.value._rawValue = 0;
  v3 = CNContactStore.contactsAddressAndPhoneFlags(id:contactFetchKeys:)(id, v1);
  hasPhoneNumber = v3.hasPhoneNumber;
  hasAddress = v3.hasAddress;
  result.hasPhoneNumber = hasPhoneNumber;
  result.hasAddress = hasAddress;
  return result;
}

Swift::tuple_hasAddress_Bool_hasPhoneNumber_Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CNContactStore.contactsAddressAndPhoneFlags(id:contactFetchKeys:)(Swift::String id, Swift::OpaquePointer_optional contactFetchKeys)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  v26[1] = *MEMORY[0x277D85DE8];
  if (contactFetchKeys.value._rawValue)
  {
    rawValue = contactFetchKeys.value._rawValue;
    if (!(contactFetchKeys.value._rawValue >> 62))
    {
LABEL_3:
      v6 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    rawValue = swift_allocObject();
    *(rawValue + 16) = xmmword_2234D0FF0;
    v18 = *MEMORY[0x277CBD0C8];
    v19 = *MEMORY[0x277CBD098];
    *(rawValue + 32) = *MEMORY[0x277CBD0C8];
    *(rawValue + 40) = v19;
    v20 = v18;
    v21 = v19;

    if (!(rawValue >> 62))
    {
      goto LABEL_3;
    }
  }

  v6 = __CocoaSet.count.getter();
LABEL_4:
  swift_bridgeObjectRetain_n();

  if (v6)
  {
    v7 = MEMORY[0x223DDF550](countAndFlagsBits, object);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v26[0] = 0;
    v9 = [v2 unifiedContactWithIdentifier:v7 keysToFetch:isa error:v26];

    if (v9)
    {
      v10 = v26[0];
      v11 = [v9 postalAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v12 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = [v9 phoneNumbers];
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v15 >> 62)
      {
        __CocoaSet.count.getter();
      }

      v17 = v13 != 0;
    }

    else
    {
      v22 = v26[0];
      v23 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v17 = 0;
    }
  }

  else
  {

    v17 = 0;
  }

  v24 = v17;
  result.hasPhoneNumber = v16;
  result.hasAddress = v24;
  return result;
}

uint64_t protocol witness for ContactFetching.contactsAddressAndPhoneFlags(id:) in conformance CNContactStore(uint64_t a1, uint64_t a2, Swift::OpaquePointer_optional a3)
{
  a3.value._rawValue = 0;
  LOBYTE(v3) = CNContactStore.contactsAddressAndPhoneFlags(id:contactFetchKeys:)(*&a1, a3).hasAddress;
  return v3 & 1 | ((v3 > 0xFFu) << 8);
}

uint64_t UsoTask.isRecipeTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v4)
  {
    goto LABEL_19;
  }

  outlined init with copy of Any?(v3, v2);
  type metadata accessor for UsoTask_start_common_Recipe();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_start_common_RecipeStep();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_pause_common_Recipe();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_pause_common_RecipeStep();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_request_common_Recipe();
          if (!swift_dynamicCast())
          {
            type metadata accessor for UsoTask_request_common_RecipeStep();
            if (!swift_dynamicCast())
            {
              type metadata accessor for UsoTask_resume_common_Recipe();
              if (!swift_dynamicCast())
              {
                type metadata accessor for UsoTask_resume_common_RecipeStep();
                if (!swift_dynamicCast())
                {
                  type metadata accessor for UsoTask_seekTo_common_RecipeStep();
                  if (!swift_dynamicCast())
                  {
                    type metadata accessor for UsoTask_skipBackward_common_RecipeStep();
                    if (!swift_dynamicCast())
                    {
                      type metadata accessor for UsoTask_skipForward_common_RecipeStep();
                      if (!swift_dynamicCast())
                      {
                        type metadata accessor for UsoTask_stop_common_Recipe();
                        if (!swift_dynamicCast())
                        {
                          type metadata accessor for UsoTask_stop_common_RecipeStep();
                          if (!swift_dynamicCast())
                          {
                            type metadata accessor for UsoTask_summarise_common_Recipe();
                            if (!swift_dynamicCast())
                            {
                              type metadata accessor for UsoTask_unrequest_common_Recipe();
                              if (!swift_dynamicCast())
                              {
                                __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_19:
                                v0 = 0;
                                goto LABEL_20;
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

  __swift_destroy_boxed_opaque_existential_1(v2);
  v0 = 1;
LABEL_20:
  outlined destroy of Any?(v3);
  return v0;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Siri_Nlu_External_UserParse.firstRecipeTask()()
{
  v1 = Siri_Nlu_External_Span.matcherNames.getter();
  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  if (!v0)
  {
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      while (1)
      {
        v4 = 0;
        while ((v2 & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x223DDFF80](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v1;
          }

LABEL_8:
          if (UsoTask.isRecipeTask.getter())
          {
            goto LABEL_14;
          }

          ++v4;
          if (v5 == v3)
          {
            goto LABEL_17;
          }
        }

        if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          goto LABEL_17;
        }
      }

      v1 = *(v2 + 8 * v4 + 32);

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  return v1;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v2)
    {

      return v4;
    }

    v7 = v6;
    v8 = v6 >> 62;
    v9 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v4 >> 62;
    if (v4 >> 62)
    {
      break;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = result + v9;
    if (__OFADD__(result, v9))
    {
      goto LABEL_38;
    }

LABEL_10:
    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v10)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v12 = v4 & 0xFFFFFFFFFFFFFF8, v11 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v10)
      {
        __CocoaSet.count.getter();
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = result;
      v12 = result & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v8)
    {
      v16 = v12;
      result = __CocoaSet.count.getter();
      v12 = v16;
      v15 = result;
      if (result)
      {
LABEL_22:
        if (((v14 >> 1) - v13) < v9)
        {
          goto LABEL_40;
        }

        v28 = 0;
        v17 = v12 + 8 * v13 + 32;
        v25 = v12;
        if (v8)
        {
          if (v15 < 1)
          {
            goto LABEL_42;
          }

          lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
          for (i = 0; i != v15; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
            v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v27, i, v7);
            v21 = *v20;

            (v19)(v27, 0);
            *(v17 + 8 * i) = v21;
          }
        }

        else
        {
          type metadata accessor for UsoTask();
          swift_arrayInitWithCopy();
        }

        v2 = v28;
        if (v9 >= 1)
        {
          v22 = *(v25 + 16);
          v23 = __OFADD__(v22, v9);
          v24 = v22 + v9;
          if (v23)
          {
            goto LABEL_41;
          }

          *(v25 + 16) = v24;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_22;
      }
    }

    if (v9 > 0)
    {
      goto LABEL_39;
    }

LABEL_4:
    if (++v3 == v26)
    {
      return v4;
    }
  }

  result = __CocoaSet.count.getter();
  v11 = result + v9;
  if (!__OFADD__(result, v9))
  {
    goto LABEL_10;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  result = type metadata accessor for Siri_Nlu_External_UserParse() - 8;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = Siri_Nlu_External_UserParse.playRadioStationRelevantTasks()(result);
    if (v2)
    {

      return v5;
    }

    v7 = v6;
    v8 = v6 >> 62;
    v9 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v5 >> 62;
    if (v5 >> 62)
    {
      break;
    }

    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = result + v9;
    if (__OFADD__(result, v9))
    {
      goto LABEL_38;
    }

LABEL_10:
    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v10)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v12 = v5 & 0xFFFFFFFFFFFFFF8, v11 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v10)
      {
        __CocoaSet.count.getter();
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = result;
      v12 = result & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v8)
    {
      v16 = v12;
      result = __CocoaSet.count.getter();
      v12 = v16;
      v15 = result;
      if (result)
      {
LABEL_22:
        if (((v14 >> 1) - v13) < v9)
        {
          goto LABEL_40;
        }

        v28 = 0;
        v17 = v12 + 8 * v13 + 32;
        v25 = v12;
        if (v8)
        {
          if (v15 < 1)
          {
            goto LABEL_42;
          }

          lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
          for (i = 0; i != v15; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
            v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v27, i, v7);
            v21 = *v20;

            (v19)(v27, 0);
            *(v17 + 8 * i) = v21;
          }
        }

        else
        {
          type metadata accessor for UsoTask();
          swift_arrayInitWithCopy();
        }

        v2 = v28;
        if (v9 >= 1)
        {
          v22 = *(v25 + 16);
          v23 = __OFADD__(v22, v9);
          v24 = v22 + v9;
          if (v23)
          {
            goto LABEL_41;
          }

          *(v25 + 16) = v24;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_22;
      }
    }

    if (v9 > 0)
    {
      goto LABEL_39;
    }

LABEL_4:
    if (++v3 == v26)
    {
      return v5;
    }
  }

  result = __CocoaSet.count.getter();
  v11 = result + v9;
  if (!__OFADD__(result, v9))
  {
    goto LABEL_10;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  result = type metadata accessor for Siri_Nlu_External_UserParse() - 8;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = Siri_Nlu_External_UserParse.resumeMediaItemRelevantTasks()(result);
    if (v2)
    {

      return v5;
    }

    v7 = v6;
    v8 = v6 >> 62;
    v9 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v5 >> 62;
    if (v5 >> 62)
    {
      break;
    }

    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = result + v9;
    if (__OFADD__(result, v9))
    {
      goto LABEL_38;
    }

LABEL_10:
    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v10)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v12 = v5 & 0xFFFFFFFFFFFFFF8, v11 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v10)
      {
        __CocoaSet.count.getter();
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = result;
      v12 = result & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v8)
    {
      v16 = v12;
      result = __CocoaSet.count.getter();
      v12 = v16;
      v15 = result;
      if (result)
      {
LABEL_22:
        if (((v14 >> 1) - v13) < v9)
        {
          goto LABEL_40;
        }

        v28 = 0;
        v17 = v12 + 8 * v13 + 32;
        v25 = v12;
        if (v8)
        {
          if (v15 < 1)
          {
            goto LABEL_42;
          }

          lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
          for (i = 0; i != v15; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
            v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v27, i, v7);
            v21 = *v20;

            (v19)(v27, 0);
            *(v17 + 8 * i) = v21;
          }
        }

        else
        {
          type metadata accessor for UsoTask();
          swift_arrayInitWithCopy();
        }

        v2 = v28;
        if (v9 >= 1)
        {
          v22 = *(v25 + 16);
          v23 = __OFADD__(v22, v9);
          v24 = v22 + v9;
          if (v23)
          {
            goto LABEL_41;
          }

          *(v25 + 16) = v24;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_22;
      }
    }

    if (v9 > 0)
    {
      goto LABEL_39;
    }

LABEL_4:
    if (++v3 == v26)
    {
      return v5;
    }
  }

  result = __CocoaSet.count.getter();
  v11 = result + v9;
  if (!__OFADD__(result, v9))
  {
    goto LABEL_10;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

{
  return specialized Sequence.flatMap<A>(_:)(a1);
}

{
  v2 = v1;
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v2)
    {

      return v4;
    }

    v7 = v6;
    v8 = v6 >> 62;
    v9 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v4 >> 62;
    if (v4 >> 62)
    {
      break;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = result + v9;
    if (__OFADD__(result, v9))
    {
      goto LABEL_38;
    }

LABEL_10:
    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v10)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v12 = v4 & 0xFFFFFFFFFFFFFF8, v11 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v10)
      {
        __CocoaSet.count.getter();
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = result;
      v12 = result & 0xFFFFFFFFFFFFFF8;
    }

    v25 = v9;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v8)
    {
      result = __CocoaSet.count.getter();
      v15 = result;
      if (result)
      {
LABEL_22:
        if (((v14 >> 1) - v13) < v25)
        {
          goto LABEL_40;
        }

        if (v8)
        {
          if (v15 < 1)
          {
            goto LABEL_42;
          }

          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoTask] and conformance [A], &_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
          for (i = 0; i != v15; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
            v17 = specialized protocol witness for Collection.subscript.read in conformance [A](v24, i, v7);
            v19 = *v18;

            (v17)(v24, 0);
            *(v12 + 8 * v13 + 32 + 8 * i) = v19;
          }
        }

        else
        {
          type metadata accessor for UsoTask();
          swift_arrayInitWithCopy();
        }

        v2 = 0;
        if (v25 >= 1)
        {
          v20 = *(v12 + 16);
          v21 = __OFADD__(v20, v25);
          v22 = v20 + v25;
          if (v21)
          {
            goto LABEL_41;
          }

          *(v12 + 16) = v22;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_22;
      }
    }

    if (v25 > 0)
    {
      goto LABEL_39;
    }

LABEL_4:
    if (++v3 == v23)
    {
      return v4;
    }
  }

  result = __CocoaSet.count.getter();
  v11 = result + v9;
  if (!__OFADD__(result, v9))
  {
    goto LABEL_10;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [UsoTask] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoTask] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoTask] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoTask] and conformance [A]);
  }

  return result;
}

void *one-time initialization function for shared()
{
  type metadata accessor for PommesSearch();
  v0 = PommesSearch.__allocating_init()();
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static PommesBridgeInstrumentationUtil.sharedInstance;

  v2 = default argument 2 of PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)();
  type metadata accessor for PommesSearchService();
  v3 = swift_allocObject();
  result = PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)(v0, v1, v2);
  static PommesSearchService.shared = v3;
  return result;
}

uint64_t PommesSearchService.__allocating_init(pommesSearch:instrumentationUtil:searchToolHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)(a1, a2, a3);
  return v6;
}

uint64_t static PommesSearchService.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for defaultSessionId()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_allocate_value_buffer(v0, static PommesSearchService.defaultSessionId);
  __swift_project_value_buffer(v0, static PommesSearchService.defaultSessionId);
  return UUID.init(uuidString:)();
}

uint64_t PommesSearchService.defaultSessionId.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultSessionId != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return __swift_project_value_buffer(v0, static PommesSearchService.defaultSessionId);
}

uint64_t static PommesSearchService.defaultSessionId.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultSessionId != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = __swift_project_value_buffer(v2, static PommesSearchService.defaultSessionId);
  return outlined init with copy of MediaUserStateCenter?(v3, a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

void *PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5 = one-time initialization token for pommes;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2232BB000, v7, v8, "PommesSearchService init successfully", v9, 2u);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  return v4;
}

uint64_t PommesSearchService.searchInfiEntity(request:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = PommesSearchService.searchInfiEntity(request:);

  return v6(a1, 2);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t @objc closure #1 in PommesSearchService.searchInfiEntity(request:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = *(*a3 + 128);
  v7 = a1;

  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in PommesSearchService.searchInfiEntity(request:);

  return v10(v7, 2);
}

uint64_t @objc closure #1 in PommesSearchService.searchInfiEntity(request:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 32);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 32), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[9] = swift_task_alloc();
  v4 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for ParseStateXPC(0);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for PommesCandidateId();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v3[18] = *(v6 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

uint64_t PommesSearchService.searchInfiEntity(request:timeoutInSec:)()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "PommesSearchService entering searchInfiEntity...", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = v0[15];
  v6 = v0[5];

  outlined init with copy of ParseStateXPC(v6 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState, v5, type metadata accessor for ParseStateXPC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v5;
  v8 = v5[1];
  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  if (EnumCaseMultiPayload == 1)
  {
    v13 = v0[15];
    v14 = v5[2];
    v15 = *(v13 + 24);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR) + 64);
    *v10 = v9;
    v10[1] = v8;
    v10[2] = v14;
    v10[3] = v15;
    (*(v12 + 104))(v10, *MEMORY[0x277D56620], v11);
    outlined destroy of MediaUserStateCenter?(v13 + v16, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  }

  else
  {

    *v10 = v9;
    v10[1] = v8;
    (*(v12 + 104))(v10, *MEMORY[0x277D56618], v11);
  }

  v17 = v0[17];
  v38 = v0[16];
  v39 = v0[19];
  v19 = v0[12];
  v18 = v0[13];
  v35 = v19;
  v36 = v0[20];
  v40 = v0[11];
  v20 = v0[9];
  v37 = v0[10];
  v21 = v0[7];
  v43 = v0[6];
  v22 = v0[5];
  v23 = v22 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId;
  v24 = *(v22 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId);
  v0[22] = v24;
  v25 = *(v23 + 8);
  v0[23] = v25;
  v26 = v21[3];
  v0[24] = v26;
  (*(*v26 + 128))();
  (*(*v21 + 152))(v22);
  v42 = type metadata accessor for TaskPriority();
  v41 = *(*(v42 - 8) + 56);
  v41(v20, 1, 1, v42);
  outlined init with copy of ParseStateXPC(v18, v19, type metadata accessor for PommesSearchRequest);
  (*(v17 + 16))(v39, v36, v38);
  v27 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v28 = (v40 + *(v17 + 80) + v27) & ~*(v17 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = v21;
  *(v29 + 5) = v24;
  *(v29 + 6) = v25;
  outlined init with take of PommesSearchRequest(v35, &v29[v27]);
  (*(v17 + 32))(&v29[v28], v39, v38);

  v30 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCs6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pG_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), v29);
  v0[25] = v30;
  v41(v20, 1, 1, v42);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v43;
  v31[5] = v30;

  v0[26] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSb_Tt2g5Tm(0, 0, v20, &async function pointer to partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), v31, MEMORY[0x277D84F78] + 8);
  v32 = swift_task_alloc();
  v0[27] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  *v32 = v0;
  v32[1] = PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return MEMORY[0x282200460](v0 + 2, v30, v33);
}

{

  return MEMORY[0x2822009F8](PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  isCancelled = swift_task_isCancelled();
  v4 = *(v0 + 208);
  if (isCancelled)
  {
    v32 = *(v0 + 160);
    v5 = v1;
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 104);
    v9 = type metadata accessor for PommesError();
    lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type PommesError and conformance PommesError, MEMORY[0x277D5CEF8], MEMORY[0x277D5CF00]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D5CEE8], v9);
    swift_willThrow();

    outlined consume of Result<PommesResponse, Error>(v5);

    outlined destroy of PommesSearchRequest(v8);
    (*(v6 + 8))(v32, v7);
LABEL_7:
    $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving searchInfiEntity...");

    v26 = *(v0 + 8);

    return v26();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x223DDF9A0](v4, MEMORY[0x277D84F78] + 8, v11, MEMORY[0x277D84950]);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2232BB000, v12, v13, "PommesSearchService search has completed, cancel the timeout task", v14, 2u);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  v16 = *(v0 + 184);
  v15 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = *(v0 + 160);
  v19 = *(v0 + 64);

  outlined destroy of MediaUserStateCenter?(v19, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v20 = *(v0 + 160);
  v21 = v1;
  if (v2)
  {
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 104);
    *(v0 + 32) = v21;
    v25 = v21;
    swift_willThrowTypedImpl();

    outlined consume of Result<PommesResponse, Error>(v21);

    outlined destroy of PommesSearchRequest(v24);
    (*(v22 + 8))(v20, v23);
    goto LABEL_7;
  }

  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  v30 = *(v0 + 104);

  outlined destroy of PommesSearchRequest(v30);
  (*(v28 + 8))(v20, v29);
  $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving searchInfiEntity...");

  v31 = *(v0 + 8);

  return v31(v21);
}

uint64_t closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a4;
  return MEMORY[0x2822009F8](closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

uint64_t closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  *v5 = v0;
  v5[1] = closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000027, 0x80000002234DAAC0, partial apply for closure #1 in closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), v3, v6);
}

{

  return MEMORY[0x2822009F8](closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2232BB000, v4, v5, "PommesSearchService search has started, check if search task is canceled", v6, 2u);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(**(*(v0 + 40) + 24) + 144))(3, *(v0 + 72), *(v0 + 48), *(v0 + 56), *(v0 + 48), *(v0 + 56));
    v7 = type metadata accessor for PommesError();
    lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type PommesError and conformance PommesError, MEMORY[0x277D5CEF8], MEMORY[0x277D5CF00]);
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D5CEE8], v7);
    outlined consume of Result<PommesResponse, Error>(v1);
    v2 = 1;
    v1 = v8;
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2232BB000, v10, v11, "PommesSearchService search has completed, and search task hasn't been canceled, returning the search result", v12, 2u);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }
  }

  v13 = *(v0 + 32);
  *v13 = v1;
  *(v13 + 8) = v2;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #1 in closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMd, &_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v17 = *(a2 + 16);
  (*(*v17 + 336))(a3, a4, 0);
  (*(v11 + 16))(v13, a1, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v13, v10);
  v20 = swift_allocObject();
  *(v20 + 16) = _s21SiriInformationSearch06PommesC7ServiceC16searchInfiEntity7request12timeoutInSecAA0D8ResponseCAA0dC10RequestXPCC_s6UInt64VtYaKFs6ResultOyAHs5Error_pGyYacfU_yScCyAPs5NeverOGXEfU_yAPnYucAScfu_yAPnYucfu0_TA;
  *(v20 + 24) = v19;
  (*(*v17 + 272))(a5, _ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGIegxT_AGIegg_TRTA, v20);

  return outlined destroy of MediaUserStateCenter?(v16, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of MediaUserStateCenter?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCs6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of MediaUserStateCenter?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
}

uint64_t closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (is_mul_ok(v3, 0x3B9ACA00uLL))
  {
    v4 = 1000000000 * v3;
    v5 = swift_task_alloc();
    *(v1 + 32) = v5;
    *v5 = v1;
    v5[1] = closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:), 0, 0);
  }
}

{
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  MEMORY[0x223DDF9A0](v1, v2, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2232BB000, v4, v5, "PommesSearchService search has timed out, cancel the search task", v6, 2u);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSb_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of MediaUserStateCenter?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void PommesSearchService.invalidate(cachedResponse:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2232BB000, v5, v6, "PommesSearchService invalidating cached response...", v7, 2u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  v8 = *(**(*(v2 + 16) + 40) + 248);

  v8(a1, 2);

  $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving invalidating cached response...");
}

uint64_t PommesSearchService.searchToolGlobalSearch(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](PommesSearchService.searchToolGlobalSearch(request:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = PommesSearchService.searchToolGlobalSearch(request:);
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = PommesSearchService.searchToolGlobalSearch(request:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t PommesSearchService.searchToolGlobalSearch(request:)()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "PommesSearchService entering search tool global search...", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = v0[3];

  v9 = (*(**(v5 + 32) + 136) + **(**(v5 + 32) + 136));
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = PommesSearchService.searchToolGlobalSearch(request:);
  v7 = v0[2];

  return v9(v7);
}

{
  $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving search tool global search...");
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

{
  $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)("PommesSearchService leaving search tool global search...");
  v1 = *(v0 + 8);

  return v1();
}

void $defer #1 () in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(const char *a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, oslog, v3, a1, v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }
}

uint64_t @objc closure #1 in PommesSearchService.searchToolGlobalSearch(request:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = @objc closure #1 in PommesSearchService.searchInfiEntity(request:);

  return PommesSearchService.searchToolGlobalSearch(request:)(v5);
}

uint64_t PommesSearchService.buildPommesSearchRequest(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v308 = a2;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = MEMORY[0x28223BE20](v272);
  v281 = &v267 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v288 = &v267 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v312 = &v267 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v271 = &v267 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v287 = &v267 - v12;
  MEMORY[0x28223BE20](v11);
  v309 = &v267 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v282 = &v267 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v284 = &v267 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v278 = &v267 - v20;
  MEMORY[0x28223BE20](v19);
  v280 = &v267 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v283 = &v267 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v279 = &v267 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v277 = &v267 - v28;
  MEMORY[0x28223BE20](v27);
  v276 = &v267 - v29;
  v313 = type metadata accessor for PommesSearchRequest(0);
  v30 = MEMORY[0x28223BE20](v313);
  v307 = &v267 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v304 = &v267 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v306 = &v267 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v303 = &v267 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v305 = &v267 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v311 = &v267 - v40;
  v275 = type metadata accessor for PommesCandidateId();
  v274 = *(v275 - 8);
  v41 = MEMORY[0x28223BE20](v275);
  v270 = (&v267 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v41);
  v269 = (&v267 - v43);
  v310 = type metadata accessor for ParseStateXPC(0);
  v44 = MEMORY[0x28223BE20](v310);
  v268 = (&v267 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x28223BE20](v44);
  v267 = (&v267 - v47);
  MEMORY[0x28223BE20](v46);
  v300 = &v267 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v49 - 8);
  v302 = &v267 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v51);
  v53 = &v267 - v52;
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v314 = &v267 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PommesContext.Source();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v267 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for PommesContext();
  v315 = *(v61 - 8);
  v316 = v61;
  v62 = MEMORY[0x28223BE20](v61);
  v286 = &v267 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v285 = &v267 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = &v267 - v66;
  (*(v58 + 104))(v60, *MEMORY[0x277D56680], v57);

  v317 = v67;
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  v68 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId + 8];
  v298 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  v69 = one-time initialization token for defaultSessionId;
  v299 = v68;

  if (v69 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v51, static PommesSearchService.defaultSessionId);
  outlined init with copy of MediaUserStateCenter?(v70, v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v71 = *(v55 + 48);
  v72 = v71(v53, 1, v54);
  v301 = v55;
  v297 = v54;
  if (v72 == 1)
  {
    v73 = v314;
    UUID.init()();
    if (v71(v53, 1, v54) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v73 = v314;
    (*(v55 + 32))(v314, v53, v54);
  }

  v74 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId + 8];
  v296 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  v75 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource + 8];
  v295 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  v76 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination + 8];
  v293 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  v294 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree];
  v292 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled];
  v291 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled];
  v290 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest];
  v78 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  v77 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode + 8];
  v289 = a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup];
  v79 = type metadata accessor for DateInterval();
  v80 = v302;
  (*(*(v79 - 8) + 56))(v302, 1, 1, v79);
  v81 = *&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions];
  v273 = type metadata accessor for PommesRequestContext(0);
  v82 = swift_allocObject();
  v83 = v299;
  *(v82 + 16) = v298;
  *(v82 + 24) = v83;
  (*(v301 + 32))(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v73, v297);
  v84 = (v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v84 = v296;
  v84[1] = v74;
  v85 = (v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v85 = v295;
  v85[1] = v75;
  v86 = (v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v86 = v293;
  v86[1] = v76;
  v87 = (v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v87 = v78;
  v87[1] = v77;
  *(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = v294;
  *(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = v292;
  *(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = v291;
  *(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = v290;
  *(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = v289;
  *(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = MEMORY[0x277D84F90];
  outlined init with take of PommesSearchReason?(v80, v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  *(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v81;
  *(v82 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  v88 = OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState;
  v89 = v300;
  outlined init with copy of ParseStateXPC(&a1[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState], v300, type metadata accessor for ParseStateXPC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v91 = *(v89 + 1);
  v301 = *v89;
  v302 = v91;
  v314 = v82;
  v299 = v88;
  if (EnumCaseMultiPayload == 1)
  {
    v92 = *(v89 + 3);
    v311 = *(v89 + 2);
    v304 = v92;
    v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR);
    v93 = v309;
    outlined init with take of PommesSearchReason?(&v89[*(v297 + 64)], v309, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v94 = one-time initialization token for pommes;

    v95 = v94 == -1;
    v97 = v315;
    v96 = v316;
    if (!v95)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    __swift_project_value_buffer(v98, static Logger.pommes);
    v99 = *(v97 + 16);
    v100 = v286;
    v303 = v97 + 16;
    v300 = v99;
    (v99)(v286, v317, v96);
    v101 = v93;
    v102 = v287;
    outlined init with copy of MediaUserStateCenter?(v93, v287, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v103 = a1;

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    v106 = v104;

    LODWORD(v298) = v105;
    v107 = os_log_type_enabled(v104, v105);
    v108 = v288;
    if (v107)
    {
      v109 = a1;
      v296 = v106;
      v110 = swift_slowAlloc();
      v295 = swift_slowAlloc();
      v319 = v295;
      *v110 = 136316418;
      v111 = v103;
      *(v110 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v103[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance], *&v103[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8], &v319);
      *(v110 + 12) = 2080;
      v112 = v268;
      outlined init with copy of ParseStateXPC(&v109[v299], v268, type metadata accessor for ParseStateXPC);
      v113 = swift_getEnumCaseMultiPayload();
      v115 = *v112;
      v114 = v112[1];
      if (v113 == 1)
      {
        v116 = v112[2];
        v117 = v112[3];
        v118 = *(v297 + 64);
        v119 = v270;
        *v270 = v115;
        v119[1] = v114;
        v119[2] = v116;
        v119[3] = v117;
        v120 = v274;
        v121 = v275;
        (*(v274 + 104))(v119, *MEMORY[0x277D56620], v275);
        outlined destroy of MediaUserStateCenter?(v112 + v118, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }

      else
      {

        v119 = v270;
        *v270 = v115;
        v119[1] = v114;
        v120 = v274;
        v121 = v275;
        (*(v274 + 104))(v119, *MEMORY[0x277D56618], v275);
      }

      v148 = v313;
      v153 = v287;
      v154 = PommesCandidateId.description.getter();
      v156 = v155;
      (*(v120 + 8))(v119, v121);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, &v319);

      *(v110 + 14) = v157;
      *(v110 + 22) = 1024;
      v158 = v111;
      LODWORD(v157) = v111[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser];

      *(v110 + 24) = v157;
      *(v110 + 28) = 2080;
      v318 = v314;

      v159 = String.init<A>(describing:)();
      v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, &v319);

      *(v110 + 30) = v161;
      *(v110 + 38) = 2080;
      lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x277D56698], MEMORY[0x277D566A8]);
      v162 = v286;
      v163 = v316;
      v164 = dispatch thunk of CustomStringConvertible.description.getter();
      v166 = v165;
      v167 = v315;
      (*(v315 + 8))(v162, v163);
      v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v166, &v319);

      *(v110 + 40) = v168;
      *(v110 + 48) = 2080;
      v169 = v167;
      outlined init with copy of MediaUserStateCenter?(v153, v271, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v170 = String.init<A>(describing:)();
      v171 = v153;
      v173 = v172;
      v149 = v158;
      v97 = v169;
      outlined destroy of MediaUserStateCenter?(v171, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v173, &v319);
      v96 = v316;

      *(v110 + 50) = v174;
      v175 = v296;
      _os_log_impl(&dword_2232BB000, v296, v298, "    Constructing Pommes search request:\n    utterance: %s,\n    %s,\n    isMultiUser: %{BOOL}d,\n    requestContext: %s,\n    pommesContext: %s,\n    response: %s,\n    isFallback: true", v110, 0x3Au);
      v176 = v295;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v176, -1, -1);
      MEMORY[0x223DE0F80](v110, -1, -1);

      v101 = v309;
      v108 = v288;
    }

    else
    {

      outlined destroy of MediaUserStateCenter?(v102, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      (*(v97 + 8))(v100, v96);
      v148 = v313;
      v149 = v103;
    }

    v178 = *&v149[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
    v177 = *&v149[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8];
    LODWORD(v313) = v149[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser];
    v179 = v305;
    (v300)(v305, v317, v96);
    (*(v97 + 56))(v179, 0, 1, v96);
    v180 = type metadata accessor for InputOrigin();
    (*(*(v180 - 8) + 56))(v306, 1, 1, v180);
    v181 = v312;
    outlined init with copy of MediaUserStateCenter?(v101, v312, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v182 = v307;
    *&v307[v148[23]] = MEMORY[0x277D84F90];
    v183 = &v182[v148[5]];
    *v183 = v178;
    *(v183 + 1) = v177;
    v184 = v148[6];
    v185 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
    (*(*(v185 - 8) + 56))(&v182[v184], 1, 1, v185);
    v186 = *&v314[OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8];
    v187 = &v182[v148[8]];
    *v187 = *&v314[OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId];
    *(v187 + 1) = v186;
    v188 = &v182[v148[9]];
    *v188 = 0;
    *(v188 + 1) = 0;
    v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
    v190 = v302;
    *v182 = v301;
    *(v182 + 1) = v190;
    v191 = v304;
    *(v182 + 2) = v311;
    *(v182 + 3) = v191;
    outlined init with copy of MediaUserStateCenter?(v181, &v182[v189], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    type metadata accessor for PommesSearchRequest.ParseState(0);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of MediaUserStateCenter?(v179, &v182[v148[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined init with copy of MediaUserStateCenter?(v181, v108, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v192 = type metadata accessor for TCUMappedNLResponse();
    v193 = *(v192 - 8);
    v194 = *(v193 + 48);
    v195 = v194(v108, 1, v192);

    if (v195 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v108, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v196 = MEMORY[0x277D84F90];
    }

    else
    {
      v197 = TCUMappedNLResponse.nlResponse.getter();
      (*(v193 + 8))(v108, v192);
      v196 = NLParseResponse.userParses.getter();
    }

    v198 = v283;
    v199 = v281;
    outlined init with copy of MediaUserStateCenter?(v312, v281, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    if (v194(v199, 1, v192) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v199, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v200 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v201 = v279;
      (*(*(v200 - 8) + 56))(v279, 1, 1, v200);
    }

    else
    {
      v202 = v199;
      v203 = TCUMappedNLResponse.nlResponse.getter();
      (*(v193 + 8))(v202, v192);
      v201 = v279;
      NLParseResponse.fallbackParse.getter();
    }

    v204 = v315;
    v205 = v284;
    v206 = v282;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v196, v201, v284);
    outlined destroy of MediaUserStateCenter?(v201, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    outlined init with copy of MediaUserStateCenter?(v205, v206, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v207 - 8) + 48))(v206, 1, v207) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v206, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v208 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      (*(*(v208 - 8) + 56))(v198, 1, 1, v208);
    }

    else
    {
      v209 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v210 = *(v209 - 8);
      (*(v210 + 32))(v198, v206, v209);
      (*(v210 + 56))(v198, 0, 1, v209);
    }

    v211 = v307;
    outlined init with take of PommesSearchReason?(v198, &v307[v148[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    *(v211 + v148[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v205, 0);
    v212 = v314;
    v213 = *(v314 + 3);
    v214 = (v211 + v148[7]);
    *v214 = *(v314 + 2);
    v214[1] = v213;
    *(v211 + v148[13]) = v212;
    v215 = v306;
    outlined init with copy of MediaUserStateCenter?(v306, v211 + v148[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    *(v211 + v148[15]) = v313;
    *(v211 + v148[18]) = 0;

    v216 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v196);

    outlined destroy of MediaUserStateCenter?(v205, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    outlined destroy of MediaUserStateCenter?(v312, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined destroy of MediaUserStateCenter?(v215, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    outlined destroy of MediaUserStateCenter?(v305, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of MediaUserStateCenter?(v309, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v217 = v316;
  }

  else
  {
    v122 = *(v89 + 2);
    v123 = one-time initialization token for pommes;

    v95 = v123 == -1;
    v125 = v315;
    v124 = v316;
    if (!v95)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    __swift_project_value_buffer(v126, static Logger.pommes);
    v127 = *(v125 + 16);
    v128 = v285;
    v309 = v125 + 16;
    v307 = v127;
    (v127)(v285, v317, v124);
    v129 = a1;
    swift_bridgeObjectRetain_n();

    v130 = a1;
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();

    LODWORD(v306) = v132;
    v133 = os_log_type_enabled(v131, v132);
    v312 = v122;
    if (v133)
    {
      v134 = swift_slowAlloc();
      v305 = swift_slowAlloc();
      v319 = v305;
      *v134 = 136316418;
      v300 = v129;
      *(v134 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v129[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance], *&v129[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8], &v319);
      *(v134 + 12) = 2080;
      v135 = v267;
      outlined init with copy of ParseStateXPC(&v130[v299], v267, type metadata accessor for ParseStateXPC);
      v136 = swift_getEnumCaseMultiPayload();
      v138 = *v135;
      v137 = v135[1];
      if (v136 == 1)
      {
        v139 = v135[2];
        v140 = v135[3];
        v141 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR) + 64);
        v142 = v269;
        *v269 = v138;
        v142[1] = v137;
        v143 = v142;
        v142[2] = v139;
        v142[3] = v140;
        v125 = v315;
        v144 = v274;
        v145 = v275;
        (*(v274 + 104))(v142, *MEMORY[0x277D56620], v275);
        v146 = v135 + v141;
        v147 = v144;
        outlined destroy of MediaUserStateCenter?(v146, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }

      else
      {

        v218 = v269;
        *v269 = v138;
        v218[1] = v137;
        v143 = v218;
        v147 = v274;
        v145 = v275;
        (*(v274 + 104))(v218, *MEMORY[0x277D56618], v275);
      }

      v219 = PommesCandidateId.description.getter();
      v221 = v220;
      (*(v147 + 8))(v143, v145);
      v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v219, v221, &v319);

      *(v134 + 14) = v222;
      *(v134 + 22) = 1024;
      v151 = v300;
      LODWORD(v222) = v300[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser];

      *(v134 + 24) = v222;
      *(v134 + 28) = 2080;
      v152 = v314;
      v318 = v314;

      v223 = String.init<A>(describing:)();
      v225 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v223, v224, &v319);

      *(v134 + 30) = v225;
      *(v134 + 38) = 2080;
      lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x277D56698], MEMORY[0x277D566A8]);
      v226 = v285;
      v227 = v316;
      v228 = dispatch thunk of CustomStringConvertible.description.getter();
      v230 = v229;
      (*(v125 + 8))(v226, v227);
      v231 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v228, v230, &v319);

      *(v134 + 40) = v231;
      *(v134 + 48) = 2048;
      v232 = *(v312 + 16);

      *(v134 + 50) = v232;

      _os_log_impl(&dword_2232BB000, v131, v306, "    Constructing Pommes search request:\n    utterance: %s,\n    %s,\n    isMultiUser: %{BOOL}d,\n    requestContext: %s,\n    pommesContext: %s,\n    userParses: %ld,\n    isFallback: true", v134, 0x3Au);
      v233 = v305;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v233, -1, -1);
      MEMORY[0x223DE0F80](v134, -1, -1);

      v150 = v227;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v125 + 8))(v128, v124);
      v150 = v124;
      v151 = v129;
      v152 = v82;
    }

    v234 = *&v151[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
    v306 = *&v151[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8];
    v235 = v306;
    LODWORD(v310) = v151[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser];
    v236 = v311;
    (v307)(v311, v317, v150);
    (*(v125 + 56))(v236, 0, 1, v150);
    v237 = type metadata accessor for InputOrigin();
    (*(*(v237 - 8) + 56))(v303, 1, 1, v237);
    v238 = v313;
    v239 = v304;
    *&v304[*(v313 + 92)] = MEMORY[0x277D84F90];
    v240 = &v239[v238[5]];
    *v240 = v234;
    *(v240 + 1) = v235;
    v241 = v238[6];
    v242 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
    (*(*(v242 - 8) + 56))(&v239[v241], 1, 1, v242);
    v243 = *&v152[OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8];
    v244 = &v239[v238[8]];
    *v244 = *&v152[OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId];
    *(v244 + 1) = v243;
    v245 = &v239[v238[9]];
    *v245 = 0;
    *(v245 + 1) = 0;
    v246 = &v239[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
    v247 = v302;
    *v239 = v301;
    *(v239 + 1) = v247;
    v248 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v309 = *(v248 - 8);
    v249 = *(v309 + 56);
    v250 = v276;
    v249(v276, 1, 1, v248);
    v251 = type metadata accessor for NLXResultCandidate(0);
    v252 = *(v251 + 20);
    v249(&v246[v252], 1, 1, v248);
    v253 = &v246[*(v251 + 24)];
    v254 = v312;
    *v246 = v312;

    v255 = &v246[v252];
    v148 = v313;
    outlined assign with take of Siri_Nlu_External_DelegatedUserDialogAct?(v250, v255);
    type metadata accessor for PommesSearchRequest.ParseState(0);
    *v253 = 0;
    *(v253 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of MediaUserStateCenter?(v311, &v239[v148[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v249(v250, 1, 1, v248);
    v256 = v280;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v254, v250, v280);
    outlined destroy of MediaUserStateCenter?(v250, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v257 = v278;
    outlined init with copy of MediaUserStateCenter?(v256, v278, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v258 - 8) + 48))(v257, 1, v258) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v257, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v259 = 1;
      v260 = v277;
    }

    else
    {
      v260 = v277;
      (*(v309 + 32))(v277, v257, v248);
      v259 = 0;
    }

    v249(v260, v259, 1, v248);
    v211 = v304;
    outlined init with take of PommesSearchReason?(v260, &v304[v148[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    *(v211 + v148[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v256, 1);
    v261 = v314;
    v262 = *(v314 + 3);
    v263 = (v211 + v148[7]);
    *v263 = *(v314 + 2);
    v263[1] = v262;
    *(v211 + v148[13]) = v261;
    v264 = v303;
    outlined init with copy of MediaUserStateCenter?(v303, v211 + v148[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    *(v211 + v148[15]) = v310;
    *(v211 + v148[18]) = 0;

    v216 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v312);

    outlined destroy of MediaUserStateCenter?(v256, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    outlined destroy of MediaUserStateCenter?(v264, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    outlined destroy of MediaUserStateCenter?(v311, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v204 = v315;
    v217 = v316;
  }

  (*(v204 + 8))(v317, v217);
  *(v211 + v148[19]) = v216;
  *(v211 + v148[20]) = 1;
  v265 = (v211 + v148[21]);
  *v265 = 0;
  v265[1] = 0;
  *(v211 + v148[22]) = 0;
  *(v211 + v148[16]) = 0;
  *(v211 + v148[17]) = 0;
  return outlined init with take of PommesSearchRequest(v211, v308);
}

uint64_t PommesSearchService.deinit()
{

  return v0;
}

uint64_t PommesSearchService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t PommesSearchServiceError.description.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000036;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000048;
  }
}

Swift::Int PommesSearchServiceError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesSearchServiceError()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000036;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000048;
  }
}

uint64_t specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v54 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v54 - v9;
  v74 = type metadata accessor for Siri_Nlu_External_Parser();
  v10 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserParse();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v56 = &v54 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  v23 = *(a1 + 16);
  v69 = a1;
  v24 = v23;

  if (!v24)
  {
    v59 = MEMORY[0x277D84F90];
LABEL_22:

    return v59;
  }

  v26 = 0;
  v68 = v13 + 16;
  v72 = (v10 + 8);
  v64 = *MEMORY[0x277D5DA78];
  v70 = (v6 + 8);
  v71 = (v6 + 104);
  v60 = *MEMORY[0x277D5DA80];
  v61 = (v13 + 8);
  v58 = (v13 + 32);
  v59 = MEMORY[0x277D84F90];
  v55 = v4;
  v66 = v13;
  v67 = v12;
  v54 = v22;
  v65 = v24;
  while (v26 < v24)
  {
    v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v29 = *(v13 + 72);
    result = (*(v13 + 16))(v18, v69 + v28 + v29 * v26, v12);
    if (__OFADD__(v26, 1))
    {
      goto LABEL_24;
    }

    v62 = v29;
    v63 = v28;
    v77 = v26 + 1;
    v30 = v73;
    Siri_Nlu_External_UserParse.parser.getter();
    v31 = v18;
    v32 = v75;
    Siri_Nlu_External_Parser.parserID.getter();
    v33 = *v72;
    (*v72)(v30, v74);
    v34 = *v71;
    v35 = v76;
    (*v71)(v76, v64, v5);
    lazy protocol witness table accessor for type PommesError and conformance PommesError(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88], MEMORY[0x277D5DAA8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v36 = *v70;
    (*v70)(v35, v5);
    v37 = v32;
    v18 = v31;
    v36(v37, v5);
    if ((v79 == v78 || (v38 = v73, Siri_Nlu_External_UserParse.parser.getter(), v39 = v75, Siri_Nlu_External_Parser.parserID.getter(), v33(v38, v74), v40 = v76, v34(v76, v60, v5), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v36(v40, v5), v41 = v39, v18 = v31, v36(v41, v5), v79 == v78)) && (Siri_Nlu_External_UserParse.comparableProbability.getter(), v27 > 0.05))
    {
      v42 = *v58;
      v43 = v56;
      v12 = v67;
      (*v58)(v56, v18, v67);
      v44 = v54;
      v42(v54, v43, v12);
      v45 = v55;
      Siri_Nlu_External_UserParse.firstUserDialogAct.getter(v55);
      v46 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v45, 1, v46) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v45, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        v13 = v66;
LABEL_14:
        v42(v57, v44, v12);
        v49 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 16) + 1, 1);
          v49 = v80;
        }

        v52 = *(v49 + 16);
        v51 = *(v49 + 24);
        v53 = v49;
        if (v52 >= v51 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v53 = v80;
        }

        *(v53 + 16) = v52 + 1;
        v59 = v53;
        result = (v42)(v53 + v63 + v52 * v62, v57, v12);
        goto LABEL_19;
      }

      v48 = Siri_Nlu_External_UserDialogAct.hasDelegated.getter();
      (*(v47 + 8))(v45, v46);
      v13 = v66;
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }

      result = (*v61)(v44, v12);
LABEL_19:
      v24 = v65;
      v26 = v77;
      if (v77 == v65)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v12 = v67;
      result = (*v61)(v18, v67);
      ++v26;
      v24 = v65;
      v13 = v66;
      if (v77 == v65)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of ParseStateXPC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PommesSearchRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PommesCandidateId() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(a1, v10, v11, v12, v13, v14, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:)(a1, v4, v5, v7, v6);
}

uint64_t outlined destroy of PommesSearchRequest(uint64_t a1)
{
  v2 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of MediaUserStateCenter?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);

    return v21;
  }

LABEL_8:
  outlined destroy of MediaUserStateCenter?(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v6(a1);
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t outlined assign with take of Siri_Nlu_External_DelegatedUserDialogAct?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PommesSearchServiceError and conformance PommesSearchServiceError()
{
  result = lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError;
  if (!lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError;
  if (!lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchServiceError and conformance PommesSearchServiceError);
  }

  return result;
}

uint64_t dispatch thunk of PommesSearchService.searchInfiEntity(request:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of PommesSearchService.searchInfiEntity(request:);

  return v6(a1);
}

uint64_t dispatch thunk of PommesSearchService.searchInfiEntity(request:timeoutInSec:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of PommesSearchService.searchInfiEntity(request:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:);

  return v6(a1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t partial apply for @objc closure #1 in PommesSearchService.searchToolGlobalSearch(request:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return @objc closure #1 in PommesSearchService.searchToolGlobalSearch(request:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v4);
}

uint64_t objectdestroy_23Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in PommesSearchService.searchInfiEntity(request:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in PommesSearchService.searchInfiEntity(request:)(v2, v3, v4);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t lazy protocol witness table accessor for type PommesError and conformance PommesError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRs6ResultOy21SiriInformationSearch14PommesResponseCsAA_pG_TG5(a1, v4);
}

uint64_t _s21SiriInformationSearch06PommesC7ServiceC16searchInfiEntity7request12timeoutInSecAA0D8ResponseCAA0dC10RequestXPCC_s6UInt64VtYaKFs6ResultOyAHs5Error_pGyYacfU_yScCyAPs5NeverOGXEfU_yAPnYucAScfu_yAPnYucfu0_TA(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMd, &_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMd, &_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t _ss6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGIegxT_AGIegg_TRTA(void *a1, char a2)
{
  v5 = *(v2 + 16);
  outlined copy of Result<PommesResponse, Error>(a1);
  return v5(a1, a2 & 1);
}

void protocol witness for CurareInteractionStream.init(streamId:) in conformance FSFCurareInteractionStream(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = MEMORY[0x223DDF550]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStreamId_];

  *a2 = v4;
}

id @nonobjc FSFCurareInteractionStream.insert(_:)(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([v1 insert:a1 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t closure #1 in variable initialization expression of static CurareJSONBuilder.lazySetup()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.pommes);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2232BB000, v1, v2, "CURARE: performing one-time setup for FeatureStore donation", v3, 2u);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }

  v4 = type metadata accessor for Searchfoundation_Card();
  v5 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, MEMORY[0x277D38E40], MEMORY[0x277D38E38]);

  return MEMORY[0x28217E090](v4, v5);
}

uint64_t static CurareDonation.donateCurareInfo(for:with:into:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.pommes);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v6;
    v32 = v17;
    *&v36[0] = v17;
    *v16 = 136315138;
    v33 = v13;
    v18 = PommesResponse.curareDescription.getter();
    v20 = a1;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v36);

    *(v16 + 4) = v21;
    a1 = v20;
    _os_log_impl(&dword_2232BB000, v14, v15, "POMMES-CURARE: %s", v16, 0xCu);
    v22 = v32;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v6 = v34;
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v16, -1, -1);

    v23 = v33;
  }

  else
  {

    v23 = v13;
  }

  static TaskPriority.background.getter();
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
  outlined init with copy of CurareInteractionStream?(a3, v36);
  v25 = v35;
  (*(v7 + 16))(v35, a1, v6);
  v26 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = v36[1];
  *(v27 + 32) = v36[0];
  *(v27 + 48) = v28;
  *(v27 + 64) = v37;
  *(v27 + 72) = v23;
  (*(v7 + 32))(v27 + v26, v25, v6);
  v29 = v23;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:with:into:), v27);
}

uint64_t closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for Date();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static CurareDonation.donateCurareInfo(for:with:into:), 0, 0);
}

uint64_t closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = static PerformanceUtil.shared;
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 24);
  *(v6 + 32) = v4;
  Date.init()();
  (*(*v5 + 200))(0xD00000000000002ALL, 0x80000002234DAC30, 0, v1, "SiriInformationSearch/CurareDonation.swift", 42, 2, 194, "donateCurareInfo(for:with:into:)", 32, 2, partial apply for closure #1 in closure #1 in static CurareDonation.donateCurareInfo(for:with:into:), v6, MEMORY[0x277D84F78] + 8);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PommesCurareInteractionValue(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    outlined init with copy of CurareInteractionStream?(a1, v15);
  }

  else
  {
    type metadata accessor for PommesResponse();
    static PommesResponse.makeDefaultInteractionStream()(v15);
  }

  v8 = PommesResponse.requestId.getter();
  v10 = v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v12 = *(*(v11 - 8) + 16);
  v12(v7, a3, v11);
  swift_storeEnumTagMultiPayload();
  specialized static CurareDonation.donateCurareValue(_:with:into:)(v7, v8, v10, v15);
  outlined destroy of PommesCurareInteractionValue(v7);
  v12(v7, a3, v11);
  swift_storeEnumTagMultiPayload();
  specialized static CurareDonation.donateCurareValue(_:with:into:)(v7, v8, v10, v15);

  outlined destroy of PommesCurareInteractionValue(v7);
  return outlined destroy of CurareInteractionStream?(v15);
}

uint64_t static CurareDonation.donateCurareInfo(for:into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  static TaskPriority.background.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  outlined init with copy of CurareInteractionStream?(a2, v16);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = v16[1];
  *(v12 + 32) = v16[0];
  *(v12 + 48) = v13;
  *(v12 + 64) = v17;
  (*(v5 + 32))(v12 + v11, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:into:), v12);
}

uint64_t closure #1 in static CurareDonation.donateCurareInfo(for:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static CurareDonation.donateCurareInfo(for:into:), 0, 0);
}

uint64_t closure #1 in static CurareDonation.donateCurareInfo(for:into:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = static PerformanceUtil.shared;
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 24);
  Date.init()();
  (*(*v4 + 200))(0xD000000000000025, 0x80000002234DABE0, 0, v1, "SiriInformationSearch/CurareDonation.swift", 42, 2, 208, "donateCurareInfo(for:into:)", 27, 2, partial apply for closure #1 in closure #1 in static CurareDonation.donateCurareInfo(for:into:), v5, MEMORY[0x277D84F78] + 8);
  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in closure #1 in static CurareDonation.donateCurareInfo(for:into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesCurareInteractionValue(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    outlined init with copy of CurareInteractionStream?(a1, v18);
  }

  else
  {
    type metadata accessor for PommesResponse();
    static PommesResponse.makeDefaultInteractionStream()(v18);
  }

  v11 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.getter();
  v12 = MEMORY[0x223DDB6D0](v11);
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  (*(*(v15 - 8) + 16))(v6, a2, v15);
  swift_storeEnumTagMultiPayload();
  specialized static CurareDonation.donateCurareValue(_:with:into:)(v6, v12, v14, v18);

  outlined destroy of PommesCurareInteractionValue(v6);
  return outlined destroy of CurareInteractionStream?(v18);
}

uint64_t static CurareDonation.donateCurareResponseUsedMarker(from:into:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  static TaskPriority.background.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  outlined init with copy of CurareInteractionStream?(a2, v13);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = v13[1];
  *(v8 + 32) = v13[0];
  *(v8 + 48) = v9;
  *(v8 + 64) = v14;
  *(v8 + 72) = a1;
  v10 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:), v8);
}

uint64_t closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:), 0, 0);
}

uint64_t closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = static PerformanceUtil.shared;
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 24);
  Date.init()();
  (*(*v4 + 200))(0xD000000000000034, 0x80000002234DAB20, 0, v1, "SiriInformationSearch/CurareDonation.swift", 42, 2, 222, "donateCurareResponseUsedMarker(from:into:)", 42, 2, partial apply for closure #1 in closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:), v5, MEMORY[0x277D84F78] + 8);
  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)(uint64_t a1)
{
  v2 = type metadata accessor for PommesCurareInteractionValue(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    outlined init with copy of CurareInteractionStream?(a1, v9);
  }

  else
  {
    type metadata accessor for PommesResponse();
    static PommesResponse.makeDefaultInteractionStream()(v9);
  }

  swift_storeEnumTagMultiPayload();
  v5 = PommesResponse.requestId.getter();
  specialized static CurareDonation.donateCurareValue(_:with:into:)(v4, v5, v6, v9);

  outlined destroy of PommesCurareInteractionValue(v4);
  return outlined destroy of CurareInteractionStream?(v9);
}

uint64_t specialized FSFCurareInteractionStream.shouldInsertInteraction()()
{
  v0 = objc_opt_self();
  if (![v0 isSupportedPlatform])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "FSFUtils: unsupported platform.";
    goto LABEL_12;
  }

  if ([v0 isSupportedUser])
  {
    return 1;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "FSFUtils: unsupported user.";
LABEL_12:
    _os_log_impl(&dword_2232BB000, v3, v4, v6, v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

LABEL_13:

  return 0;
}

uint64_t outlined init with copy of CurareInteractionStream?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in static CurareDonation.donateCurareInfo(for:with:into:)(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:into:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in static CurareDonation.donateCurareInfo(for:into:)(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t partial apply for closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in static CurareDonation.donateCurareResponseUsedMarker(from:into:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t getEnumTagSinglePayload for CurareDonation(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CurareDonation(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata accessor for PommesCurareInteractionValue(uint64_t a1)
{
  result = type metadata singleton initialization cache for PommesCurareInteractionValue;
  if (!type metadata singleton initialization cache for PommesCurareInteractionValue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static CurareJSONBuilder.stripAssetInfo(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v10 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v89 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v15 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  result = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  if (result)
  {
    v86 = v10;
    v85 = v7;
    v18 = v63;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    v19 = v65;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
    v20 = *(v15 + 8);
    v21 = v18;
    v22 = v85;
    v61 = v15 + 8;
    v60 = v20;
    v23 = v20(v21, v64);
    v24 = MEMORY[0x223DDB8B0](v23);
    v25 = *(v67 + 8);
    v67 += 8;
    v59 = v25;
    v25(v19, v66);
    v26 = v86;
    v27 = *(v24 + 16);

    v58 = v27;
    if (v27)
    {
      v28 = 0;
      v57 = v62 + 16;
      v86 = v26 + 1;
      v85 = v22 + 1;
      v81 = v3 + 16;
      v80 = (v3 + 8);
      v55 = (v62 + 8);
      v71 = v5;
      v70 = v6;
      v69 = v9;
      v56 = v12;
      v68 = v3;
      while (1)
      {
        v75 = v28;
        v29 = v63;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
        v30 = v65;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
        v31 = v60(v29, v64);
        v32 = MEMORY[0x223DDB8B0](v31);
        v33 = v75;
        v34 = v32;
        result = v59(v30, v66);
        if (v33 >= *(v34 + 16))
        {
          break;
        }

        v73 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v35 = *(v62 + 16);
        v72 = *(v62 + 72) * v33;
        v35(v89, v34 + v73 + v72, v12);

        v36 = v87;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.getter();
        v84 = *v86;
        v84(v36, v88);
        v37 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
        v83 = *v85;
        v83(v9, v6);
        v38 = *(v37 + 16);

        v82 = v38;
        if (v38)
        {
          v39 = 0;
          while (1)
          {
            v40 = v87;
            Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
            Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.getter();
            v84(v40, v88);
            v41 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.getter();
            result = (v83)(v9, v6);
            if (v39 >= *(v41 + 16))
            {
              break;
            }

            (*(v3 + 16))(v5, v41 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39, v2);

            Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.getter();
            v42 = String.count.getter();

            if (v42 >= 101)
            {
              v95 = 0;
              v96 = 0xE000000000000000;
              _StringGuts.grow(_:)(18);

              v95 = 0x4445564F4D45525FLL;
              v96 = 0xEA0000000000205FLL;
              v94 = v42;
              v43 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x223DDF6D0](v43);

              MEMORY[0x223DDF6D0](0x736574796220, 0xE600000000000000);
              v77 = v95;
              v76 = v96;
              v44 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.modify();
              v79 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.modify();
              v78 = Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.components.modify();
              v46 = v45;
              v47 = *v45;
              result = swift_isUniquelyReferenced_nonNull_native();
              *v46 = v47;
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
                v47 = result;
                *v46 = result;
              }

              if (v75 >= v47[2])
              {
                goto LABEL_21;
              }

              v48 = v2;
              v49 = Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.modify();
              v50 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.audioClientComponent.modify();
              v51 = Apple_Parsec_Siri_V2alpha_AudioClientComponent.audioSearchResults.modify();
              v53 = v52;
              v54 = *v52;
              result = swift_isUniquelyReferenced_nonNull_native();
              *v53 = v54;
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
                v54 = result;
                *v53 = result;
              }

              if (v39 >= v54[2])
              {
                goto LABEL_22;
              }

              Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.setter();
              v51(v90, 0);
              v50(v91, 0);
              v49(v92, 0);
              v78(v93, 0);
              v79(&v94, 0);
              v44(&v95, 0);
              v2 = v48;
              v3 = v68;
              v5 = v71;
              v6 = v70;
              v9 = v69;
            }

            ++v39;
            (*v80)(v5, v2);
            if (v82 == v39)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

LABEL_4:
        v28 = v75 + 1;
        v12 = v56;
        result = (*v55)(v89, v56);
        if (v28 == v58)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t specialized static CurareJSONBuilder.copyFields(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.setter();
  v24 = a1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v23 = *(v9 + 8);
  v23(v14, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.setter();
  v15 = *(v9 + 16);
  v31 = v12;
  v15(v12, v14, v8);
  v25 = v15;
  v26 = v9 + 16;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter();
  v16 = v23;
  v23(v14, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.mathOperationContainsRandom.getter();
  v16(v14, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.mathOperationContainsRandom.setter();
  v15(v31, v14, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter();
  v16(v14, v8);
  v17 = v16;
  v18 = v27;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v19 = v29;
  v20 = v30;
  (*(v29 + 16))(v28, v18, v30);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.setter();
  (*(v19 + 8))(v18, v20);
  specialized static CurareJSONBuilder.stripAssetInfo(_:)(a2);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
  v17(v14, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.setter();
  v25(v31, v14, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter();
  v17(v14, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isQueryDirectQuestion.getter();
  return Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isQueryDirectQuestion.setter();
}

uint64_t specialized static CurareJSONBuilder.build(from:)(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for JSONEncodingOptions();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  if (one-time initialization token for lazySetup != -1)
  {
    swift_once();
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.init()();
  specialized static CurareJSONBuilder.copyFields(from:to:)(a1, v12);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v39 = __swift_project_value_buffer(v13, static Logger.pommes);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v16;
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v16 = 136315138;
    swift_beginAccess();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
    v36 = v14;
    v17 = Message.textFormatString()();
    v18 = v7;
    v19 = v6;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17._countAndFlagsBits, v17._object, v41);

    v21 = v37;
    *(v37 + 1) = v20;
    v6 = v19;
    v7 = v18;
    v2 = v1;
    v22 = v36;
    _os_log_impl(&dword_2232BB000, v36, v15, "CURARE: filtered to %s", v21, 0xCu);
    v23 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x223DE0F80](v23, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  (*(v7 + 16))(v10, v12, v6);
  JSONEncodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
  v24 = Message.jsonString(options:)();
  v25 = v5;
  v26 = v24;
  if (v2)
  {
    (*(v40 + 8))(v25, v42);
    v27 = *(v7 + 8);
    v27(v10, v6);
    v27(v12, v6);
  }

  else
  {
    (*(v40 + 8))(v25, v42);
    v28 = *(v7 + 8);
    v42 = v7 + 8;
    v28(v10, v6);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v6;
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = String.count.getter();

      _os_log_impl(&dword_2232BB000, v29, v30, "CURARE: generated JSON (%ldb) for donation", v32, 0xCu);
      v33 = v32;
      v6 = v31;
      MEMORY[0x223DE0F80](v33, -1, -1);
    }

    else
    {
    }

    v28(v12, v6);
  }

  return v26;
}

void (*specialized static CurareDonation.makeCurareFeatureStoreInteraction(forID:value:)(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v137 = a2;
  v136 = a1;
  v4 = type metadata accessor for JSONEncodingOptions();
  v166 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v165 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v132 - v11;
  v13 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v13 - 8);
  v134 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for Google_Protobuf_Any();
  v143 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for Debuglevelspb_AnyArray();
  v149 = *(v157 - 8);
  v16 = MEMORY[0x28223BE20](v157);
  v155 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v148 = &v132 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetSgMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v154 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v150 = (&v132 - v22);
  v139 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v138 = *(v139 - 8);
  v23 = MEMORY[0x28223BE20](v139);
  v135 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v132 - v25;
  v27 = type metadata accessor for PommesCurareInteractionValue(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesCurareInteractionValue(a3, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v31 = v138;
      v32 = v139;
      (*(v138 + 32))(v26, v29, v139);
      v33 = v147;
      v34 = specialized static CurareJSONBuilder.build(from:)(v26);
      if (!v33)
      {
        v120 = v34;
        v119 = v35;
        v147 = 0;
        (*(v31 + 8))(v26, v32);
        goto LABEL_50;
      }

      v36 = v32;
      v37 = v33;
      (*(v31 + 8))(v26, v36);
      return v37;
    }

    v43 = v138;
    v44 = v135;
    v45 = v139;
    (*(v138 + 32))(v135, v29, v139);
    v37 = *(Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.serviceDebug.getter() + 16);

    if (!v37)
    {
      (*(v43 + 8))(v44, v45);
      return v37;
    }

    v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySDyS2SGGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v47 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.serviceDebug.getter();
    v48 = 0;
    v49 = *(v47 + 64);
    v133 = v47 + 64;
    v141 = v47;
    v50 = 1 << *(v47 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & v49;
    v132 = (v50 + 63) >> 6;
    v140 = v149 + 16;
    v151 = (v149 + 32);
    v158 = (v143 + 8);
    v159 = v143 + 16;
    v142 = (v149 + 8);
    v53 = v154;
    while (1)
    {
      v156 = v46;
      if (!v52)
      {
        if (v132 <= v48 + 1)
        {
          v56 = v48 + 1;
        }

        else
        {
          v56 = v132;
        }

        v57 = v56 - 1;
        while (1)
        {
          v55 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_61;
          }

          if (v55 >= v132)
          {
            v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMR);
            (*(*(v116 - 8) + 56))(v53, 1, 1, v116);
            v153 = 0;
            goto LABEL_24;
          }

          v52 = *(v133 + 8 * v55);
          ++v48;
          if (v52)
          {
            goto LABEL_23;
          }
        }
      }

      v55 = v48;
LABEL_23:
      v153 = (v52 - 1) & v52;
      v58 = __clz(__rbit64(v52)) | (v55 << 6);
      v59 = (*(v141 + 48) + 16 * v58);
      v61 = *v59;
      v60 = v59[1];
      v62 = v149;
      v63 = v148;
      v64 = v157;
      (*(v149 + 16))(v148, *(v141 + 56) + *(v149 + 72) * v58, v157);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMR);
      v66 = *(v65 + 48);
      v67 = v154;
      *v154 = v61;
      *(v67 + 1) = v60;
      v53 = v67;
      (*(v62 + 32))(&v67[v66], v63, v64);
      (*(*(v65 - 8) + 56))(v53, 0, 1, v65);

      v57 = v55;
      v46 = v156;
LABEL_24:
      v68 = v150;
      outlined init with take of (key: String, value: Debuglevelspb_AnyArray)?(v53, v150);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetMR);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69) == 1)
      {

        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        v174 = v46;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySDyS2SGGGMd, &_sSDySSSaySDyS2SGGGMR);
        lazy protocol witness table accessor for type [String : [[String : String]]] and conformance <> [A : B]();
        v126 = v147;
        v127 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v147 = v126;
        if (v126)
        {

          (*(v138 + 8))(v135, v139);
          return v37;
        }

        v129 = v127;
        v130 = v128;

        static String.Encoding.utf8.getter();
        v120 = String.init(data:encoding:)();
        v119 = v131;
        outlined consume of Data._Representation(v129, v130);

        (*(v138 + 8))(v135, v139);
        if (!v119)
        {
          return 0;
        }

LABEL_50:
        v122 = objc_allocWithZone(MEMORY[0x277D08438]);
        v123 = MEMORY[0x223DDF550](v120, v119);

        v124 = MEMORY[0x223DDF550](v136, v137);
        v37 = [v122 initWithJsonStr:v123 interactionId:v124 dataVersion:0];

        return v37;
      }

      v152 = v57;
      v71 = *v68;
      v70 = v68[1];
      v72 = v157;
      v73 = (*v151)(v155, v68 + *(v69 + 48), v157);
      v74 = MEMORY[0x223DDA050](v73);
      v75 = *(v74 + 16);
      if (v75)
      {
        v145 = v71;
        v146 = v70;
        v174 = MEMORY[0x277D84F90];
        v165 = v75;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75, 0);
        v76 = v174;
        v77 = v143;
        v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v144 = v74;
        v79 = v74 + v78;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
        v160 = *(v77 + 72);
        v161 = *(v77 + 16);
        v162 = v80;
        while (1)
        {
          v166 = v76;
          v161(v163, v79, v164);
          v167 = 0x656D614E65707974;
          v168 = 0xE800000000000000;
          v81 = Google_Protobuf_Any.typeURL.getter();
          v83 = v82;
          v169 = v81;
          v170 = v82;
          v171 = 1635017060;
          v172 = 0xE400000000000000;
          v84 = Google_Protobuf_Any.value.getter();
          v86 = v85;
          v87 = Data.base64EncodedString(options:)(0);
          outlined consume of Data._Representation(v84, v86);
          v173 = v87;
          v88 = static _DictionaryStorage.allocate(capacity:)();

          v89 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D614E65707974, 0xE800000000000000);
          if (v90)
          {
            break;
          }

          *(v88 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v89;
          v91 = (v88[6] + 16 * v89);
          *v91 = 0x656D614E65707974;
          v91[1] = 0xE800000000000000;
          v92 = (v88[7] + 16 * v89);
          *v92 = v81;
          v92[1] = v83;
          v93 = v88[2];
          v94 = __OFADD__(v93, 1);
          v95 = v93 + 1;
          if (v94)
          {
            goto LABEL_58;
          }

          v88[2] = v95;

          v96 = specialized __RawDictionaryStorage.find<A>(_:)(1635017060, 0xE400000000000000);
          if (v97)
          {
            goto LABEL_59;
          }

          *(v88 + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v96;
          v98 = (v88[6] + 16 * v96);
          *v98 = 1635017060;
          v98[1] = 0xE400000000000000;
          *(v88[7] + 16 * v96) = v87;
          v99 = v88[2];
          v94 = __OFADD__(v99, 1);
          v100 = v99 + 1;
          if (v94)
          {
            goto LABEL_60;
          }

          v88[2] = v100;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
          swift_arrayDestroy();
          (*v158)(v163, v164);
          v76 = v166;
          v174 = v166;
          v102 = v166[2];
          v101 = v166[3];
          if (v102 >= v101 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
            v76 = v174;
          }

          v76[2] = v102 + 1;
          v76[v102 + 4] = v88;
          v79 += v160;
          if (!--v165)
          {

            v72 = v157;
            v46 = v156;
            v70 = v146;
            v71 = v145;
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v76 = MEMORY[0x277D84F90];
LABEL_36:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = v46;
      v104 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v70);
      v106 = v46[2];
      v107 = (v105 & 1) == 0;
      v94 = __OFADD__(v106, v107);
      v108 = v106 + v107;
      if (v94)
      {
        goto LABEL_62;
      }

      v109 = v105;
      v166 = v76;
      v110 = v46[3];
      v111 = v152;
      if (v110 >= v108)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v117 = v72;
          v118 = v104;
          specialized _NativeDictionary.copy()();
          v104 = v118;
          v72 = v117;
        }

        v53 = v154;
        v48 = v111;
        if (v109)
        {
          goto LABEL_12;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v108, isUniquelyReferenced_nonNull_native);
        v104 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v70);
        if ((v109 & 1) != (v112 & 1))
        {
          goto LABEL_64;
        }

        v53 = v154;
        v48 = v111;
        if (v109)
        {
LABEL_12:
          v54 = v104;

          v46 = v174;
          *(v174[7] + 8 * v54) = v166;

          (*v142)(v155, v72);
          goto LABEL_13;
        }
      }

      v46 = v174;
      v174[(v104 >> 6) + 8] |= 1 << v104;
      v113 = (v46[6] + 16 * v104);
      *v113 = v71;
      v113[1] = v70;
      *(v46[7] + 8 * v104) = v166;
      (*v142)(v155, v72);
      v114 = v46[2];
      v94 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v94)
      {
        goto LABEL_63;
      }

      v46[2] = v115;
LABEL_13:
      v52 = v153;
    }
  }

  if (EnumCaseMultiPayload != 2)
  {
    v119 = 0x80000002234DABC0;
    v120 = 0xD00000000000001FLL;
    goto LABEL_50;
  }

  v38 = v4;
  v39 = v165;
  (*(v165 + 32))(v12, v29, v7);
  (*(v39 + 16))(v10, v12, v7);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clearAsrContext()();
  JSONEncodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, MEMORY[0x277D38D70], MEMORY[0x277D38D68]);
  v40 = v147;
  v41 = Message.jsonString(options:)();
  v147 = v40;
  if (!v40)
  {
    v120 = v41;
    v119 = v42;
    (v166[1])(v6, v38);
    v121 = *(v39 + 8);
    v121(v10, v7);
    v121(v12, v7);
    goto LABEL_50;
  }

  (v166[1])(v6, v4);
  v37 = *(v39 + 8);
  v37(v10, v7);
  v37(v12, v7);
  return v37;
}

void specialized static CurareDonation.donateCurareValue(_:with:into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    outlined init with copy of CurareInteractionStream?(a4, &v30);
    if (v31)
    {
      outlined init with take of DomainWarmupHandling(&v30, v32);
      v7 = v33;
      v8 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      if ((*(v8 + 24))(v7, v8))
      {
        if (specialized static CurareDonation.makeCurareFeatureStoreInteraction(forID:value:)(a2, a3, a1))
        {
          v16 = v33;
          v17 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          v18 = *(v17 + 16);
          v19 = swift_unknownObjectRetain();
          v18(v19, v16, v17);
          swift_unknownObjectRelease();
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          __swift_project_value_buffer(v24, static Logger.pommes);

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *&v30 = v28;
            *v27 = 136315138;
            *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v30);
            _os_log_impl(&dword_2232BB000, v25, v26, "Inserted Curare feature for interaction ID: %s", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v28);
            MEMORY[0x223DE0F80](v28, -1, -1);
            MEMORY[0x223DE0F80](v27, -1, -1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          __swift_project_value_buffer(v20, static Logger.pommes);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            _os_log_impl(&dword_2232BB000, v21, v22, "Interaction returned by makeCurareFeatureStoreInteraction was nil", v23, 2u);
            MEMORY[0x223DE0F80](v23, -1, -1);
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v32);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      outlined destroy of CurareInteractionStream?(&v30);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pommes);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "Skipping Curare feature donation: no stream available, or stream not accepting interactions.", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2232BB000, oslog, v10, "Skipping Curare donation because this POMMES response doesn't have a request ID", v11, 2u);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }
  }
}

uint64_t outlined destroy of PommesCurareInteractionValue(uint64_t a1)
{
  v2 = type metadata accessor for PommesCurareInteractionValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of CurareInteractionStream?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of PommesCurareInteractionValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesCurareInteractionValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: String, value: Debuglevelspb_AnyArray)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetSgMd, &_sSS3key_10PegasusAPI22Debuglevelspb_AnyArrayV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for PommesCurareInteractionValue(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id PommesAssistantIDManager.init(pommesSearchRequest:)(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for PommesSearchRequest(0) + 52)))
  {
  }

  v2 = specialized PommesAssistantIDManager.init(realAssistantID:)();
  outlined destroy of PommesSearchRequest(a1);
  return v2;
}

uint64_t static PommesAssistantIDManager.shouldReplaceAssistantID.getter()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 longLivedIdentifierUploadingEnabled];

  return v1 ^ 1;
}

Swift::String_optional __swiftcall PommesAssistantIDManager.effectiveAssistantID()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedPreferences];
  v11 = [v10 longLivedIdentifierUploadingEnabled];

  if (v11)
  {
  }

  else
  {
    PommesAssistantIDManager.replacementAssistantID()(v5, v4, v3, v9);
    v4 = UUID.uuidString.getter();
    v3 = v12;
    (*(v7 + 8))(v9, v6);
  }

  v13 = v4;
  v14 = v3;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

void PommesAssistantIDManager.replacementAssistantID()(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v66[-v9];
  v11 = type metadata accessor for Date();
  v72 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v66[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66[-v18];
  v20 = type metadata accessor for UUID();
  v21 = MEMORY[0x28223BE20](v20);
  v24 = &v66[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v69 = v16;
    v70 = v11;
    v71 = v22;
    v25 = v21;
    v74 = a2;
    v75 = a3;
    v76 = a4;
    v73 = a1;
    v26 = a1;
    v27 = MEMORY[0x223DDF550](0xD000000000000016, 0x80000002234DAC90);
    v77 = v26;
    v28 = [v26 objectForKey_];

    if (v28)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    v80 = v78;
    v81 = v79;
    if (!*(&v79 + 1))
    {
      v31 = &_sypSgMd;
      v32 = &_sypSgMR;
      v33 = &v80;
      goto LABEL_13;
    }

    v29 = v25;
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_14:
      v34 = v76;
      if (one-time initialization token for overrides != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.overrides);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2232BB000, v36, v37, "No assistant ID saved in user defaults.", v38, 2u);
        MEMORY[0x223DE0F80](v38, -1, -1);
      }

      PommesAssistantIDManager.mintReplacementAssistantID()(v73, v34);
      return;
    }

    UUID.init(uuidString:)();

    v30 = v71;
    if ((*(v71 + 48))(v19, 1, v25) == 1)
    {
      v31 = &_s10Foundation4UUIDVSgMd;
      v32 = &_s10Foundation4UUIDVSgMR;
      v33 = v19;
LABEL_13:
      outlined destroy of MediaUserStateCenter?(v33, v31, v32);
      goto LABEL_14;
    }

    v39 = *(v30 + 32);
    v68 = v24;
    v40 = v39;
    v39();
    v41 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DACB0);
    v42 = [v77 objectForKey_];

    if (v42)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    v43 = v72;
    v80 = v78;
    v81 = v79;
    if (*(&v79 + 1))
    {
      v44 = v70;
      v45 = swift_dynamicCast();
      (v43[7])(v10, v45 ^ 1u, 1, v44);
      v46 = (v43[6])(v10, 1, v44);
      v47 = v76;
      if (v46 != 1)
      {
        v48 = v69;
        (v43[4])(v69, v10, v44);
        Date.timeIntervalSinceNow.getter();
        if (v49 >= 0.0)
        {
          (v43[1])(v48, v44);

          (v40)(v47, v68, v29);
          return;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static Logger.pommes);
        v51 = v70;
        (v43[2])(v14, v69, v70);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v80 = v72;
          *v54 = 136315138;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v53;
          v56 = v55;
          v58 = v57;
          v59 = v43[1];
          v59(v14, v51);
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v80);

          *(v54 + 4) = v60;
          _os_log_impl(&dword_2232BB000, v52, v67, "Replacement assistant ID is expired (at %s).", v54, 0xCu);
          v61 = v72;
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x223DE0F80](v61, -1, -1);
          MEMORY[0x223DE0F80](v54, -1, -1);
        }

        else
        {

          v59 = v43[1];
          v59(v14, v51);
        }

        PommesAssistantIDManager.mintReplacementAssistantID()(v73, v76);

        v59(v69, v51);
LABEL_35:
        (*(v71 + 8))(v68, v29);
        return;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v80, &_sypSgMd, &_sypSgMR);
      (v43[7])(v10, 1, 1, v70);
      v47 = v76;
    }

    outlined destroy of MediaUserStateCenter?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for overrides != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.overrides);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_2232BB000, v63, v64, "Unable to read expiration date for assistantID from user defaults. This should have been registered; why is it missing?", v65, 2u);
      MEMORY[0x223DE0F80](v65, -1, -1);
    }

    PommesAssistantIDManager.mintReplacementAssistantID()(v73, v47);
    goto LABEL_35;
  }

  UUID.init()();
}

uint64_t PommesAssistantIDManager.mintReplacementAssistantID()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v38 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  (*(v10 + 16))(v12, a2, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v4;
    v17 = v16;
    v34 = swift_slowAlloc();
    v35 = a1;
    v39 = v34;
    *v17 = 136315138;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v39);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2232BB000, v14, v15, "Minted new replacement assistantID: %s", v17, 0xCu);
    v22 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    v23 = v22;
    a1 = v35;
    MEMORY[0x223DE0F80](v23, -1, -1);
    v24 = v17;
    v4 = v36;
    MEMORY[0x223DE0F80](v24, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  static Date.now.getter();
  v25 = v37;
  Date.addingTimeInterval(_:)();
  v26 = *(v38 + 8);
  v26(v7, v4);
  if (a1)
  {
    v27 = a1;
    v28 = UUID.uuidString.getter();
    v29 = MEMORY[0x223DDF550](v28);

    v30 = MEMORY[0x223DDF550](0xD000000000000016, 0x80000002234DAC90);
    [v27 setObject:v29 forKey:v30];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v32 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DACB0);
    [v27 setObject:isa forKey:v32];
  }

  return (v26)(v25, v4);
}

Swift::Void __swiftcall PommesAssistantIDManager.reset()()
{
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x223DDF550](0xD000000000000016, 0x80000002234DAC90);
    [v1 removeObjectForKey_];

    v3 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DACB0);
    [v1 removeObjectForKey_];
  }
}

id specialized PommesAssistantIDManager.init(realAssistantID:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2234CF920;
    *(inited + 32) = 0xD000000000000024;
    *(inited + 40) = 0x80000002234DACB0;
    *(inited + 72) = type metadata accessor for Date();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v4 = v2;
    static Date.distantPast.getter();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of MediaUserStateCenter?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 registerDefaults_];
  }

  else
  {
    if (one-time initialization token for overrides != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.overrides);
    v5.super.isa = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5.super.isa, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000002234DA020, &v11);
      _os_log_impl(&dword_2232BB000, v5.super.isa, v7, "No user defaults access to %s! This may impact dialog randomization from Pegasus.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223DE0F80](v9, -1, -1);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }
  }

  return v2;
}

void specialized PommesAssistantIDManager.save(assistantID:expiringAt:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = UUID.uuidString.getter();
    v5 = MEMORY[0x223DDF550](v4);

    v6 = MEMORY[0x223DDF550](0xD000000000000016, 0x80000002234DAC90);
    [v3 setObject:v5 forKey:v6];

    isa = Date._bridgeToObjectiveC()().super.isa;
    v8 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DACB0);
    [v3 setObject:isa forKey:v8];
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PommesAssistantIDManager(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesAssistantIDManager(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PommesEngagement.tapEngagement(engagementContext:with:)()
{
  Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.init()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of PommesEngagementProtocol.tapEngagement(engagementContext:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t PommesSearchRequestProcessorErrorFailureReason.equivalentPommesError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PommesError();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_2784DA400 + v3);

  return v5(a1, v6, v4);
}

BOOL specialized static PommesSearchRequestProcessorError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v2 == 129)
    {
      if (v3 == 129)
      {
        return 1;
      }
    }

    else if (v3 == 130)
    {
      return 1;
    }
  }

  else if (v3 <= 0x3F)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type PommesSearchRequestProcessorErrorUnableToHandleReason and conformance PommesSearchRequestProcessorErrorUnableToHandleReason()
{
  result = lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorUnableToHandleReason and conformance PommesSearchRequestProcessorErrorUnableToHandleReason;
  if (!lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorUnableToHandleReason and conformance PommesSearchRequestProcessorErrorUnableToHandleReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorUnableToHandleReason and conformance PommesSearchRequestProcessorErrorUnableToHandleReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesSearchRequestProcessorErrorFailureReason and conformance PommesSearchRequestProcessorErrorFailureReason()
{
  result = lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorFailureReason and conformance PommesSearchRequestProcessorErrorFailureReason;
  if (!lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorFailureReason and conformance PommesSearchRequestProcessorErrorFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorFailureReason and conformance PommesSearchRequestProcessorErrorFailureReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PommesSearchRequestProcessorErrorFailureReason] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PommesSearchRequestProcessorErrorFailureReason] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PommesSearchRequestProcessorErrorFailureReason] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SiriInformationSearch06PommesC34RequestProcessorErrorFailureReasonOGMd, &_sSay21SiriInformationSearch06PommesC34RequestProcessorErrorFailureReasonOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PommesSearchRequestProcessorErrorFailureReason] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesSearchRequestProcessorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PommesSearchRequestProcessorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for PommesSearchRequestProcessorError(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *destructiveInjectEnumTag for PommesSearchRequestProcessorError(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesSearchRequestProcessorErrorUnableToHandleReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesSearchRequestProcessorErrorUnableToHandleReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesSearchRequestProcessorErrorFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesSearchRequestProcessorErrorFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t RouteInfoProfileSliceResolver.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_dispatchGroup;
  *(v3 + v7) = dispatch_group_create();
  *(v3 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
  v6(v2, 1, 1, v5);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v2, v3 + v8);
  swift_endAccess();
  return v3;
}

uint64_t RouteInfoProfileSliceResolver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_dispatchGroup;
  *(v0 + v7) = dispatch_group_create();
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
  v6(v3, 1, 1, v5);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v3, v0 + v8);
  swift_endAccess();
  return v0;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RouteInfoProfileSliceResolver.resolveRouteInfoSlice(from:requestId:pommesCandidateId:instrumentationUtil:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v62 = a6;
  v66 = a7;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v23, *MEMORY[0x277D39738], v20);
  v24 = *(*a4 + 128);
  v63 = a1;
  v64 = a2;
  v65 = a3;
  v25 = v24(a1, a2, a3, v23);
  v26 = v20;
  v27 = a5;
  (*(v21 + 8))(v23, v26);
  if (!a5)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.pommes);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2232BB000, v39, v40, "Cannot create route info slice because there is no service helper", v41, 2u);
      MEMORY[0x223DE0F80](v41, -1, -1);
    }

    (*(*a4 + 144))(v63, v64, v65, v25, 3);
    goto LABEL_19;
  }

  v28 = v62;
  if (!v62)
  {
    v42 = one-time initialization token for pommes;
    swift_unknownObjectRetain();
    if (v42 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2232BB000, v44, v45, "Cannot create route info slice because there is no dispatch queue provided", v46, 2u);
      MEMORY[0x223DE0F80](v46, -1, -1);
    }

    (*(*a4 + 144))(v63, v64, v65, v25, 3);
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v29 = v60;
  v30 = v61;
  (*(v60 + 56))(v19, 1, 1, v61);
  v31 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  v32 = v59;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v33 = v28;
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v19, v32 + v31);
  swift_endAccess();
  RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(v27, v33);
  outlined init with copy of MediaUserStateCenter?(v32 + v31, v17, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  if ((*(v29 + 48))(v17, 1, v30) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v17, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.pommes);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2232BB000, v35, v36, "There was an error while creating the routeInfoProfileSlice. Returning no profile slice for .sliceLabelRouteInfo", v37, 2u);
      MEMORY[0x223DE0F80](v37, -1, -1);
    }

    (*(*a4 + 144))(v63, v64, v65, v25, 3);
    swift_unknownObjectRelease();

LABEL_19:
    v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    return (*(*(v47 - 8) + 56))(v66, 1, 1, v47);
  }

  v49 = *(v29 + 32);
  v62 = v25;
  v50 = v58;
  v49(v58, v17, v30);
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v59 = &v57;
  MEMORY[0x28223BE20](v51);
  *(&v57 - 2) = v50;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
  v52 = v33;
  v53 = a4;
  v54 = v66;
  v55 = v29;
  static Message.with(_:)();
  v56 = v62;
  (*(*v53 + 136))(v63, v64, v65, v62);
  swift_unknownObjectRelease();

  (*(*(v51 - 8) + 56))(v54, 0, 1, v51);
  return (*(v55 + 8))(v50, v30);
}

uint64_t closure #1 in RouteInfoProfileSliceResolver.resolveRouteInfoSlice(from:requestId:pommesCandidateId:instrumentationUtil:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39738]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2234CF920;
  (*(v7 + 16))(v9 + v8, a2, v6);
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

uint64_t RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(void *a1, void *a2)
{
  v3 = v2;
  v49 = a2;
  v5 = type metadata accessor for PerformanceUtil.Ticket(0);
  v46 = *(v5 - 1);
  v6 = MEMORY[0x28223BE20](v5);
  v47 = v7;
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D474A8]) init];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v18 = v14;
  v19 = MEMORY[0x223DDF550](v15, v17);
  [v18 setAceId_];

  v20 = v18;
  [v20 setRefId_];
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [v20 setGetRoute_];

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.pommes);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v45 = a1;
    v27 = v3;
    v28 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, aBlock);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_2232BB000, v23, v24, "Starting ACE Command with ID: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = v28;
    v3 = v27;
    a1 = v45;
    MEMORY[0x223DE0F80](v30, -1, -1);
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

  else
  {
  }

  Date.init()();
  v31 = &v9[v5[5]];
  *v31 = "SiriInformationSearch/RouteInfoProfileSliceResolver.swift";
  *(v31 + 1) = 57;
  v31[16] = 2;
  *&v9[v5[6]] = 77;
  v32 = &v9[v5[7]];
  *v32 = "populateProfileSliceValue(serviceHelper:dispatchQueue:)";
  *(v32 + 1) = 55;
  v32[16] = 2;
  v33 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL, 0x80000002234DAD50);
  v34 = &v9[v5[8]];
  *v34 = v33;
  v34[1] = v35;
  v36 = v48;
  outlined init with copy of PerformanceUtil.Ticket(v9, v48);
  v37 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v38 = (v47 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  outlined init with take of PerformanceUtil.Ticket(v36, v39 + v37);
  v40 = v49;
  *(v39 + v38) = v49;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = partial apply for closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_1;
  v41 = _Block_copy(aBlock);
  v42 = v40;

  [a1 handleCommand:v20 completion:v41];
  _Block_release(v41);

  OS_dispatch_semaphore.wait()();
  return outlined destroy of PerformanceUtil.Ticket(v9);
}

uint64_t closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a3, 0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a5;
  v16[4] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_10_0;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = a1;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DDFBF0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

void closure #1 in closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v33);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_2232BB000, v7, v8, "Service helper returned an error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x223DE0F80](v10, -1, -1);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    OS_dispatch_semaphore.signal()();
  }

  else if (a3)
  {
    v15 = one-time initialization token for pommes;
    v16 = a3;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v32 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      v22 = v32;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v33);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_2232BB000, v18, v19, "RouteInfoResponse %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223DE0F80](v21, -1, -1);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    RouteInfoProfileSliceResolver.handleAceResponse(responseCommand:)(v32);
    OS_dispatch_semaphore.signal()();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.pommes);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2232BB000, v29, v30, "Ace Command returned from MAF is nil", v31, 2u);
      MEMORY[0x223DE0F80](v31, -1, -1);
    }

    OS_dispatch_semaphore.signal()();
  }
}

void RouteInfoProfileSliceResolver.handleAceResponse(responseCommand:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v46 = a1;
  v15 = [v14 aceObjectWithGenericCommand_];
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v45 = v17;
      v18 = [v17 errorCode];
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.pommes);
      v16 = v16;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = v18;
        v23 = v9;
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = [v45 &_OBJC_LABEL_PROTOCOL___CCItemFieldEnumerable + 3];

        _os_log_impl(&dword_2232BB000, v20, v21, "Command failed with error code = %ld", v24, 0xCu);
        v25 = v24;
        v9 = v23;
        v18 = v22;
        MEMORY[0x223DE0F80](v25, -1, -1);
      }

      else
      {

        v20 = v16;
      }

      if ((v18 & 0xFFFFFFFFFFFFFFFELL) == 0x5DC)
      {
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
        static Message.with(_:)();

        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.pommes);
        v32 = v16;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v47[0] = v36;
          *v35 = 136315138;
          swift_getObjectType();
          v37 = _typeName(_:qualified:)();
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v47);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_2232BB000, v33, v34, "Service helper response was of type %s, not SALocalSearchGetNavigationStatusCompleted. Cannot complete RouteInfo profile slice", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          MEMORY[0x223DE0F80](v36, -1, -1);
          MEMORY[0x223DE0F80](v35, -1, -1);

          return;
        }

        goto LABEL_26;
      }

      v27 = [v26 route];
      if (v27)
      {
        v28 = MEMORY[0x28223BE20](v27);
        *(&v45 - 2) = v28;
        *(&v45 - 1) = v4;
        v29 = v28;
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
        static Message.with(_:)();

LABEL_14:
        (*(v9 + 32))(v7, v11, v8);
        (*(v9 + 56))(v7, 0, 1, v8);
        v30 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
        swift_beginAccess();
        outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v7, v2 + v30);
        swift_endAccess();
        return;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.pommes);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2232BB000, v41, v42, "Returned command has no provided route. Cannot construct routeInfoProfileSlice", v43, 2u);
        MEMORY[0x223DE0F80](v43, -1, -1);
      }
    }
  }

LABEL_26:
  v44 = v46;
}

uint64_t closure #1 in RouteInfoProfileSliceResolver.handleAceResponse(responseCommand:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AF0]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v1 + 104))(v3, *MEMORY[0x277D39D50], v0);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
}

uint64_t closure #2 in RouteInfoProfileSliceResolver.handleAceResponse(responseCommand:)(uint64_t a1, uint64_t a2)
{
  v35[6] = a1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Google_Protobuf_Any();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v20 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RouteInfo and conformance Apple_Parsec_Siri_V2alpha_RouteInfo, MEMORY[0x277D391B8], MEMORY[0x277D391B0]);
  v21 = v27;
  static Message.with(_:)();
  v35[3] = v16;
  v35[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  v27 = v17;
  (*(v17 + 16))(boxed_opaque_existential_1, v19, v16);
  defaultAnyTypeURLPrefix.getter();
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  if (v21)
  {

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  (*(v8 + 56))(v15, v23, 1, v7);
  outlined init with copy of MediaUserStateCenter?(v15, v13, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v24 = *(v8 + 48);
  if (v24(v13, 1, v7) == 1)
  {
    Google_Protobuf_Any.init()();
    if (v24(v13, 1, v7) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v13, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v8 + 32))(v26, v13, v7);
  }

  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  (*(v29 + 104))(v28, *MEMORY[0x277D39AF0], v30);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v32 + 104))(v31, *MEMORY[0x277D39D58], v33);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
  outlined destroy of MediaUserStateCenter?(v15, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  return v27[1](v19, v16);
}

id closure #1 in static RouteInfoProfileSliceResolver.buildRouteInfoSliceValue(aceRoute:)(int a1, id a2)
{
  v3 = [a2 originalWaypointRoute];
  if (v3)
  {
    v4 = v3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_RouteInfo.originalWaypointRoute.setter();
  }

  v5 = [a2 routeId];
  if (v5)
  {
    v6 = v5;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_RouteInfo.routeID.setter();
  }

  v7 = [a2 sessionState];
  if (v7)
  {
    v8 = v7;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_RouteInfo.sessionState.setter();
  }

  v9 = [a2 etaFilter];
  if (v9)
  {
    v10 = v9;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_RouteInfo.etaFilter.setter();
  }

  result = [a2 evChargingMetadata];
  if (result)
  {
    v12 = result;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return Apple_Parsec_Siri_V2alpha_RouteInfo.evChargingMetadata.setter();
  }

  return result;
}

uint64_t RouteInfoProfileSliceResolver.deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);

  return v0;
}

uint64_t RouteInfoProfileSliceResolver.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RouteInfoProfileSliceResolver(uint64_t a1)
{
  result = type metadata singleton initialization cache for RouteInfoProfileSliceResolver;
  if (!type metadata singleton initialization cache for RouteInfoProfileSliceResolver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RouteInfoProfileSliceResolver(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of RouteInfoProfileSliceResolver.resolveRouteInfoSlice(from:requestId:pommesCandidateId:instrumentationUtil:serviceHelper:dispatchQueue:)(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(*v1 + 136);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v8[4] = *(a1 + 64);
  v9 = v2;
  v10 = v3;
  return v4(v8);
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?);
    }
  }
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t partial apply for closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PommesDialogStateManager.__allocating_init(suiteName:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  PommesDialogStateManager.init(suiteName:)(a1, a2);
  return v4;
}

uint64_t PommesDialogStateManager.init(suiteName:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0x4143C68000000000;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = MEMORY[0x223DDF550](a1, a2);
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {

    v9 = *(v3 + 16);
    *(v3 + 16) = v8;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_2232BB000, v11, v12, "Unable to create UserDefaults for POMMES dialog state management. Dialog state persistence will not work. Suite name: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x223DE0F80](v14, -1, -1);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    else
    {
    }
  }

  return v3;
}

void PommesDialogStateManager.update(_:familyState:familyStateCount:familyStateMinutes:useCaseState:useCaseStateCount:useCaseStateMinutes:expirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v218 = a8;
  v199 = a7;
  v196 = a6;
  v195 = a5;
  v201 = a4;
  v200 = a3;
  v209 = a11;
  v198 = a10;
  v197 = a9;
  v219 = v12;
  v204 = *v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v203 = &v189[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v205 = &v189[-v19];
  MEMORY[0x28223BE20](v18);
  v202 = &v189[-v20];
  v21 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  v215 = *(v21 - 8);
  v216 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v189[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v212 = &v189[-v25];
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
  v26 = MEMORY[0x28223BE20](v213);
  v214 = &v189[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v29 = &v189[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v189[-v31];
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v189[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v189[-v39];
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v189[-v42];
  MEMORY[0x28223BE20](v41);
  v224 = &v189[-v44];
  v206 = a1;
  v210 = a2;
  v220 = specialized PommesDialogStateManager.decompose(_:)(a1, a2);
  v221 = v45;
  v222 = v47;
  v223 = v46;
  if (v46)
  {
    v192 = v24;
    v194 = v37;
    outlined init with copy of MediaUserStateCenter?(v209, v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v48 = *(v34 + 48);
    v49 = v48(v32, 1, v33);
    v209 = v34;
    if (v49 == 1)
    {
      Date.init()();
      Date.addingTimeInterval(_:)();
      (*(v34 + 8))(v43, v33);
      if (v48(v32, 1, v33) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v34 + 32))(v224, v32, v33);
    }

    v211 = v29;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    v56 = v209;
    v207 = *(v209 + 16);
    v208 = v209 + 16;
    v207(v40, v224, v33);
    v57 = v223;

    v58 = v222;

    v59 = v201;

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    v62 = os_log_type_enabled(v60, v61);
    v217 = v33;
    if (v62)
    {
      v63 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v226 = v191;
      *v63 = 136316162;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v57, &v226);
      v190 = v61;
      v65 = v64;

      *(v63 + 4) = v65;
      *(v63 + 12) = 2080;
      v66 = v200;
      *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v200, v59, &v226);
      *(v63 + 22) = 2080;

      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v221, v58, &v226);

      *(v63 + 24) = v67;
      *(v63 + 32) = 2080;
      v68 = v199;
      *(v63 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v218, &v226);
      *(v63 + 42) = 2080;
      lazy protocol witness table accessor for type Date and conformance Date();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v33;
      v72 = v71;
      v193 = *(v56 + 8);
      v193(v40, v70);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v72, &v226);
      v74 = v66;

      *(v63 + 44) = v73;
      _os_log_impl(&dword_2232BB000, v60, v190, "Updating dialog states:\n    Family “%s”: %s\n    Use case “%s”: %s\n    Expiration: %s", v63, 0x34u);
      v75 = v191;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v75, -1, -1);
      MEMORY[0x223DE0F80](v63, -1, -1);

      v76 = v59;
    }

    else
    {

      v193 = *(v56 + 8);
      v193(v40, v33);
      v76 = v59;
      v74 = v200;
      v68 = v199;
    }

    PommesDialogStateManager.readStateCacheEntries()();
    v77 = [objc_allocWithZone(MEMORY[0x277D052E0]) init];
    v78 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v77 setFamily:isa state:? counts:?];

    v80 = Array._bridgeToObjectiveC()().super.isa;
    [v77 setFamily:v80 state:? minutes:?];

    v81 = Array._bridgeToObjectiveC()().super.isa;
    [v77 setUse:v81 case:? state:? counts:?];

    v201 = v78;
    v82 = Array._bridgeToObjectiveC()().super.isa;
    [v77 setUse:v82 case:? state:? minutes:?];

    v83 = objc_opt_self();
    v84 = MEMORY[0x223DDF550](v206, v210);
    v85 = MEMORY[0x223DDF550](v68, v218);
    v86 = MEMORY[0x223DDF550](v74, v76);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for StateCacheEntry, 0x277D052D8);
    v87 = Dictionary._bridgeToObjectiveC()().super.isa;

    v218 = v77;
    v88 = [v83 postprocessCatId:v84 useCaseState:v85 familyState:v86 meta:v77 cacheEntries:v87];

    v89 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v213;
    if (!*(v89 + 16))
    {
      v100 = 0;
      v99 = 0;
      v97 = 0;
      v101 = 0;
      v107 = 0;
      v93 = v202;
      goto LABEL_38;
    }

    v91 = v223;
    v92 = specialized __RawDictionaryStorage.find<A>(_:)(v220, v223);
    v93 = v202;
    if ((v94 & 1) != 0 && (v95 = [*(*(v89 + 56) + 8 * v92) state]) != 0)
    {
      v96 = v95;
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      if (!*(v89 + 16))
      {
LABEL_19:
        v100 = 0;
        v101 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v97 = 0;
      v99 = 0;
      if (!*(v89 + 16))
      {
        goto LABEL_19;
      }
    }

    v102 = specialized __RawDictionaryStorage.find<A>(_:)(v220, v91);
    if ((v103 & 1) != 0 && (v104 = [*(*(v89 + 56) + 8 * v102) meta]) != 0)
    {
      v105 = v104;
      v106 = [v104 family_state_counts];

      v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v223;
      if (!*(v89 + 16))
      {
LABEL_24:
        v100 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v101 = 0;
      if (!*(v89 + 16))
      {
        goto LABEL_24;
      }
    }

    v109 = specialized __RawDictionaryStorage.find<A>(_:)(v220, v91);
    if ((v110 & 1) != 0 && (v111 = [*(*(v89 + 56) + 8 * v109) meta]) != 0)
    {
      v112 = v111;
      v113 = [v111 family_state_minutes];

      v100 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v223;
      if (!*(v89 + 16))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v100 = 0;
      if (!*(v89 + 16))
      {
        goto LABEL_37;
      }
    }

    v114 = specialized __RawDictionaryStorage.find<A>(_:)(v220, v91);
    if (v115)
    {
      v107 = [*(*(v89 + 56) + 8 * v114) action];
      goto LABEL_38;
    }

LABEL_37:
    v107 = 0;
LABEL_38:
    v116 = v212;
    v207(&v212[*(v216 + 36)], v224, v217);
    *v116 = 0x796C696D6166;
    v116[1] = 0xE600000000000000;
    v116[2] = v97;
    v116[3] = v99;
    v116[4] = v101;
    v116[5] = v100;
    v116[6] = v107;
    if (!*(v89 + 16))
    {
      v125 = 0;
      v124 = 0;
      v122 = 0;
      v126 = 0;
      v118 = v211;
      goto LABEL_49;
    }

    v117 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v222);
    v118 = v211;
    if ((v119 & 1) != 0 && (v120 = [*(*(v89 + 56) + 8 * v117) state]) != 0)
    {
      v121 = v120;
      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v124 = v123;

      if (!*(v89 + 16))
      {
LABEL_42:
        v125 = 0;
        v126 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v122 = 0;
      v124 = 0;
      if (!*(v89 + 16))
      {
        goto LABEL_42;
      }
    }

    v127 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v222);
    if ((v128 & 1) != 0 && (v129 = [*(*(v89 + 56) + 8 * v127) meta]) != 0)
    {
      v130 = v129;
      v131 = [v129 use_case_state_counts];

      v126 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v89 + 16))
      {
LABEL_47:
        v125 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v126 = 0;
      if (!*(v89 + 16))
      {
        goto LABEL_47;
      }
    }

    v152 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v222);
    if ((v153 & 1) != 0 && (v154 = [*(*(v89 + 56) + 8 * v152) meta]) != 0)
    {
      v155 = v154;
      v156 = [v154 use_case_state_minutes];

      v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v211;
    }

    else
    {
      v125 = 0;
    }

    if (*(v89 + 16))
    {
      v177 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v222);
      if (v178)
      {
        v179 = *(*(v89 + 56) + 8 * v177);

        v132 = [v179 action];

LABEL_50:
        v133 = (v118 + *(v90 + 48));
        v134 = v216;
        v207(v133 + *(v216 + 36), v224, v217);
        *v133 = 0x65736143657375;
        v133[1] = 0xE700000000000000;
        v133[2] = v122;
        v133[3] = v124;
        v133[4] = v126;
        v133[5] = v125;
        v133[6] = v132;
        outlined init with take of PommesDialogStateManager.DialogValue(v212, v118, type metadata accessor for PommesDialogStateManager.DialogValue);
        v135 = PommesDialogStateManager.readDialogState()();
        v226 = v135;
        v136 = v214;
        outlined init with copy of MediaUserStateCenter?(v118, v214, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
        v137 = *(v90 + 48);
        v138 = *(v136 + 6);

        outlined destroy of PommesDialogStateManager.DialogValue(v136);
        outlined destroy of PommesDialogStateManager.DialogValue(&v136[v137]);
        if (v138)
        {
          outlined init with copy of MediaUserStateCenter?(v118, v136, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
          v139 = *(v90 + 48);
          outlined init with take of PommesDialogStateManager.DialogValue(v136, v93, type metadata accessor for PommesDialogStateManager.DialogValue);
          v140 = v215;
          v141 = *(v215 + 56);
          v141(v93, 0, 1, v134);
          outlined destroy of PommesDialogStateManager.DialogValue(&v136[v139]);
          v142 = (*(v140 + 48))(v93, 1, v134);
          v143 = v194;
          if (v142 == 1)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v143 = v194;
          if (!*(v135 + 16) || (v144 = v223, , v145 = specialized __RawDictionaryStorage.find<A>(_:)(v220, v144), v147 = v146, , (v147 & 1) == 0))
          {
            v134 = v216;
            v141 = *(v215 + 56);
            v141(v93, 1, 1, v216);
LABEL_62:
            outlined destroy of MediaUserStateCenter?(v93, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
            v157 = v205;
            specialized Dictionary._Variant.removeValue(forKey:)(v220, v223, v205);

            outlined destroy of MediaUserStateCenter?(v157, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
LABEL_63:
            v158 = v211;
            v159 = v214;
            outlined init with copy of MediaUserStateCenter?(v211, v214, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
            v160 = v213;
            v161 = &v159[*(v213 + 48)];
            v162 = *(v161 + 48);
            v163 = v222;

            outlined destroy of PommesDialogStateManager.DialogValue(v161);
            outlined destroy of PommesDialogStateManager.DialogValue(v159);

            if (v162)
            {

              outlined init with copy of MediaUserStateCenter?(v158, v159, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
              v164 = v203;
              outlined init with take of PommesDialogStateManager.DialogValue(&v159[*(v160 + 48)], v203, type metadata accessor for PommesDialogStateManager.DialogValue);
              v165 = v215;
              v141(v164, 0, 1, v134);
              outlined destroy of PommesDialogStateManager.DialogValue(v159);
              v166 = v163;
              v167 = v158;
              if ((*(v165 + 48))(v164, 1, v134) == 1)
              {
                goto LABEL_76;
              }

LABEL_69:
              v173 = v192;
              outlined init with take of PommesDialogStateManager.DialogValue(v164, v192, type metadata accessor for PommesDialogStateManager.DialogValue);
              v174 = v226;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v225 = v174;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v173, v221, v166, isUniquelyReferenced_nonNull_native);

              v176 = v225;
              v226 = v225;
LABEL_77:
              v181 = Date.init()();
              MEMORY[0x28223BE20](v181);
              v182 = v204;
              *&v189[-16] = v143;
              *&v189[-8] = v182;
              specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in PommesDialogStateManager.writeDialogState(_:), &v189[-32], v176);
              v183 = v219[2];
              if (v183)
              {
                type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
                v184 = v183;
                v185 = Dictionary._bridgeToObjectiveC()().super.isa;

                v186 = MEMORY[0x223DDF550](0x7453676F6C616944, 0xEB00000000657461);
                [v184 setObject:v185 forKey:v186];
              }

              else
              {
              }

              outlined destroy of MediaUserStateCenter?(v167, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
              v187 = v217;
              v188 = v193;
              v193(v224, v217);
              v188(v143, v187);

              return;
            }

            v168 = v226;
            if (v226[2])
            {
              v169 = specialized __RawDictionaryStorage.find<A>(_:)(v221, v163);
              v171 = v170;

              v167 = v211;
              if (v171)
              {
                v172 = *(v168 + 56) + *(v215 + 72) * v169;
                v164 = v203;
                outlined init with copy of PommesDialogStateManager.DialogValue(v172, v203);
                v141(v164, 0, 1, v134);
                v166 = v222;
                goto LABEL_69;
              }
            }

            else
            {

              v167 = v211;
            }

            v164 = v203;
            v141(v203, 1, 1, v134);
            v166 = v222;
LABEL_76:
            outlined destroy of MediaUserStateCenter?(v164, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
            v180 = v205;
            specialized Dictionary._Variant.removeValue(forKey:)(v221, v166, v205);

            outlined destroy of MediaUserStateCenter?(v180, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
            v176 = v226;
            goto LABEL_77;
          }

          v148 = v215;
          outlined init with copy of PommesDialogStateManager.DialogValue(*(v135 + 56) + *(v215 + 72) * v145, v93);
          v141 = *(v148 + 56);
          v134 = v216;
          v141(v93, 0, 1, v216);
        }

        v149 = v192;
        outlined init with take of PommesDialogStateManager.DialogValue(v93, v192, type metadata accessor for PommesDialogStateManager.DialogValue);
        v150 = v226;
        v151 = swift_isUniquelyReferenced_nonNull_native();
        v225 = v150;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v149, v220, v223, v151);

        v226 = v225;
        goto LABEL_63;
      }
    }

LABEL_49:

    v132 = 0;
    goto LABEL_50;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.pommes);
  v51 = v210;

  v224 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v224, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v226 = v54;
    *v53 = 136446210;
    *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v206, v51, &v226);
    _os_log_impl(&dword_2232BB000, v224, v52, "Invalid CAT ID passed to dialog state manager: %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x223DE0F80](v54, -1, -1);
    MEMORY[0x223DE0F80](v53, -1, -1);
  }

  else
  {
    v108 = v224;
  }
}