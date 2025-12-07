uint64_t GlobalResolutionService.resolveFlight(reservation:clientId:)(uint64_t a1)
{
  v2 = *(v1 + 384);
  OUTLINED_FUNCTION_58_0();
  $defer #1 () in GlobalResolutionService.resolveFlight(reservation:clientId:)(v2);

  OUTLINED_FUNCTION_127();

  return v3();
}

uint64_t $defer #1 () in GlobalResolutionService.resolveFlight(reservation:clientId:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchComponentSignposter);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "SearchTool.FlightResolution", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FlightReservation.entity.getter()
{
  type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_14();
  v77 = v1;
  v78 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_36();
  v79 = v3 - v2;
  OUTLINED_FUNCTION_78_0();
  v4 = type metadata accessor for Google_Protobuf_Timestamp();
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v76 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v8);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v80 = &v71 - v10;
  OUTLINED_FUNCTION_78_0();
  v86 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v82 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  v72 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  v81 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v75 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  v73 = v19;
  MEMORY[0x28223BE20](v20);
  v74 = &v71 - v21;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for Apple_Parsec_Siri_Context_FlightEntity();
  OUTLINED_FUNCTION_14();
  v84 = v23;
  v85 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  v83 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v71 - v26;
  v28 = type metadata accessor for Apple_Parsec_Siri_Context_SageAppEntity();
  v29 = OUTLINED_FUNCTION_114(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v30 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  OUTLINED_FUNCTION_14();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36();
  v36 = v35 - v34;
  v37 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  OUTLINED_FUNCTION_14();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_36();
  v43 = v42 - v41;
  Apple_Parsec_Siri_Context_ClientEntity.init()();
  (*(v39 + 104))(v43, *MEMORY[0x277D39408], v37);
  Apple_Parsec_Siri_Context_ClientEntity.type.setter();
  (*(v32 + 104))(v36, *MEMORY[0x277D39418], v30);
  v44 = v87;
  Apple_Parsec_Siri_Context_ClientEntity.source.setter();
  Apple_Parsec_Siri_Context_SageAppEntity.init()();
  Apple_Parsec_Siri_Context_ClientEntity.sageAppEntity.setter();
  Apple_Parsec_Siri_Context_FlightEntity.init()();
  FlightReservation.flightDesignator.getter();
  if (v45)
  {
    v46 = String.lowercased()();
    countAndFlagsBits = v46._countAndFlagsBits;
    object = v46._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  MEMORY[0x25F899E00](countAndFlagsBits, object);
  FlightReservation.flightDepartureDateComponents.getter();
  v49 = v80;
  DateComponents.date.getter();
  v50 = *(v82 + 1);
  v50(v16, v86);
  v51 = v81;
  if (__swift_getEnumTagSinglePayload(v49, 1, v81) == 1)
  {
    v82 = v27;
    outlined destroy of IntentApplication?(v49, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for answerResolution != -1)
    {
      OUTLINED_FUNCTION_4(&one-time initialization token for answerResolution);
    }

    v52 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v52, static Logging.answerResolution);
    v53 = v77;
    v54 = v78;
    v55 = v79;
    (*(v77 + 16))(v79, v44, v78);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_51_0();
      v76 = v58;
      v81 = OUTLINED_FUNCTION_49_0();
      v88 = v81;
      *v58 = 136642819;
      v59 = v72;
      LODWORD(v80) = v57;
      FlightReservation.flightDepartureDateComponents.getter();
      lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v60 = v86;
      dispatch thunk of CustomStringConvertible.description.getter();
      v50(v59, v60);
      (*(v53 + 8))(v79, v54);
      OUTLINED_FUNCTION_94();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      v62 = v76;
      *(v76 + 1) = v61;
      _os_log_impl(&dword_25D85C000, v56, v80, "FlightEntity: Missing departure date information, will provide flight's current status. %{sensitive}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      (*(v53 + 8))(v55, v54);
    }

    v27 = v82;
  }

  else
  {
    v64 = v74;
    v63 = v75;
    (*(v75 + 32))(v74, v49, v51);
    (*(v63 + 16))(v73, v64, v51);
    Google_Protobuf_Timestamp.init(date:)();
    Apple_Parsec_Siri_Context_FlightEntity.departureTimestamp.setter();
    (*(v63 + 8))(v64, v51);
  }

  v65 = FlightReservation.flightDepartureAirportCode.getter();
  if (v66)
  {
    MEMORY[0x25F899E10](v65);
  }

  v67 = v84;
  v68 = v85;
  (*(v84 + 16))(v83, v27, v85);
  v69 = Apple_Parsec_Siri_Context_ClientEntity.sageAppEntity.modify();
  Apple_Parsec_Siri_Context_SageAppEntity.flightEntity.setter();
  v69(&v88, 0);
  return (*(v67 + 8))(v27, v68);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Collection.first.getter(a1, MEMORY[0x277D39B70], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D39A88], a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchResult, a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D397D8], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277CB9DA8], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277CC9260], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277CB9DB8], a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchPropertyRequest, a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D374C8], a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchEntity, a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchPropertyResponse, a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for SearchCATEntity, a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D39AB0], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D38E40], a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x277D38E08], a2);
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_94();
}

{
  result = specialized Dictionary.Values.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_80_0();
  if (v7)
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.Values.subscript.getter(v5, v6, 0, a1);
  }
}

{
  result = specialized Dictionary.Values.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_80_0();
  if (v7)
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.Values.subscript.getter(v5, v6, 0, a1);
  }
}

unint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_65_0();
    v8 = _StringGuts.validateScalarIndex(_:)(v5, v6, v7);
    if ((v2 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_65_0();
      v12 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v9 = v8 >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v22[0] = v3;
        v22[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v12 = *(v22 + v9);
        if (*(v22 + v9) < 0)
        {
          OUTLINED_FUNCTION_67_0();
          switch(v15)
          {
            case 1:
LABEL_14:
              v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v16 = v13[1];
              v17 = v13[2];
              v18 = ((v12 & 0xF) << 12) | ((v16 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v19 = v13[1];
              v20 = v13[2];
              v17 = v13[3];
              v18 = ((v12 & 0xF) << 18) | ((v19 & 0x3F) << 12) | ((v20 & 0x3F) << 6);
LABEL_17:
              v12 = v18 & 0xFFFFFFC0 | v17 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v10 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v10 = _StringObject.sharedUTF8.getter();
        }

        v11 = *(v10 + v9);
        v12 = *(v10 + v9);
        if (v11 < 0)
        {
          OUTLINED_FUNCTION_67_0();
          switch(v14)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v22[0]) = v4 == 0;
  return v12 | ((v4 == 0) << 32);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    outlined init with copy of ExtractionRuleType();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v7, 1, v6);
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of ChatMessageRecord(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    return OUTLINED_FUNCTION_69_0(a2);
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t GlobalResolutionService.resolveLocation(address:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[73] = v6;
  v7[72] = a6;
  v7[71] = a5;
  v7[70] = a4;
  v7[69] = a3;
  v7[68] = a2;
  v7[67] = a1;
  v8 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v8);
}

uint64_t GlobalResolutionService.resolveLocation(address:clientId:app:)()
{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  *(v0 + 592) = static ContextManager.shared;

  return MEMORY[0x2822009F8](GlobalResolutionService.resolveLocation(address:clientId:app:));
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 592);
  OUTLINED_FUNCTION_89_0(v1 + 112, v0 + 496);
  memcpy((v0 + 176), (v1 + 112), 0xA0uLL);
  outlined init with copy of EagerResolutionService?();
  v2 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v2);
}

{
  OUTLINED_FUNCTION_75();
  memcpy((v0 + 16), (v0 + 176), 0xA0uLL);
  if (_s10OmniSearch0B7ContextVSgWOg((v0 + 16)) == 1)
  {
    if (one-time initialization token for answerResolution != -1)
    {
      OUTLINED_FUNCTION_4(&one-time initialization token for answerResolution);
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v1, static Logging.answerResolution);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25D85C000, v2, v3, "No location available, location resolution may fail", v4, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v5 = 0;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    v6 = *(v0 + 520);
    EntityProperty.wrappedValue.getter();
    v5 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v6 longitude:*(v0 + 528)];
    outlined destroy of IntentApplication?(v0 + 176, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  }

  *(v0 + 600) = v5;
  v7 = *(v0 + 584);
  v8 = type metadata accessor for NSUserDefaults();
  v9 = static NSUserDefaults.getDirectionsForLocationResolution.getter(v8);
  v19 = (*(*v7 + 112) + **(*v7 + 112));
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v0 + 608) = v10;
  *v10 = v11;
  v10[1] = GlobalResolutionService.resolveLocation(address:clientId:app:);
  v12 = *(v0 + 576);
  v13 = *(v0 + 568);
  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  v17 = *(v0 + 536);

  return v19(v17, v16, v15, v9 & 1, v14, v13, v5, v12);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 616) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_106();

  return v1();
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t GlobalResolutionService.resolveLocation(address:isNavigationRequest:clientId:location:app:)()
{
  OUTLINED_FUNCTION_48();
  *(v1 + 872) = v0;
  *(v1 + 864) = v2;
  *(v1 + 856) = v3;
  *(v1 + 848) = v4;
  *(v1 + 840) = v5;
  *(v1 + 173) = v6;
  *(v1 + 832) = v7;
  *(v1 + 824) = v8;
  *(v1 + 816) = v9;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v1 + 880) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 888) = v11;
  *(v1 + 896) = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v12);
  *(v1 + 904) = OUTLINED_FUNCTION_199();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10ResultItemOSgMd, &_s10OmniSearch0B10ResultItemOSgMR);
  OUTLINED_FUNCTION_114(v13);
  *(v1 + 912) = OUTLINED_FUNCTION_199();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v14);
  *(v1 + 920) = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for IntentApplication();
  *(v1 + 928) = v15;
  OUTLINED_FUNCTION_21(v15);
  *(v1 + 936) = v16;
  *(v1 + 944) = OUTLINED_FUNCTION_199();
  v17 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v17);
}

{
  OUTLINED_FUNCTION_61_0();
  v29 = v1;
  v2 = *(v1 + 928);
  v3 = *(v1 + 920);
  outlined init with copy of EagerResolutionService?();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    outlined destroy of IntentApplication?(*(v1 + 920), &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    goto LABEL_6;
  }

  v4 = (*(*(v1 + 936) + 32))(*(v1 + 944), *(v1 + 920), *(v1 + 928));
  MEMORY[0x25F898B70](v4);
  v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v6 = OUTLINED_FUNCTION_59_0();
  if (v0)
  {

LABEL_5:
    (*(*(v1 + 936) + 8))(*(v1 + 944), *(v1 + 928));
    goto LABEL_6;
  }

  v23 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  v24 = [v6 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = OUTLINED_FUNCTION_64_0();
  v26(v25);
LABEL_6:
  v7 = *(v1 + 832);
  if (*(v1 + 173) == 1)
  {
    _StringGuts.grow(_:)(22);

    strcpy(v28, "navigate to ");
    BYTE5(v28[1]) = 0;
    HIWORD(v28[1]) = -5120;
    v8 = OUTLINED_FUNCTION_45_0();
    MEMORY[0x25F89F6C0](v8);
  }

  else
  {
    v28[0] = *(v1 + 824);
    v28[1] = v7;
  }

  MEMORY[0x25F89F6C0](0x206874697720, 0xE600000000000000);
  v9 = OUTLINED_FUNCTION_32_0();
  MEMORY[0x25F89F6C0](v9);

  v10 = v28[1];
  *(v1 + 960) = v28[0];
  *(v1 + 952) = v10;
  v11 = one-time initialization token for answerResolution;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_4(&one-time initialization token for answerResolution);
  }

  v12 = type metadata accessor for Logger();
  *(v1 + 968) = v12;
  OUTLINED_FUNCTION_200(v12, static Logging.answerResolution);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_51_0();
    v16 = OUTLINED_FUNCTION_49_0();
    v28[0] = v16;
    *v15 = 136315138;
    OUTLINED_FUNCTION_32_0();
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_70_0(&dword_25D85C000, v17, v14, "Resolving location with GlobalSearch query: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_42_0();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  *(v1 + 976) = static MetricsLogger.shared;
  OUTLINED_FUNCTION_133();
  (*(v18 + 216))();
  OUTLINED_FUNCTION_133();
  v27 = (*(v19 + 184) + **(v19 + 184));
  v20 = swift_task_alloc();
  *(v1 + 984) = v20;
  *v20 = v1;
  v20[1] = GlobalResolutionService.resolveLocation(address:isNavigationRequest:clientId:location:app:);
  v21 = OUTLINED_FUNCTION_32_0();

  return v27(v21);
}

{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 992) = v7;
  *(v3 + 1000) = v8;

  if (v0)
  {

    OUTLINED_FUNCTION_127();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v11);
  }
}

{
  v66 = v0;
  v3 = v0[124];
  if (!v3)
  {
    if (one-time initialization token for search == -1)
    {
LABEL_14:
      OUTLINED_FUNCTION_200(v0[121], static Logging.search);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = OUTLINED_FUNCTION_51_0();
        v14 = OUTLINED_FUNCTION_49_0();
        __dst[0] = v14;
        *v13 = 136315138;
        OUTLINED_FUNCTION_54_0();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v13 + 4) = v15;
        OUTLINED_FUNCTION_70_0(&dword_25D85C000, v16, v12, "No valid response from Pegasus for query: %s.");
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        OUTLINED_FUNCTION_33_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
      }

      v28 = v0[122];
      lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
      OUTLINED_FUNCTION_30_0(&type metadata for EagerResolutionError);
      OUTLINED_FUNCTION_57_0();
      *v29 = v1;
      (*(*v28 + 320))();

      OUTLINED_FUNCTION_133();
      v30 = OUTLINED_FUNCTION_36_0();
      v31(v30);
      v32 = OUTLINED_FUNCTION_32_0();
      v33(v32);
      OUTLINED_FUNCTION_30_0(&type metadata for EagerResolutionError);
      *v34 = v1;
      swift_willThrow();
LABEL_26:

      OUTLINED_FUNCTION_127();
      goto LABEL_27;
    }

LABEL_49:
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_133();
  (*(v4 + 224))();

  v5 = dispatch thunk of PommesResponse.experiences.getter();
  v64 = v3;
  if (!specialized Array.count.getter(v5))
  {

LABEL_18:
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    OUTLINED_FUNCTION_200(v0[121], static Logging.search);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_51_0();
      __dst[0] = OUTLINED_FUNCTION_49_0();
      *v19 = 136315138;
      OUTLINED_FUNCTION_64_0();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v19 + 4) = v20;
      _os_log_impl(&dword_25D85C000, v17, v18, "Received unexpected experiences from Pegasus for query: %s.", v19, 0xCu);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_33_0();
    }

    else
    {
    }

    v21 = v0[122];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_29_0(&type metadata for EagerResolutionError);
    OUTLINED_FUNCTION_79_0();
    *v22 = 1;
    (*(*v21 + 320))();

    OUTLINED_FUNCTION_133();
    v23 = OUTLINED_FUNCTION_45_0();
    v24(v23);
    v25 = OUTLINED_FUNCTION_54_0();
    v26(v25);
    OUTLINED_FUNCTION_29_0(&type metadata for EagerResolutionError);
    *v27 = 1;
    swift_willThrow();

    goto LABEL_26;
  }

  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_49;
  }

  v6 = MEMORY[0x25F89FFD0](0, v5);
LABEL_6:
  v7 = v6;

  type metadata accessor for GenericExperience();
  if (!swift_dynamicCastClass())
  {
LABEL_17:

    goto LABEL_18;
  }

  if (PommesResponse.metadataDomainName.getter() != 1936744813 || v8 != 0xE400000000000000)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

LABEL_31:

  static GlobalSearchResponseProcessor.makeGeoLocations(experience:)();
  if (*(v37 + 16))
  {
    memcpy(v0 + 42, (v37 + 32), 0x9DuLL);
    outlined init with copy of GeoLocation((v0 + 42), (v0 + 62));

    v39 = v0[45];
    v38 = v0[46];
    memcpy(v0 + 22, v0 + 42, 0x9DuLL);
    _s10OmniSearch11GeoLocationVSgWOi_();
    memcpy(v0 + 2, v0 + 22, 0x9DuLL);
  }

  else
  {

    _s10OmniSearch11GeoLocationVSgWOi0_(v0 + 2);
    v38 = v0[104];
    v39 = v0[103];
  }

  type metadata accessor for SearchResultItem(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  memcpy(v0 + 82, v0 + 2, 0x9DuLL);
  v63 = v39;
  if (_s10OmniSearch11GeoLocationVSgWOg((v0 + 82)) == 1)
  {
    v62 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    memcpy(__dst, v0 + 82, 0x9DuLL);
    v62 = GeoLocation.metadata.getter();
    outlined destroy of IntentApplication?((v0 + 2), &_s10OmniSearch11GeoLocationVSgMd, &_s10OmniSearch11GeoLocationVSgMR);
  }

  type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = dispatch thunk of PommesResponse.experiences.getter();
  v49 = specialized Array.count.getter(v48);
  if (v49)
  {
    v50 = v49;
    __dst[0] = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v50 < 0)
    {
      __break(1u);
      return result;
    }

    v51 = 0;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F89FFD0](v51, v48);
      }

      else
      {
        v52 = *(v48 + 8 * v51 + 32);
      }

      ++v51;
      type metadata accessor for DialogExperience(0);
      OUTLINED_FUNCTION_53_0();
      swift_allocObject();
      OUTLINED_FUNCTION_47_0();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v50 != v51);
    v53 = v38;

    v54 = __dst[0];
  }

  else
  {
    v53 = v38;

    v54 = MEMORY[0x277D84F90];
  }

  v61 = v54;
  v55 = v0[102];
  v56 = type metadata accessor for ResolvedInfo(0);
  PommesResponse.pommesContext.getter();
  type metadata accessor for PommesContext();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);

  *v55 = v63;
  v55[1] = v53;
  outlined init with take of (Int, SearchCATEntity)();
  *(v55 + v56[6]) = v62;
  outlined init with take of (Int, SearchCATEntity)();
  *(v55 + v56[8]) = v61;
  *(v55 + v56[9]) = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_106();
LABEL_27:

  return v35();
}

uint64_t GlobalResolutionService.resolveMedia(name:query:clientId:app:)()
{
  OUTLINED_FUNCTION_48();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[11] = v7;
  v1[12] = v8;
  v1[10] = v9;
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[19] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v1[22] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for IntentApplication();
  v1[23] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[24] = v14;
  v1[25] = OUTLINED_FUNCTION_199();
  v15 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v15);
}

{
  OUTLINED_FUNCTION_61_0();
  v2 = v1[14];
  if (v2)
  {
    v3 = v1[13];
  }

  else
  {
    MEMORY[0x25F89F6C0](v1[11], v1[12]);
    v3 = 0x2079616C50;
    v2 = 0xE500000000000000;
  }

  v4 = v1[22];
  v5 = v1[23];
  v1[8] = v3;
  v1[9] = v2;
  outlined init with copy of EagerResolutionService?();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v6 = v1[22];

    outlined destroy of IntentApplication?(v6, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    goto LABEL_11;
  }

  (*(v1[24] + 32))(v1[25], v1[22], v1[23]);

  MEMORY[0x25F898B70](v7);
  v8 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v9 = OUTLINED_FUNCTION_59_0();
  if (v0)
  {

LABEL_8:
    (*(v1[24] + 8))(v1[25], v1[23]);
    goto LABEL_11;
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = [v9 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = OUTLINED_FUNCTION_63_0();
  MEMORY[0x25F89F6C0](v12);

  MEMORY[0x25F89F6C0](544108320, 0xE400000000000000);

  v13 = OUTLINED_FUNCTION_54_0();
  v14(v13);
LABEL_11:
  if (one-time initialization token for answerResolution != -1)
  {
    OUTLINED_FUNCTION_4(&one-time initialization token for answerResolution);
  }

  v15 = type metadata accessor for Logger();
  v1[26] = __swift_project_value_buffer(v15, static Logging.answerResolution);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_88_0(v17))
  {
    v18 = OUTLINED_FUNCTION_51_0();
    v28 = OUTLINED_FUNCTION_49_0();
    *v18 = 136315138;
    OUTLINED_FUNCTION_89_0((v1 + 8), (v1 + 5));

    OUTLINED_FUNCTION_63_0();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v18 + 4) = v19;
    _os_log_impl(&dword_25D85C000, v16, v17, "Resolving media item with GlobalSearch query: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_42_0();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  v1[27] = static MetricsLogger.shared;
  OUTLINED_FUNCTION_133();
  (*(v20 + 216))();
  OUTLINED_FUNCTION_89_0((v1 + 8), (v1 + 2));
  v21 = v1[9];
  v1[28] = v1[8];
  v1[29] = v21;
  OUTLINED_FUNCTION_133();
  v23 = *(v22 + 184);

  v27 = (v23 + *v23);
  v24 = swift_task_alloc();
  v1[30] = v24;
  *v24 = v1;
  v24[1] = GlobalResolutionService.resolveMedia(name:query:clientId:app:);
  v25 = OUTLINED_FUNCTION_32_0();

  return v27(v25);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  *v4 = *v1;
  v3[31] = v5;
  v3[32] = v6;
  v3[33] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t GlobalResolutionService.resolveMedia(name:query:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v18 = v16[31];
  if (v18)
  {
    OUTLINED_FUNCTION_133();
    (*(v19 + 224))();

    v20 = dispatch thunk of PommesResponse.experiences.getter();
    result = specialized Array.count.getter(v20);
    if (result)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25F89FFD0](0, v20);
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_31;
        }

        v22 = *(v20 + 32);
      }

      v23 = v22;

      type metadata accessor for AudioExperience();
      if (swift_dynamicCastClass())
      {
        v24 = dispatch thunk of PommesResponse.experiences.getter();
        v25 = specialized Array.count.getter(v24);
        if (!v25)
        {

          a11 = MEMORY[0x277D84F90];
LABEL_25:
          a9 = v16[22];
          a10 = v16[21];
          v63 = v16[10];
          type metadata accessor for AudioPluginProcessor();
          AudioPluginProcessor.__allocating_init()();
          dispatch thunk of PommesResponse.clientResults.getter();
          OUTLINED_FUNCTION_64_0();
          v64 = dispatch thunk of AudioPluginProcessor.process(experience:clientResults:)();

          v65 = type metadata accessor for ResolvedInfo(0);
          type metadata accessor for SearchResultItem(0);
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
          type metadata accessor for URL();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
          type metadata accessor for PommesContext();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);

          *v63 = 0xD000000000000012;
          v63[1] = 0x800000025DBEF0C0;
          *(v63 + v65[6]) = MEMORY[0x277D84F98];
          *(v63 + v65[8]) = a11;
          *(v63 + v65[9]) = v64;

          OUTLINED_FUNCTION_106();
          goto LABEL_26;
        }

        v26 = v25;
        a12 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v26 & 0x8000000000000000) == 0)
        {
          v27 = 0;
          do
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F89FFD0](v27, v24);
            }

            else
            {
              v28 = *(v24 + 8 * v27 + 32);
            }

            ++v27;
            type metadata accessor for DialogExperience(0);
            OUTLINED_FUNCTION_53_0();
            swift_allocObject();
            OUTLINED_FUNCTION_47_0();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            OUTLINED_FUNCTION_72_0();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            OUTLINED_FUNCTION_72_0();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v26 != v27);

          a11 = a12;
          goto LABEL_25;
        }

LABEL_31:
        __break(1u);
        return result;
      }
    }

    else
    {
    }

    v42 = v18;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    a11 = v42;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      a12 = swift_slowAlloc();
      *v45 = 136315394;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v45 + 4) = v46;
      *(v45 + 12) = 2080;
      v47 = dispatch thunk of PommesResponse.experiences.getter();
      v48 = type metadata accessor for Experience();
      MEMORY[0x25F89F8A0](v47, v48);
      OUTLINED_FUNCTION_82_0();

      v49 = OUTLINED_FUNCTION_71_0();

      *(v45 + 14) = v49;
      OUTLINED_FUNCTION_86_0(&dword_25D85C000, v50, v51, "Received unexpected type from Pegasus for query: %s. %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_37_0();
    }

    v52 = v16[27];
    v54 = v16[20];
    v53 = v16[21];
    v55 = v16[19];
    v57 = v16[15];
    v56 = v16[16];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    v58 = swift_allocError();
    *v59 = 1;
    (*(*v52 + 320))();

    OUTLINED_FUNCTION_133();
    (*(v60 + 232))(v57, v56, v53);
    (*(v54 + 8))(v53, v55);
    v61 = swift_allocError();
    OUTLINED_FUNCTION_87_0(v61, v62);
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v30))
    {
      v31 = OUTLINED_FUNCTION_51_0();
      a12 = OUTLINED_FUNCTION_49_0();
      *v31 = 136315138;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v31 + 4) = v32;
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v33, v30, "No valid response from Pegasus for query: %s.");
      __swift_destroy_boxed_opaque_existential_1Tm(a12);
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_42_0();
    }

    v34 = v16[27];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_29_0(&type metadata for EagerResolutionError);
    OUTLINED_FUNCTION_79_0();
    *v35 = 1;
    (*(*v34 + 320))();

    OUTLINED_FUNCTION_133();
    v36 = OUTLINED_FUNCTION_45_0();
    v37(v36);
    v38 = OUTLINED_FUNCTION_32_0();
    v39(v38);
    v40 = OUTLINED_FUNCTION_29_0(&type metadata for EagerResolutionError);
    OUTLINED_FUNCTION_87_0(v40, v41);
  }

  OUTLINED_FUNCTION_127();
LABEL_26:
  OUTLINED_FUNCTION_115();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t GlobalResolutionService.resolveMediaURL(_:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v1[11] = *v0;
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[12] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for URL();
  v1[15] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_160();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v10);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v5 = v4;
  *(v2 + 192) = v6;
  *(v2 + 200) = v7;

  if (v0)
  {

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v10);
  }
}

uint64_t GlobalResolutionService.resolveMediaURL(_:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v16[2] = URL.absoluteString.getter();
  v16[3] = v17;
  v16[4] = 0x70612E636973756DLL;
  v16[5] = 0xEB00000000656C70;
  lazy protocol witness table accessor for type String and conformance String();
  v18 = StringProtocol.contains<A>(_:)();

  if (v18)
  {
    v19 = URL.pathComponents.getter();
    specialized BidirectionalCollection.last.getter(v19);

    if (one-time initialization token for answerResolution != -1)
    {
      OUTLINED_FUNCTION_4(&one-time initialization token for answerResolution);
    }

    v20 = type metadata accessor for Logger();
    v16[20] = OUTLINED_FUNCTION_200(v20, static Logging.answerResolution);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_51_0();
      a12 = OUTLINED_FUNCTION_49_0();
      *v23 = 136315138;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v23 + 4) = v24;
      _os_log_impl(&dword_25D85C000, v21, v22, "Resolving media URL with clientEntities: %s", v23, 0xCu);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_33_0();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR);
    v44 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    OUTLINED_FUNCTION_21(v44);
    OUTLINED_FUNCTION_74_0();
    v45 = swift_allocObject();
    v16[21] = v45;
    *(v45 + 16) = xmmword_25DBC8180;
    static GlobalResolutionService.constructMediaClientEntity(url:)(v45 + v22);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
    }

    v16[22] = static MetricsLogger.shared;
    OUTLINED_FUNCTION_133();
    (*(v46 + 216))();
    OUTLINED_FUNCTION_133();
    v66 = v47 + 184;
    v67 = *(v47 + 184) + **(v47 + 184);
    v48 = swift_task_alloc();
    v16[23] = v48;
    *v48 = v16;
    v48[1] = GlobalResolutionService.resolveMediaURL(_:clientId:);
    OUTLINED_FUNCTION_115();

    return v54(v49, v50, v51, v52, v53, v54, v55, v56, a9, v66, v67, a12, a13, a14, a15, a16);
  }

  else
  {
    v25 = v16[15];
    v26 = URL.absoluteString.getter();
    v28 = v27;
    v29 = type metadata accessor for ResolvedInfo(0);
    type metadata accessor for SearchResultItem(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    OUTLINED_FUNCTION_65_0();
    v34();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v25);
    v38 = v16[6];
    type metadata accessor for PommesContext();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    *v38 = v26;
    v38[1] = v28;
    *(v38 + v29[6]) = MEMORY[0x277D84F98];
    v43 = MEMORY[0x277D84F90];
    *(v38 + v29[8]) = MEMORY[0x277D84F90];
    *(v38 + v29[9]) = v43;

    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_115();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t GlobalResolutionService.resolveMediaURL(_:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v20 = v16[24];
  if (v20)
  {
    OUTLINED_FUNCTION_133();
    (*(v21 + 224))();

    v22 = dispatch thunk of PommesResponse.experiences.getter();
    result = specialized Array.count.getter(v22);
    if (result)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x25F89FFD0](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v24 = *(v22 + 32);
      }

      v25 = v24;

      type metadata accessor for AudioExperience();
      if (swift_dynamicCastClass())
      {
        v26 = dispatch thunk of PommesResponse.experiences.getter();
        v27 = specialized Array.count.getter(v26);
        a11 = v25;
        if (!v27)
        {

          v31 = MEMORY[0x277D84F90];
LABEL_27:
          a10 = v31;
          v71 = v16[15];
          v72 = v16[16];
          v73 = v16[6];
          v74 = v16[7];
          type metadata accessor for AudioPluginProcessor();
          AudioPluginProcessor.__allocating_init()();
          dispatch thunk of PommesResponse.clientResults.getter();
          a9 = dispatch thunk of AudioPluginProcessor.process(experience:clientResults:)();

          v75 = URL.absoluteString.getter();
          v77 = v76;

          v78 = type metadata accessor for ResolvedInfo(0);
          type metadata accessor for SearchResultItem(0);
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
          (*(v72 + 16))(v73 + v78[7], v74, v71);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v83, v84, v85, v71);
          v86 = v16[6];
          type metadata accessor for PommesContext();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
          *v86 = v75;
          v86[1] = v77;
          *(v86 + v78[6]) = MEMORY[0x277D84F98];
          *(v86 + v78[8]) = a10;
          *(v86 + v78[9]) = a9;

          OUTLINED_FUNCTION_106();
          goto LABEL_28;
        }

        v28 = v27;
        a12 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v28 & 0x8000000000000000) == 0)
        {
          v29 = 0;
          do
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F89FFD0](v29, v26);
            }

            else
            {
              v30 = *(v26 + 8 * v29 + 32);
            }

            ++v29;
            type metadata accessor for DialogExperience(0);
            OUTLINED_FUNCTION_53_0();
            swift_allocObject();
            OUTLINED_FUNCTION_47_0();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            OUTLINED_FUNCTION_72_0();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            OUTLINED_FUNCTION_72_0();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v28 != v29);

          v31 = a12;
          goto LABEL_27;
        }

LABEL_33:
        __break(1u);
        return result;
      }
    }

    else
    {
    }

    (*(v16[16] + 16))(v16[19], v16[7], v16[15]);
    v49 = v20;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    a11 = v49;
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      a12 = a10;
      *v52 = 136315394;
      OUTLINED_FUNCTION_8_0();
      lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(v53, v54, MEMORY[0x277CC9290]);
      dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v55;
      v56 = OUTLINED_FUNCTION_38_0();
      v57(v56);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v52 + 4) = v58;
      *(v52 + 12) = 2080;
      v59 = dispatch thunk of PommesResponse.experiences.getter();
      v60 = type metadata accessor for Experience();
      MEMORY[0x25F89F8A0](v59, v60);
      OUTLINED_FUNCTION_82_0();

      v61 = OUTLINED_FUNCTION_71_0();

      *(v52 + 14) = v61;
      _os_log_impl(&dword_25D85C000, v50, v51, "Received unexpected type from Pegasus for media URL: %s. \n%s", v52, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      v62 = OUTLINED_FUNCTION_38_0();
      v63(v62);
    }

    v64 = v16[22];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_29_0(&type metadata for EagerResolutionError);
    OUTLINED_FUNCTION_79_0();
    *v65 = 1;
    (*(*v64 + 320))();

    OUTLINED_FUNCTION_133();
    v66 = OUTLINED_FUNCTION_45_0();
    v67(v66);
    v68 = OUTLINED_FUNCTION_54_0();
    v69(v68);
    OUTLINED_FUNCTION_29_0(&type metadata for EagerResolutionError);
    *v70 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v16[16] + 16))(v16[18], v16[7], v16[15]);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v16[18];
    v36 = v16[15];
    v37 = v16[16];
    if (v34)
    {
      v38 = OUTLINED_FUNCTION_51_0();
      a12 = OUTLINED_FUNCTION_49_0();
      *v38 = 136315138;
      OUTLINED_FUNCTION_8_0();
      lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(v39, v40, MEMORY[0x277CC9290]);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_82_0();
      (*(v37 + 8))(v35, v36);
      v41 = OUTLINED_FUNCTION_71_0();

      *(v38 + 4) = v41;
      _os_log_impl(&dword_25D85C000, v32, v33, "No valid response from Pegasus for media URL: %s.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(a12);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();
    }

    else
    {

      (*(v37 + 8))(v35, v36);
    }

    v42 = v16[22];
    lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError();
    OUTLINED_FUNCTION_30_0(&type metadata for EagerResolutionError);
    OUTLINED_FUNCTION_57_0();
    *v43 = v17;
    (*(*v42 + 320))();

    OUTLINED_FUNCTION_133();
    v44 = OUTLINED_FUNCTION_36_0();
    v45(v44);
    v46 = OUTLINED_FUNCTION_32_0();
    v47(v46);
    OUTLINED_FUNCTION_30_0(&type metadata for EagerResolutionError);
    *v48 = v17;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_127();
LABEL_28:
  OUTLINED_FUNCTION_115();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_65_0();
  String.index(before:)();
  OUTLINED_FUNCTION_65_0();
  return String.subscript.getter();
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

double specialized BidirectionalCollection.last.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return OUTLINED_FUNCTION_69_0(a2);
  }

  outlined init with copy of Any(a1 + 32 * v2, a2);
  return result;
}

uint64_t static GlobalResolutionService.constructMediaClientEntity(url:)@<X0>(uint64_t a1@<X8>)
{
  v44[1] = a1;
  type metadata accessor for Siri_Nlu_External_UsoGraph();
  OUTLINED_FUNCTION_14();
  v45 = v2;
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  v50 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v49 = v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  OUTLINED_FUNCTION_114(v8);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  type metadata accessor for UsoEntitySpan();
  OUTLINED_FUNCTION_14();
  v54 = v13;
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v47 = v15 - v14;
  OUTLINED_FUNCTION_78_0();
  v16 = type metadata accessor for SpanProperty();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  URL.absoluteString.getter();
  v59 = 1;
  v58 = 1;
  SpanProperty.init(key:valueString:valueInt:valueFloat:)();
  type metadata accessor for UsoEntitySpan.SpanSource();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  type metadata accessor for MatchInfo();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMR);
  OUTLINED_FUNCTION_74_0();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25DBC8180;
  v48 = v17;
  v30 = *(v17 + 16);
  v51 = v20;
  v52 = v16;
  v30(v29 + v17, v20, v16);
  v57 = 1;
  v56 = 1;
  v31 = v47;
  UsoEntitySpan.init(originAppId:sourceComponent:label:matchInfo:properties:startIndex:endIndex:alternatives:originEntityId:)();
  type metadata accessor for UsoTaskBuilder_noVerb_common_MediaItem();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  v32 = UsoTaskBuilder_noVerb_common_MediaItem.init()();
  type metadata accessor for UsoEntityBuilder_common_MediaItem();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  UsoEntityBuilder_common_MediaItem.init()();
  dispatch thunk of UsoEntityBuilder_common_MediaItem.setName(value:)();
  dispatch thunk of UsoBuilder.addEntitySpan(entitySpan:)();
  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_25DBC8190;
  *(v33 + 32) = v32;
  type metadata accessor for UsoBuilderOptions();
  v34 = v49;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);

  MEMORY[0x25F89A6C0](v33, v34);

  outlined destroy of IntentApplication?(v34, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v39 = v50;
  v40 = v53;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (v40)
  {

    (*(v54 + 8))(v31, v55);
    return (*(v48 + 8))(v51, v52);
  }

  else
  {
    v42 = v48;
    v43 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    v53 = v44;
    MEMORY[0x28223BE20](v43);
    lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity, MEMORY[0x277D39438], MEMORY[0x277D39430]);
    static Message.with(_:)();

    (*(v54 + 8))(v31, v55);
    (*(v42 + 8))(v51, v52);
    return (*(v45 + 8))(v39, v46);
  }
}

uint64_t closure #1 in static GlobalResolutionService.constructMediaClientEntity(url:)(uint64_t a1)
{
  v11[1] = a1;
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Siri_Nlu_External_UsoGraph();
  lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
  result = Message.serializedData(partial:)();
  if (!v1)
  {
    Apple_Parsec_Siri_Context_ClientEntity.usoGraph.setter();
    (*(v7 + 104))(v9, *MEMORY[0x277D39428], v6);
    Apple_Parsec_Siri_Context_ClientEntity.source.setter();
    (*(v3 + 104))(v5, *MEMORY[0x277D39408], v2);
    return Apple_Parsec_Siri_Context_ClientEntity.type.setter();
  }

  return result;
}

uint64_t GlobalResolutionService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for EagerResolutionService.resolveFlight(reservation:clientId:) in conformance GlobalResolutionService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 96) + **(**v4 + 96));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for EagerResolutionService.resolveLocation(address:clientId:app:) in conformance GlobalResolutionService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 104) + **(**v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for EagerResolutionService.resolveMedia(name:query:clientId:app:) in conformance GlobalResolutionService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(**v8 + 120) + **(**v8 + 120));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for EagerResolutionService.resolveMediaURL(_:clientId:) in conformance GlobalResolutionService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 128) + **(**v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v12(a1, a2, a3, a4);
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x25F89F4C0](a1);

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

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

unint64_t lazy protocol witness table accessor for type EagerResolutionError and conformance EagerResolutionError()
{
  result = lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError;
  if (!lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError;
  if (!lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EagerResolutionError and conformance EagerResolutionError);
  }

  return result;
}

uint64_t outlined destroy of ExtractionRuleType(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of SearchResult()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

uint64_t _s10OmniSearch11GeoLocationVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of IntentApplication?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_17();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for EagerResolutionError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for EagerResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of EagerResolutionService.resolveFlight(reservation:clientId:)()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_59();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of EagerResolutionService.resolveLocation(address:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_59();
  v29 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_23(v15);
  *v16 = v17;
  v16[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_83_0();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v29, a12, a13, a14);
}

uint64_t dispatch thunk of EagerResolutionService.resolveMedia(name:query:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v36 = v19;
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_59();
  v35 = v20 + *v20;
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_23(v21);
  *v22 = v23;
  v22[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_115();

  return v32(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v35, v36, v18, a14, a15, a16, a17, a18);
}

uint64_t dispatch thunk of EagerResolutionService.resolveMediaURL(_:clientId:)()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_59();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveFlight(reservation:clientId:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_133();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveLocation(address:clientId:app:)()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_133();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveLocation(address:isNavigationRequest:clientId:location:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_133();
  v29 = v14 + 112;
  v30 = *(v14 + 112) + **(v14 + 112);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_23(v15);
  *v16 = v17;
  v16[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_83_0();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, a9, v29, v30, a12, a13, a14);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveMedia(name:query:clientId:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_133();
  v29 = v14 + 120;
  v30 = *(v14 + 120) + **(v14 + 120);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_23(v15);
  *v16 = v17;
  v16[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_83_0();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, a9, v29, v30, a12, a13, a14);
}

uint64_t dispatch thunk of GlobalResolutionService.resolveMediaURL(_:clientId:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_133();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_0(v1);

  return v4(v3);
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    OUTLINED_FUNCTION_62_0(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x25F89F700](15, a1 >> 16);
    OUTLINED_FUNCTION_62_0(v3);
    return v4 | 8;
  }
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x2821FD070]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = _StringObject.sharedUTF8.getter();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Dictionary.Values.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
  }

LABEL_8:
  __break(1u);
  return result;
}

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
    v4 = *(*(a4 + 56) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of ChatMessageRecord(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type FlightSnippet and conformance FlightSnippet(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of ExtractionRuleType()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return type metadata accessor for ResolvedInfo(0);
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_33_0()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_37_0()
{

  JUMPOUT(0x25F8A1050);
}

void OUTLINED_FUNCTION_40_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x25F8A1050);
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x25F8A1050);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return DialogExperience.init(_:card:)(v0, 0);
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_59_0()
{

  return @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v1, v0, 0);
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

double OUTLINED_FUNCTION_69_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_70_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
}

void OUTLINED_FUNCTION_86_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_87_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

BOOL OUTLINED_FUNCTION_88_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t InstantAnswerExtraction.extractInfo(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SearchResultItem(0);
  v0[4] = v3;
  OUTLINED_FUNCTION_114(v3);
  v0[5] = OUTLINED_FUNCTION_199();
  v4 = type metadata accessor for FlightReservation();
  v0[6] = v4;
  OUTLINED_FUNCTION_21(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_199();
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6);
}

{
  outlined init with copy of SearchResultItem(v0[3], v0[5], type metadata accessor for SearchResultItem);
  if (swift_getEnumCaseMultiPayload() == 16)
  {
    v2 = v0[7];
    v1 = v0[8];
    v3 = v0[6];
    v4 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMd, &_s15OmniSearchTypes17FlightReservationV8document_Say0aB016DialogExperienceCG11experiencestMR);

    v5 = *(v2 + 32);
    v6 = OUTLINED_FUNCTION_16_0();
    v5(v6);
    (v5)(v4, v1, v3);
    v7 = type metadata accessor for ExtractionRuleType(0);
    swift_storeEnumTagMultiPayload();
    v8 = 0;
  }

  else
  {
    outlined destroy of SearchResultItem(v0[5], type metadata accessor for SearchResultItem);
    v7 = type metadata accessor for ExtractionRuleType(0);
    v8 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0[2], v8, 1, v7);

  OUTLINED_FUNCTION_106();

  return v9();
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance InstantAnswerExtraction()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance InstantAnswerExtraction;

  return InstantAnswerExtraction.extractInfo(query:result:assistantLocale:)();
}

uint64_t CalendarLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[12] = v1;
  v0[13] = v2;
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v0[14] = OUTLINED_FUNCTION_199();
  v5 = type metadata accessor for CalendarEvent();
  v0[15] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[16] = v6;
  v0[17] = OUTLINED_FUNCTION_199();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

uint64_t CalendarLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1)
{
  SearchResultItem.associatedValue.getter((v1 + 16));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if ((OUTLINED_FUNCTION_18_1(v2) & 1) == 0)
  {
    v23 = *(v1 + 112);
    v24 = OUTLINED_FUNCTION_58();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    outlined destroy of IntentApplication?(v23, &_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
LABEL_8:
    type metadata accessor for ExtractionRuleType(0);
    v28 = OUTLINED_FUNCTION_58();
    goto LABEL_11;
  }

  v3 = *(v1 + 120);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  v9 = CalendarEvent.locationName.getter();
  if (!v10)
  {
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
    goto LABEL_8;
  }

  v11 = v9;
  v12 = v10;
  v13 = type metadata accessor for NSUserDefaults();
  v14 = static NSUserDefaults.needAnswerMatchWithLocationResolution.getter(v13);
  v16 = *(v1 + 128);
  v15 = *(v1 + 136);
  v17 = *(v1 + 120);
  if (v14)
  {
    *(v1 + 56) = String.lowercased()();
    *(v1 + 72) = String.lowercased()();
    lazy protocol witness table accessor for type String and conformance String();
    v18 = StringProtocol.contains<A>(_:)();

    (*(v16 + 8))(v15, v17);
    if ((v18 & 1) == 0)
    {
      type metadata accessor for ExtractionRuleType(0);
      v19 = OUTLINED_FUNCTION_58();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);

      goto LABEL_12;
    }
  }

  else
  {
    (*(v16 + 8))(*(v1 + 136), *(v1 + 120));
  }

  v32 = *(v1 + 88);
  *v32 = v11;
  v32[1] = v12;
  v33 = type metadata accessor for ExtractionRuleType(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_44_0();
  v31 = v33;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
LABEL_12:

  OUTLINED_FUNCTION_106();

  return v34();
}

uint64_t protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance CalendarLocationAnswer()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_1(v1);

  return CalendarLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
}

uint64_t HotelLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[7] = v1;
  v0[8] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  OUTLINED_FUNCTION_114(v3);
  v0[9] = OUTLINED_FUNCTION_199();
  v4 = type metadata accessor for HotelReservation();
  v0[10] = v4;
  OUTLINED_FUNCTION_21(v4);
  v0[11] = v5;
  v0[12] = OUTLINED_FUNCTION_199();
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6);
}

uint64_t HotelLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1)
{
  SearchResultItem.associatedValue.getter(v1 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1(v2))
  {
    v4 = v1[11];
    v3 = v1[12];
    v5 = v1[9];
    v6 = v1[10];
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
    (*(v4 + 32))(v3, v5, v6);
    v10 = HotelReservation.hotelReservationForAddress.getter();
    v12 = v11;
    (*(v4 + 8))(v3, v6);
    if (v12)
    {
      v13 = v1[7];
      *v13 = v10;
      v13[1] = v12;
      v14 = type metadata accessor for ExtractionRuleType(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_44_0();
      v18 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v1[9];
    v20 = OUTLINED_FUNCTION_58();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    outlined destroy of IntentApplication?(v19, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  }

  type metadata accessor for ExtractionRuleType(0);
  v15 = OUTLINED_FUNCTION_58();
LABEL_6:
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);

  OUTLINED_FUNCTION_106();

  return v24();
}

uint64_t protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance HotelLocationAnswer;

  return HotelLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
}

{
  OUTLINED_FUNCTION_48();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[23] = v1;
  v0[24] = v2;
  v0[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17WalletTransactionVSgMd, &_s15OmniSearchTypes17WalletTransactionVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v0[25] = OUTLINED_FUNCTION_199();
  v5 = type metadata accessor for WalletTransaction();
  v0[26] = v5;
  OUTLINED_FUNCTION_21(v5);
  v0[27] = v6;
  v0[28] = OUTLINED_FUNCTION_199();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

void WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1)
{
  SearchResultItem.associatedValue.getter(v1 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (!swift_dynamicCast())
  {
    v33 = v1[25];
    v34 = v1[22];
    v35 = OUTLINED_FUNCTION_58();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    outlined destroy of IntentApplication?(v33, &_s15OmniSearchTypes17WalletTransactionVSgMd, &_s15OmniSearchTypes17WalletTransactionVSgMR);
    v39 = type metadata accessor for ExtractionRuleType(0);
    v40 = v34;
    goto LABEL_21;
  }

  v2 = v1[26];
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = OUTLINED_FUNCTION_16_0();
  v7(v6);
  v8 = type metadata accessor for NSUserDefaults();
  if (static NSUserDefaults.needAnswerMatchWithLocationResolution.getter(v8))
  {
    v9 = v1[23];
    v10 = *(v9 + 24);
    v1[17] = *(v9 + 16);
    v1[18] = v10;

    v11 = WalletTransaction.city.getter();
    v13 = v12 ? v11 : 0;
    v14 = v12 ? v12 : 0xE000000000000000;
    v1[19] = v13;
    v1[20] = v14;
    lazy protocol witness table accessor for type String and conformance String();
    v15 = StringProtocol.contains<A>(_:)();

    if ((v15 & 1) == 0)
    {
      v52 = v1[22];
      (*(v1[27] + 8))(v1[28], v1[26]);
      v39 = type metadata accessor for ExtractionRuleType(0);
      v40 = v52;
LABEL_21:
      v41 = 1;
      v42 = 1;
LABEL_23:
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);

      OUTLINED_FUNCTION_106();

      v51();
      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8400;
  *(inited + 32) = WalletTransaction.city.getter();
  *(inited + 40) = v17;
  *(inited + 48) = WalletTransaction.stateOrProvince.getter();
  *(inited + 56) = v18;
  v19 = WalletTransaction.country.getter();
  v20 = 0;
  *(inited + 64) = v19;
  *(inited + 72) = v21;
  v22 = MEMORY[0x277D84F90];
LABEL_11:
  v23 = v20 - 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v23 == 2)
    {
      v44 = v1[27];
      v43 = v1[28];
      v45 = v1[26];
      v46 = v1[22];
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSSSgMd, &_sSSSgMR);
      v1[21] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v47 = BidirectionalCollection<>.joined(separator:)();
      v49 = v48;

      (*(v44 + 8))(v43, v45);
      *v46 = v47;
      v46[1] = v49;
      v50 = type metadata accessor for ExtractionRuleType(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_44_0();
      v39 = v50;
      goto LABEL_23;
    }

    if (++v23 > 2)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *(inited + v24);
    v24 += 16;
    if (v26)
    {
      v27 = *(inited + v25 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
        v22 = v31;
      }

      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1);
        v22 = v32;
      }

      v20 = v23 + 1;
      *(v22 + 16) = v29 + 1;
      v30 = v22 + 16 * v29;
      *(v30 + 32) = v27;
      *(v30 + 40) = v26;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance WalletLocationAnswer()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_1(v1);

  return WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
}

uint64_t FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v0[18] = v1;
  v0[19] = v2;
  v0[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v0[20] = OUTLINED_FUNCTION_199();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  OUTLINED_FUNCTION_114(v5);
  v0[21] = OUTLINED_FUNCTION_199();
  v6 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_114(v6);
  v0[22] = OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16FlightDesignatorVSgMd, &_s15OmniSearchTypes16FlightDesignatorVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v0[23] = OUTLINED_FUNCTION_199();
  v8 = type metadata accessor for FlightDesignator();
  v0[24] = v8;
  OUTLINED_FUNCTION_21(v8);
  v0[25] = v9;
  v0[26] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  OUTLINED_FUNCTION_114(v10);
  v0[27] = OUTLINED_FUNCTION_199();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11);
}

uint64_t FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1)
{
  SearchResultItem.associatedValue.getter((v1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch14DataDetectable_pMd, &_s10OmniSearch14DataDetectable_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v1 + 216);
    outlined init with take of ResponseOverrideMatcherProtocol((v1 + 96), v1 + 16);
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
    (*(v4 + 8))(v3, v4);
    v5 = type metadata accessor for DataDetectorResults();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v5);
    v7 = *(v1 + 216);
    if (EnumTagSinglePayload == 1)
    {
      v8 = &_s15OmniSearchTypes19DataDetectorResultsVSgMd;
      v9 = &_s15OmniSearchTypes19DataDetectorResultsVSgMR;
      v10 = *(v1 + 216);
    }

    else
    {
      v12 = *(v1 + 184);
      v11 = *(v1 + 192);
      v13 = *(v1 + 144);
      v14 = DataDetectorResults.flightDesignators.getter();
      (*(*(v5 - 8) + 8))(v7, v5);
      *(swift_task_alloc() + 16) = v13;
      specialized Sequence.first(where:)(partial apply for closure #1 in FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:), v14, v12);

      if (__swift_getEnumTagSinglePayload(v12, 1, v11) != 1)
      {
        v22 = *(v1 + 200);
        v21 = *(v1 + 208);
        v58 = *(v1 + 192);
        v24 = *(v1 + 168);
        v23 = *(v1 + 176);
        v25 = *(v1 + 160);
        (*(v22 + 32))(v21, *(v1 + 184));
        v26 = FlightDesignator.number.getter();
        v56 = v27;
        v57 = v26;
        v28 = FlightDesignator.airline.getter();
        v54 = v29;
        v55 = v28;
        type metadata accessor for SearchResult(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v30 = CodableNSSecureCoding.wrappedValue.getter();
        v31 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v30);
        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0;
        }

        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = 0xE000000000000000;
        }

        v35 = type metadata accessor for Calendar();
        __swift_storeEnumTagSinglePayload(v24, 1, 1, v35);
        v36 = type metadata accessor for TimeZone();
        __swift_storeEnumTagSinglePayload(v25, 1, 1, v36);
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(v24, v25, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
        FlightReservation.init(flightNumber:flightCarrierCode:bundleId:flightDepartureDateComponents:)(v57, v56, v55, v54, v33, v34, v23, v37, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        (*(v22 + 8))(v21, v58);
        v38 = type metadata accessor for ExtractionRuleType(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
        goto LABEL_9;
      }

      v10 = *(v1 + 184);
      v8 = &_s15OmniSearchTypes16FlightDesignatorVSgMd;
      v9 = &_s15OmniSearchTypes16FlightDesignatorVSgMR;
    }

    outlined destroy of IntentApplication?(v10, v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  }

  else
  {
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    outlined destroy of IntentApplication?(v1 + 96, &_s10OmniSearch14DataDetectable_pSgMd, &_s10OmniSearch14DataDetectable_pSgMR);
  }

  type metadata accessor for ExtractionRuleType(0);
  v15 = OUTLINED_FUNCTION_58();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
LABEL_9:

  OUTLINED_FUNCTION_106();

  return v19();
}

uint64_t closure #1 in FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1, uint64_t a2)
{

  FlightDesignator.airline.getter();
  v2 = FlightDesignator.number.getter();
  v4 = v3;

  MEMORY[0x25F89F6C0](v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.contains<A>(_:)();

  return v5 & 1;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for FlightDesignator();
  OUTLINED_FUNCTION_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(a2 + 16);
  v14 = (v7 + 8);
  while (1)
  {
    if (v13 == v12)
    {
      v16 = 1;
      v17 = a3;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v5);
    }

    (*(v7 + 16))(v11, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v5);
    v15 = a1(v11);
    if (v3)
    {
      return (*v14)(v11, v5);
    }

    if (v15)
    {
      break;
    }

    (*v14)(v11, v5);
    ++v12;
  }

  v17 = a3;
  (*(v7 + 32))(a3, v11, v5);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v5);
}

{
  v6 = type metadata accessor for FlightSnippet.Leg(0);
  OUTLINED_FUNCTION_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v12 = v11 - v10;
  v13 = 0;
  v14 = *(a2 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      v16 = 1;
      v17 = a3;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v6);
    }

    outlined init with copy of SearchResultItem(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v12, type metadata accessor for FlightSnippet.Leg);
    v15 = a1(v12);
    if (v3)
    {
      return outlined destroy of SearchResultItem(v12, type metadata accessor for FlightSnippet.Leg);
    }

    if (v15)
    {
      break;
    }

    outlined destroy of SearchResultItem(v12, type metadata accessor for FlightSnippet.Leg);
    ++v13;
  }

  v17 = a3;
  outlined init with take of FlightSnippet.Leg(v12, a3);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v6);
}

uint64_t protocol witness for AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:) in conformance FlightFromExtractedAnswer()
{
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_1(v1);

  return FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:)();
}

uint64_t URL.init(hostedLink:)@<X0>(char *a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = (v13 - v12);
  URL.init(string:)();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of IntentApplication?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_6:
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(a3, v17, 1, v8);
  }

  v15 = *(v10 + 32);
  v15(v14, v7, v8);
  URL.host.getter();
  if (!v16)
  {
    (*(v10 + 8))(v14, v8);
    goto LABEL_6;
  }

  v15(a3, v14, v8);
  v17 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v17, 1, v8);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSSSgMd, &_sSSSgMR);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSS_SStMd, &_sSS_SStMR);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSaySSGMd, &_sSaySSGMR);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s10OmniSearch17MessageIdentifier_pMd, &_s10OmniSearch17MessageIdentifier_pMR);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t instantiation function for generic protocol witness table for CalendarLocationAnswer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CalendarLocationAnswer and conformance CalendarLocationAnswer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CalendarLocationAnswer and conformance CalendarLocationAnswer()
{
  result = lazy protocol witness table cache variable for type CalendarLocationAnswer and conformance CalendarLocationAnswer;
  if (!lazy protocol witness table cache variable for type CalendarLocationAnswer and conformance CalendarLocationAnswer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalendarLocationAnswer and conformance CalendarLocationAnswer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Answer and conformance Answer()
{
  result = lazy protocol witness table cache variable for type Answer and conformance Answer;
  if (!lazy protocol witness table cache variable for type Answer and conformance Answer)
  {
    type metadata accessor for Answer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Answer and conformance Answer);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for HotelLocationAnswer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HotelLocationAnswer and conformance HotelLocationAnswer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HotelLocationAnswer and conformance HotelLocationAnswer()
{
  result = lazy protocol witness table cache variable for type HotelLocationAnswer and conformance HotelLocationAnswer;
  if (!lazy protocol witness table cache variable for type HotelLocationAnswer and conformance HotelLocationAnswer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HotelLocationAnswer and conformance HotelLocationAnswer);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for WalletLocationAnswer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type WalletLocationAnswer and conformance WalletLocationAnswer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type WalletLocationAnswer and conformance WalletLocationAnswer()
{
  result = lazy protocol witness table cache variable for type WalletLocationAnswer and conformance WalletLocationAnswer;
  if (!lazy protocol witness table cache variable for type WalletLocationAnswer and conformance WalletLocationAnswer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletLocationAnswer and conformance WalletLocationAnswer);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for FlightFromExtractedAnswer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer()
{
  result = lazy protocol witness table cache variable for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer;
  if (!lazy protocol witness table cache variable for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlightFromExtractedAnswer and conformance FlightFromExtractedAnswer);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarLocationAnswer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDA)
  {
    if (a2 + 38 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 38) >> 8 < 0xFF)
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 39;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0x26)
  {
    v7 = 38;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 39;
  if (v6 < 0x26)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarLocationAnswer(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD9)
  {
    v6 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
          *result = a2 + 38;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of SearchResultItem(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of SearchResultItem(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of FlightSnippet.Leg(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightSnippet.Leg(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t ExtractionRule.isEnabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8))(a2, a3) == 38)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 80))() & 1;
  }
}

uint64_t ExtractedInfo.init(result:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s10OmniSearch0B6ResultVWObTm_0(a1, a3);
  type metadata accessor for ExtractedInfo(0);
  OUTLINED_FUNCTION_3_0();
  return _s10OmniSearch0B6ResultVWObTm_0(a2, a3 + v5);
}

uint64_t _s10OmniSearch0B6ResultVWObTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_1();
  v5(v4);
  OUTLINED_FUNCTION_17();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for ExtractedInfo(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:) in conformance CalendarLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  v10 = OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
  v11 = OUTLINED_FUNCTION_40_1(v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2_1(v12);
  OUTLINED_FUNCTION_44_1();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for HotelReservation();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  v3[13] = swift_task_alloc();
  v3[14] = *(type metadata accessor for SearchResult(0) - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
}

{
  v3[11] = a1;
  v3[12] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for CalendarEvent();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  v3[17] = swift_task_alloc();
  v3[18] = *(type metadata accessor for SearchResult(0) - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
}

{
  v3[17] = a1;
  v3[18] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v3[20] = swift_task_alloc();
  type metadata accessor for DateComponents();
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16FlightDesignatorVSgMd, &_s15OmniSearchTypes16FlightDesignatorVSgMR);
  v3[22] = swift_task_alloc();
  v4 = type metadata accessor for FlightDesignator();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  v3[27] = swift_task_alloc();
  v5 = type metadata accessor for SearchResult(0);
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
}

void specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)()
{
  v1 = 0;
  v2 = v0[11];
  v3 = *(v0[8] + 40);
  v30 = v0[13];
  v31 = (v2 + 32);
  v4 = (v2 + 8);
  v5 = *(v3 + 16);
  while (1)
  {
    if (v5 == v1)
    {
      OUTLINED_FUNCTION_18_2();
      v26 = 1;
      goto LABEL_13;
    }

    if (v1 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[15];
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v7, v6);
    SearchResultItem.associatedValue.getter(v0 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    if (swift_dynamicCast())
    {
      v8 = v0[12];
      v9 = v0[9];
      v10 = v0[10];
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
      (*v31)(v8, v9, v10);
      v14 = HotelReservation.hotelReservationForAddress.getter();
      v16 = v15;
      (*v4)(v8, v10);
      if (v16)
      {
        v17 = v0[13];
        *v17 = v14;
        *(v30 + 8) = v16;
        OUTLINED_FUNCTION_18_2();
        swift_storeEnumTagMultiPayload();
        v18 = v17;
        v19 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v14 = v0[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      outlined destroy of IntentApplication?(v14, &_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
    }

    v24 = v0[13];
    OUTLINED_FUNCTION_18_2();
    v18 = v24;
    v19 = 1;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v18, v19, 1, v14);
    v25 = v0[13];
    OUTLINED_FUNCTION_15_1(v0[15]);
    type metadata accessor for ExtractionRuleType(0);
    if (__swift_getEnumTagSinglePayload(v25, 1, v14) != 1)
    {
      break;
    }

    outlined destroy of IntentApplication?(v0[13], &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
    ++v1;
  }

  OUTLINED_FUNCTION_3_0();
  _s10OmniSearch0B6ResultVWObTm_0(v27, v28);
  v26 = 0;
LABEL_13:
  OUTLINED_FUNCTION_35_1(v0[7], v26);

  OUTLINED_FUNCTION_106();

  v29();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0[4] + 40);
  v0[10] = v1;
  v2 = *(v1 + 16);
  v0[11] = v2;
  v0[12] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_0_1();
      outlined init with copy of SearchResult(v3 + v4, v5);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[13] = v6;
      *v6 = v7;
      OUTLINED_FUNCTION_25_0(v6);

      WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);

    OUTLINED_FUNCTION_106();

    v12();
  }
}

uint64_t specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = *(type metadata accessor for SearchResult(0) - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
}

uint64_t specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)()
{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  *(*v1 + 112) = v0;

  outlined destroy of SearchResult(*(v2 + 72), type metadata accessor for SearchResult);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[7];
  OUTLINED_FUNCTION_18_2();
  if (OUTLINED_FUNCTION_42_1() != 1)
  {
    OUTLINED_FUNCTION_3_0();
    _s10OmniSearch0B6ResultVWObTm_0(v1, v6);
    v5 = 0;
    goto LABEL_5;
  }

  result = outlined destroy of IntentApplication?(v1, &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  v3 = v0[11];
  v4 = v0[12] + 1;
  v0[12] = v4;
  if (v4 == v3)
  {
    v5 = 1;
LABEL_5:
    OUTLINED_FUNCTION_35_1(v0[2], v5);

    OUTLINED_FUNCTION_106();

    return v7();
  }

  if (v4 >= *(v0[10] + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v8, v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[13] = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_25_0(v10);

    return WalletLocationAnswer.extractFromSource(query:answer:source:assistantLocale:)();
  }

  return result;
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

void specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)(uint64_t result)
{
  v2 = 0;
  v3 = *(v1 + 120);
  v41 = *(v1 + 136);
  v4 = *(*(v1 + 96) + 40);
  v43 = (v3 + 32);
  v44 = (v3 + 8);
  v5 = *(v4 + 16);
  v40 = v4;
  v42 = v5;
  while (1)
  {
    if (v5 == v2)
    {
      OUTLINED_FUNCTION_18_2();
      v36 = 1;
      goto LABEL_19;
    }

    if (v2 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v1 + 152);
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v7, v6);
    SearchResultItem.associatedValue.getter((v1 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    if (!swift_dynamicCast())
    {
      v8 = *(v1 + 104);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      outlined destroy of IntentApplication?(v8, &_s15OmniSearchTypes13CalendarEventVSgMd, &_s15OmniSearchTypes13CalendarEventVSgMR);
LABEL_11:
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v8);
      goto LABEL_15;
    }

    v8 = *(v1 + 128);
    v10 = *(v1 + 104);
    v9 = *(v1 + 112);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
    (*v43)(v8, v10, v9);
    v14 = CalendarEvent.locationName.getter();
    if (!v15)
    {
      (*v44)(*(v1 + 128), *(v1 + 112));
      v5 = v42;
      goto LABEL_11;
    }

    v16 = v14;
    v17 = v15;
    v8 = type metadata accessor for NSUserDefaults();
    if ((static NSUserDefaults.needAnswerMatchWithLocationResolution.getter(v8) & 1) == 0)
    {
      v30 = OUTLINED_FUNCTION_45_1();
      v31(v30);
LABEL_13:
      **(v1 + 136) = v16;
      *(v41 + 8) = v17;
      OUTLINED_FUNCTION_18_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v8);
      goto LABEL_14;
    }

    *(v1 + 56) = String.lowercased()();
    *(v1 + 72) = String.lowercased()();
    lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.contains<A>(_:)();
    v4 = v40;

    v18 = OUTLINED_FUNCTION_45_1();
    v19(v18);
    if (v8)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v8);

LABEL_14:
    v5 = v42;
LABEL_15:
    v35 = *(v1 + 136);
    OUTLINED_FUNCTION_15_1(*(v1 + 152));
    type metadata accessor for ExtractionRuleType(0);
    if (__swift_getEnumTagSinglePayload(v35, 1, v8) != 1)
    {
      break;
    }

    outlined destroy of IntentApplication?(*(v1 + 136), &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
    ++v2;
  }

  OUTLINED_FUNCTION_3_0();
  _s10OmniSearch0B6ResultVWObTm_0(v37, v38);
  v36 = 0;
LABEL_19:
  OUTLINED_FUNCTION_35_1(*(v1 + 88), v36);

  OUTLINED_FUNCTION_106();

  v39();
}

{
  v2 = 0;
  v3 = *(v1 + 192);
  v61 = (v3 + 32);
  v4 = *(*(v1 + 144) + 40);
  v69 = *(v4 + 16);
  v60 = (v3 + 8);
  while (1)
  {
    if (v69 == v2)
    {
      OUTLINED_FUNCTION_18_2();
      v44 = 1;
      goto LABEL_21;
    }

    if (v2 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v1 + 240);
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v6, v5);
    SearchResultItem.associatedValue.getter((v1 + 56));
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch14DataDetectable_pMd, &_s10OmniSearch14DataDetectable_pMR);
    if (!swift_dynamicCast())
    {
      *(v1 + 128) = 0;
      *(v1 + 96) = 0u;
      *(v1 + 112) = 0u;
      outlined destroy of IntentApplication?(v1 + 96, &_s10OmniSearch14DataDetectable_pSgMd, &_s10OmniSearch14DataDetectable_pSgMR);
      goto LABEL_10;
    }

    v8 = *(v1 + 208);
    outlined init with take of ResponseOverrideMatcherProtocol((v1 + 96), v1 + 16);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v9);
    (*(v10 + 8))(v9, v10);
    v11 = type metadata accessor for DataDetectorResults();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    v7 = *(v1 + 208);
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of IntentApplication?(*(v1 + 208), &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
LABEL_10:
      OUTLINED_FUNCTION_18_2();
      v17 = OUTLINED_FUNCTION_17_1();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v7);
      goto LABEL_11;
    }

    v14 = *(v1 + 176);
    v13 = *(v1 + 184);
    v15 = *(v1 + 144);
    v16 = DataDetectorResults.flightDesignators.getter();
    (*(*(v11 - 8) + 8))(v7, v11);
    v7 = swift_task_alloc();
    *(v7 + 16) = v15;
    specialized Sequence.first(where:)(partial apply for closure #1 in FlightFromExtractedAnswer.extractFromSource(query:answer:source:assistantLocale:), v16, v14);

    if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
    {
      outlined destroy of IntentApplication?(*(v1 + 176), &_s15OmniSearchTypes16FlightDesignatorVSgMd, &_s15OmniSearchTypes16FlightDesignatorVSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
      goto LABEL_10;
    }

    v20 = *(v1 + 200);
    v21 = *(v1 + 160);
    v67 = *(v1 + 168);
    v68 = *(v1 + 184);
    v22 = *(v1 + 152);
    (*v61)(v20, *(v1 + 176));
    v23 = FlightDesignator.number.getter();
    v65 = v24;
    v66 = v23;
    v25 = FlightDesignator.airline.getter();
    v63 = v26;
    v64 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v27 = CodableNSSecureCoding.wrappedValue.getter();
    v28 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v27);
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    v31 = 0xE000000000000000;
    if (v29)
    {
      v31 = v29;
    }

    v62 = v31;
    type metadata accessor for Calendar();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    type metadata accessor for TimeZone();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(v21, v22, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
    FlightReservation.init(flightNumber:flightCarrierCode:bundleId:flightDepartureDateComponents:)(v66, v65, v64, v63, v30, v62, v67, v40, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    (*v60)(v20, v68);
    OUTLINED_FUNCTION_18_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v30);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
LABEL_11:
    OUTLINED_FUNCTION_15_1(*(v1 + 240));
    type metadata accessor for ExtractionRuleType(0);
    if (OUTLINED_FUNCTION_42_1() != 1)
    {
      break;
    }

    outlined destroy of IntentApplication?(*(v1 + 216), &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
    ++v2;
  }

  OUTLINED_FUNCTION_3_0();
  _s10OmniSearch0B6ResultVWObTm_0(v45, v46);
  v44 = 0;
LABEL_21:
  OUTLINED_FUNCTION_35_1(*(v1 + 136), v44);

  OUTLINED_FUNCTION_106();

  v47();
}

uint64_t AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  v1[10] = OUTLINED_FUNCTION_199();
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_28_0();
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10);
}

{
  OUTLINED_FUNCTION_78();
  result = v0[8];
  v2 = *(v0[4] + 40);
  v0[13] = v2;
  v3 = *(v2 + 16);
  v0[14] = v3;
  v0[15] = 0;
  if (v3)
  {
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_0_1();
      outlined init with copy of SearchResult(v4 + v5, v6);
      OUTLINED_FUNCTION_28_0();
      v16 = (v7 + *v7);
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[16] = v8;
      *v8 = v9;
      v10 = OUTLINED_FUNCTION_24_0(v8);

      return v16(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);

    OUTLINED_FUNCTION_106();

    return v15();
  }

  return result;
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  *(*v1 + 136) = v0;

  outlined destroy of SearchResult(*(v2 + 96), type metadata accessor for SearchResult);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v3);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:)(uint64_t a1)
{
  v2 = v1[10];
  OUTLINED_FUNCTION_18_2();
  if (OUTLINED_FUNCTION_42_1() != 1)
  {
    OUTLINED_FUNCTION_3_0();
    _s10OmniSearch0B6ResultVWObTm_0(v2, v7);
    v6 = 0;
    goto LABEL_5;
  }

  result = outlined destroy of IntentApplication?(v2, &_s10OmniSearch18ExtractionRuleTypeOSgMd, &_s10OmniSearch18ExtractionRuleTypeOSgMR);
  v4 = v1[14];
  v5 = v1[15] + 1;
  v1[15] = v5;
  if (v5 == v4)
  {
    v6 = 1;
LABEL_5:
    OUTLINED_FUNCTION_35_1(v1[2], v6);

    OUTLINED_FUNCTION_106();

    return v8();
  }

  if (v5 >= *(v1[13] + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v9, v10);
    OUTLINED_FUNCTION_28_0();
    v15 = (v11 + *v11);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v1[16] = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_24_0(v12);

    return v15(v14);
  }

  return result;
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance CalendarLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  v10 = OUTLINED_FUNCTION_60(&async function pointer to specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
  v11 = OUTLINED_FUNCTION_40_1(v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2_1(v12);
  OUTLINED_FUNCTION_44_1();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 136) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = type metadata accessor for Answer(0);
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
}

{
  *(v6 + 136) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = type metadata accessor for Answer(0);
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
}

{
  *(v6 + 136) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = type metadata accessor for Answer(0);
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
}

{
  *(v6 + 136) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = type metadata accessor for Answer(0);
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
}

uint64_t specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1(v2))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 120) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_1(v3);

    return v6(v5);
  }

  else
  {
    v8 = *(v0 + 96);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    outlined destroy of IntentApplication?(v8, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_106();

    return v13();
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
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_29_1();
  outlined destroy of SearchResult(v0, v1);

  OUTLINED_FUNCTION_106();

  return v2();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_29_1();
  outlined destroy of SearchResult(v1, v2);

  OUTLINED_FUNCTION_127();

  return v3();
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1(v2))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 120) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_1(v3);

    return v6(v5);
  }

  else
  {
    v8 = *(v0 + 96);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    outlined destroy of IntentApplication?(v8, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_106();

    return v13();
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
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1(v2))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 120) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_1(v3);

    return v6(v5);
  }

  else
  {
    v8 = *(v0 + 96);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    outlined destroy of IntentApplication?(v8, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_106();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  if (OUTLINED_FUNCTION_18_1(v2))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 120) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_1(v3);

    return v6(v5);
  }

  else
  {
    v8 = *(v0 + 96);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    outlined destroy of IntentApplication?(v8, &_s10OmniSearch6AnswerVSgMd, &_s10OmniSearch6AnswerVSgMR);
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_106();

    return v13();
  }
}

uint64_t TypedExtractionRule.extractInfo(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[9] = v5;
  v1[10] = v6;
  v1[7] = v7;
  v1[8] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  v1[16] = type metadata accessor for Optional();
  OUTLINED_FUNCTION_28_0();
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_199();
  v1[19] = *(AssociatedTypeWitness - 8);
  v1[20] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[19] + 8))(v0[20], v0[15]);

  OUTLINED_FUNCTION_106();

  return v1();
}

{
  OUTLINED_FUNCTION_48();
  (*(v0[19] + 8))(v0[20], v0[15]);

  OUTLINED_FUNCTION_127();

  return v1();
}

void TypedExtractionRule.extractInfo(query:result:assistantLocale:)()
{
  OUTLINED_FUNCTION_75();
  SearchResultItem.associatedValue.getter(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B4Item_pMd, &_s10OmniSearch0B4Item_pMR);
  v1 = swift_dynamicCast();
  v2 = v0[15];
  if (v1)
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[18];
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
    (*(v4 + 32))(v3, v5, v2);
    OUTLINED_FUNCTION_28_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    v0[21] = v9;
    *v9 = v10;
    v9[1] = TypedExtractionRule.extractInfo(query:result:assistantLocale:);
    OUTLINED_FUNCTION_44_1();

    __asm { BRAA            X7, X16 }
  }

  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v2);
  (*(v14 + 8))(v13, v15);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_44_1();

  __asm { BRAA            X1, X16 }
}

uint64_t protocol witness for TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:) in conformance HotelLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  v10 = OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
  v11 = OUTLINED_FUNCTION_40_1(v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2_1(v12);
  OUTLINED_FUNCTION_44_1();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance HotelLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  v10 = OUTLINED_FUNCTION_60(&async function pointer to specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
  v11 = OUTLINED_FUNCTION_40_1(v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2_1(v12);
  OUTLINED_FUNCTION_44_1();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t protocol witness for TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:) in conformance WalletLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  v10 = OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
  v11 = OUTLINED_FUNCTION_40_1(v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2_1(v12);
  OUTLINED_FUNCTION_44_1();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance WalletLocationAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  v10 = OUTLINED_FUNCTION_60(&async function pointer to specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
  v11 = OUTLINED_FUNCTION_40_1(v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2_1(v12);
  OUTLINED_FUNCTION_44_1();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t protocol witness for TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:) in conformance FlightFromExtractedAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  v10 = OUTLINED_FUNCTION_60(&async function pointer to specialized AnswerSourceExtractionRule.extractInfo(query:typedResult:assistantLocale:));
  v11 = OUTLINED_FUNCTION_40_1(v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2_1(v12);
  OUTLINED_FUNCTION_44_1();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t protocol witness for ExtractionRule.extractInfo(query:result:assistantLocale:) in conformance FlightFromExtractedAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_4_1();
  v10 = OUTLINED_FUNCTION_60(&async function pointer to specialized TypedExtractionRule.extractInfo(query:result:assistantLocale:));
  v11 = OUTLINED_FUNCTION_40_1(v10);
  v12 = OUTLINED_FUNCTION_23(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2_1(v12);
  OUTLINED_FUNCTION_44_1();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t static ExtractionRuleType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v61 = v3;
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v56 = (v5 - v4);
  type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_14();
  v59 = v7;
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v55 = (v9 - v8);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v57 = v11;
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v14 = (v13 - v12);
  type metadata accessor for ExtractionRuleType(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v55 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = (&v55 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18ExtractionRuleTypeO_ACtMd, &_s10OmniSearch18ExtractionRuleTypeO_ACtMR);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v55 - v31;
  v34 = (&v55 + *(v33 + 56) - v31);
  outlined init with copy of SearchResult(v63, &v55 - v31);
  outlined init with copy of SearchResult(v64, v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v32, v26);
      if (OUTLINED_FUNCTION_43_0() == 1)
      {
        v50 = v57;
        v49 = v58;
        (*(v57 + 32))(v14, v34, v58);
        v40 = static URL.== infix(_:_:)();
        v51 = *(v50 + 8);
        v51(v14, v49);
        v51(v26, v49);
        goto LABEL_17;
      }

      (*(v57 + 8))(v26, v58);
      goto LABEL_23;
    case 2u:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v32, v23);
      if (OUTLINED_FUNCTION_43_0() == 2)
      {
        v43 = v59;
        v42 = v60;
        v44 = v55;
        (*(v59 + 32))(v55, v34, v60);
        v40 = static FlightReservation.== infix(_:_:)();
        v45 = *(v43 + 8);
        v45(v44, v42);
        v45(v23, v42);
        goto LABEL_17;
      }

      (*(v59 + 8))(v23, v60);
      goto LABEL_23;
    case 3u:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v32, v20);
      v36 = *v20;
      v35 = v20[1];
      if (OUTLINED_FUNCTION_43_0() == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    case 4u:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v32, v17);
      if (OUTLINED_FUNCTION_43_0() != 4)
      {
        (*(v61 + 8))(v17, v62);
        goto LABEL_23;
      }

      v38 = v61;
      v37 = v62;
      v39 = v56;
      (*(v61 + 32))(v56, v34, v62);
      v40 = static Date.== infix(_:_:)();
      v41 = *(v38 + 8);
      v41(v39, v37);
      v41(v17, v37);
LABEL_17:
      OUTLINED_FUNCTION_5_2();
      outlined destroy of SearchResult(v32, v52);
      return v40 & 1;
    case 5u:
      if (OUTLINED_FUNCTION_43_0() == 5)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    default:
      OUTLINED_FUNCTION_1_2();
      outlined init with copy of SearchResult(v32, v29);
      v36 = *v29;
      v35 = v29[1];
      if (OUTLINED_FUNCTION_43_0())
      {
LABEL_3:

LABEL_23:
        outlined destroy of IntentApplication?(v32, &_s10OmniSearch18ExtractionRuleTypeO_ACtMd, &_s10OmniSearch18ExtractionRuleTypeO_ACtMR);
        goto LABEL_24;
      }

LABEL_9:
      if (v36 == *v34 && v35 == v34[1])
      {
      }

      else
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v47 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_2();
          outlined destroy of SearchResult(v32, v48);
LABEL_24:
          v40 = 0;
          return v40 & 1;
        }
      }

LABEL_26:
      OUTLINED_FUNCTION_5_2();
      outlined destroy of SearchResult(v32, v53);
      v40 = 1;
      return v40 & 1;
  }
}

uint64_t outlined init with copy of SearchResult(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_1();
  v5(v4);
  OUTLINED_FUNCTION_17();
  (*(v6 + 16))(a2, v2);
  return a2;
}

{
  v4 = type metadata accessor for SearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchResult(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ExtractionRuleType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  v8 = type metadata accessor for FlightReservation();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v14 = v13 - v12;
  v15 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v21 = v20 - v19;
  type metadata accessor for ExtractionRuleType(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_36();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_1_2();
  outlined init with copy of SearchResult(v2, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v17 + 32))(v21, v25, v15);
      MEMORY[0x25F8A0680](1);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      OUTLINED_FUNCTION_46_1();
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v17 + 8))(v21, v15);
      break;
    case 2u:
      (*(v10 + 32))(v14, v25, v8);
      MEMORY[0x25F8A0680](2);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type FlightReservation and conformance FlightReservation, MEMORY[0x277D37290], MEMORY[0x277D372A0]);
      OUTLINED_FUNCTION_46_1();
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v10 + 8))(v14, v8);
      break;
    case 3u:
      v26 = 3;
      goto LABEL_6;
    case 4u:
      (*(v29 + 32))(v7, v25, v28);
      MEMORY[0x25F8A0680](4);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      OUTLINED_FUNCTION_46_1();
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v29 + 8))(v7, v28);
      break;
    case 5u:
      result = MEMORY[0x25F8A0680](5);
      break;
    default:
      v26 = 0;
LABEL_6:
      MEMORY[0x25F8A0680](v26);
      String.hash(into:)();

      break;
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

Swift::Int ExtractionRuleType.hashValue.getter()
{
  Hasher.init(_seed:)();
  ExtractionRuleType.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtractionRuleType(uint64_t a1)
{
  Hasher.init(_seed:)();
  ExtractionRuleType.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t ExtractedInfo.type.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ExtractedInfo(0);
  OUTLINED_FUNCTION_1_2();
  return outlined init with copy of SearchResult(v1 + v3, a1);
}

uint64_t RegexExtractionRule.extractFromSource(query:answer:source:assistantLocale:)()
{
  OUTLINED_FUNCTION_48();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[16] = v5;
  v1[17] = v6;
  v1[14] = v7;
  v1[15] = v8;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for Locale.Language();
  OUTLINED_FUNCTION_28_0();
  v1[26] = v9;
  v1[27] = OUTLINED_FUNCTION_199();
  v1[28] = type metadata accessor for Locale();
  OUTLINED_FUNCTION_28_0();
  v1[29] = v10;
  v1[30] = OUTLINED_FUNCTION_199();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v1[31] = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_56_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_106();

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t RegexExtractionRule.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1)
{
  if (!*(v1 + 144))
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  v4 = *(v1 + 224);
  v5 = *(v1 + 232);
  v7 = *(v1 + 208);
  v6 = *(v1 + 216);
  v8 = *(v1 + 200);

  Locale.init(identifier:)();
  Locale.language.getter();
  (*(v5 + 8))(v2, v4);
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v6, v8);
  v9 = type metadata accessor for Locale.LanguageCode();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v9);
  v11 = *(v1 + 248);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(*(v1 + 248), &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
LABEL_4:
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
LABEL_5:

    OUTLINED_FUNCTION_106();

    return v16();
  }

  v18 = *(v1 + 160);
  v19 = *(v1 + 152);
  v20 = MEMORY[0x25F899710]();
  v22 = v21;
  (*(*(v9 - 8) + 8))(v11, v9);
  (*(v18 + 16))(v20, v22, v19, v18);

  if (!*(v1 + 80))
  {
    outlined destroy of IntentApplication?(v1 + 56, &_s17_StringProcessing14RegexComponent_pSgMd, &_s17_StringProcessing14RegexComponent_pSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      swift_once();
    }

    v32 = *(v1 + 192);
    v33 = *(v1 + 168);
    v34 = *(v1 + 176);
    v35 = *(v1 + 152);
    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logging.answerSynthesis);
    v37 = *(v34 + 16);
    v37(v32, v33, v35);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v1 + 192);
    if (v40)
    {
      v54 = v39;
      v42 = *(v1 + 176);
      v43 = *(v1 + 184);
      v44 = *(v1 + 152);
      v45 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v45 = 136315394;
      v37(v43, v41, v44);
      String.init<A>(describing:)();
      (*(v42 + 8))(v41, v44);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v45 + 4) = v46;
      *(v45 + 12) = 2080;
      *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v38, v54, "%s - failed to find a valid match for locale: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v55, -1, -1);
      MEMORY[0x25F8A1050](v45, -1, -1);
    }

    else
    {
      v51 = *(v1 + 176);
      v52 = *(v1 + 152);

      (*(v51 + 8))(v41, v52);
    }

    goto LABEL_4;
  }

  v23 = *(v1 + 120);
  outlined init with take of ResponseOverrideMatcherProtocol((v1 + 56), v1 + 16);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v24 = *(v23 + 24);
  *(v1 + 96) = *(v23 + 16);
  *(v1 + 104) = v24;
  lazy protocol witness table accessor for type String and conformance String();
  if ((BidirectionalCollection<>.contains<A>(_:)() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_28_0();
  v53 = (v25 + *v25);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 256) = v26;
  *v26 = v27;
  v26[1] = RegexExtractionRule.extractFromSource(query:answer:source:assistantLocale:);
  v28 = *(v1 + 160);
  v29 = *(v1 + 152);
  v30 = *(v1 + 128);
  v31 = *(v1 + 112);

  return v53(v31, v30, v29, v28);
}

uint64_t ExtractedInfo.newResult.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ExtractionRuleType(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v6 = v5 - v4;
  type metadata accessor for ExtractedInfo(0);
  OUTLINED_FUNCTION_1_2();
  outlined init with copy of SearchResult(v1 + v7, v6);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    OUTLINED_FUNCTION_0_1();
    outlined init with copy of SearchResult(v1, a1);
    type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_44_0();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    type metadata accessor for SearchResult(0);
    v13 = OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_5_2();
    return outlined destroy of SearchResult(v6, v17);
  }
}

uint64_t type metadata completion function for ExtractionRuleType(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FlightReservation();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for ExtractedInfo(uint64_t a1)
{
  result = type metadata accessor for SearchResult(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ExtractionRuleType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ExtractionRule.extractInfo(query:result:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_36_1(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_28_0();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_23(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_31_1(v8);

  return v11(v10);
}

uint64_t dispatch thunk of TypedExtractionRule.extractInfo(query:typedResult:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_36_1(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_28_0();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_23(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_31_1(v8);

  return v11(v10);
}

uint64_t dispatch thunk of AnswerSourceExtractionRule.extractFromSource(query:answer:source:assistantLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_28_0();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_23(v17);
  *v18 = v19;
  v18[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

void dispatch thunk of RegexExtractionRule.extractMatched(typedResult:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_28_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);
  OUTLINED_FUNCTION_44_1();

  __asm { BRAA            X4, X16 }
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v1 = v0[14];
  v2 = v0[12];
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v0[13]);

  return _s10OmniSearch0B6ResultVWObTm_0(v2, v1);
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  v1 = type metadata accessor for ExtractionRuleType(0);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return outlined destroy of SearchResult(a1, type metadata accessor for SearchResult);
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

_OWORD *OUTLINED_FUNCTION_38_1(uint64_t a1)
{

  return SearchResultItem.associatedValue.getter((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t FlightSnippet.flight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_69_1();
  type metadata accessor for FlightSnippet(v5);
  outlined init with copy of EagerResolutionService?();
  v6 = type metadata accessor for FlightSnippet.Flight(0);
  v7 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v7, v8, v6);
  if (v9)
  {
    UnknownStorage.init()();
    v10 = *(v6 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      OUTLINED_FUNCTION_68_1(&one-time initialization token for defaultInstance);
    }

    *(a1 + v10) = static FlightSnippet.Flight._StorageClass.defaultInstance;
    v11 = OUTLINED_FUNCTION_93_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v6);

    if (EnumTagSinglePayload != 1)
    {
      return outlined destroy of IntentApplication?(v1, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_1();
    return outlined init with take of FlightSnippet.Flight();
  }

  return result;
}

uint64_t FlightSnippet.flight.setter()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2 = type metadata accessor for FlightSnippet(v1);
  outlined destroy of IntentApplication?(v0 + *(v2 + 40), &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_3_1();
  outlined init with take of FlightSnippet.Flight();
  type metadata accessor for FlightSnippet.Flight(0);
  OUTLINED_FUNCTION_44_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void FlightSnippet.flight.modify()
{
  OUTLINED_FUNCTION_202();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for FlightSnippet.Flight(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_17();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for FlightSnippet(0) + 40);
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_25_1();
  if (v11)
  {
    UnknownStorage.init()();
    v12 = *(v7 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      OUTLINED_FUNCTION_68_1(&one-time initialization token for defaultInstance);
    }

    *&v10[v12] = static FlightSnippet.Flight._StorageClass.defaultInstance;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of IntentApplication?(v6, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_130_0();
  }

  OUTLINED_FUNCTION_203();
}

{
  OUTLINED_FUNCTION_202();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    outlined init with copy of FlightSnippet.Flight();
    outlined destroy of IntentApplication?(v6 + v1, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    outlined init with take of FlightSnippet.Flight();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    outlined destroy of FlightSnippet.Flight(v3);
  }

  else
  {
    outlined destroy of IntentApplication?(v6 + v1, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
    OUTLINED_FUNCTION_3_1();
    outlined init with take of FlightSnippet.Flight();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_203();

  free(v14);
}

uint64_t FlightSnippet.hasFlight.getter()
{
  v1 = OUTLINED_FUNCTION_32_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_69_1();
  type metadata accessor for FlightSnippet(v5);
  outlined init with copy of EagerResolutionService?();
  type metadata accessor for FlightSnippet.Flight(0);
  v6 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  outlined destroy of IntentApplication?(v0, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  return v10;
}

Swift::Void __swiftcall FlightSnippet.clearFlight()()
{
  v1 = *(type metadata accessor for FlightSnippet(0) + 40);
  outlined destroy of IntentApplication?(v0 + v1, &_s10OmniSearch13FlightSnippetV0C0VSgMd, &_s10OmniSearch13FlightSnippetV0C0VSgMR);
  v2 = type metadata accessor for FlightSnippet.Flight(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t FlightSnippet.queryIntendedFlightInfo.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FlightSnippet.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for FlightSnippet(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17();
  v1 = OUTLINED_FUNCTION_81_1();

  return v2(v1);
}

uint64_t FlightSnippet.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for FlightSnippet(v2) + 36);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*FlightSnippet.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for FlightSnippet(v0);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

void protocol witness for Enum.init(rawValue:) in conformance FlightSnippet.Status(uint64_t a1@<X8>)
{
  FlightSnippet.Status.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance FlightSnippet.Status(uint64_t a1@<X8>)
{
  FlightSnippet.Status.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlightSnippet.Status(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type FlightSnippet.Status and conformance FlightSnippet.Status();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t FlightSnippet.Flight.id.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.id : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.id.setter(v1, v2);
}

void FlightSnippet.Flight.id.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 16, v8);
  *(v9 + 16) = v4;
  *(v9 + 24) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.id.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.id.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.id.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 16);
    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
  }

  free(v0);
}

void key path setter for FlightSnippet.Flight.contentHash : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.contentHash.setter(v1, v2);
}

void FlightSnippet.Flight.contentHash.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 32, v8);
  *(v9 + 32) = v4;
  *(v9 + 40) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.contentHash.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.contentHash.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.contentHash.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 32);
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.carrierIata.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.carrierIata : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.carrierIata.setter(v1, v2);
}

void FlightSnippet.Flight.carrierIata.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 48, v8);
  *(v9 + 48) = v4;
  *(v9 + 56) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.carrierIata.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.carrierIata.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.carrierIata.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 48);
    *(v9 + 48) = v3;
    *(v9 + 56) = v2;
  }

  free(v0);
}

void key path setter for FlightSnippet.Flight.carrierIcao : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.carrierIcao.setter(v1, v2);
}

void FlightSnippet.Flight.carrierIcao.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 64, v8);
  *(v9 + 64) = v4;
  *(v9 + 72) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.carrierIcao.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.carrierIcao.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.carrierIcao.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 64);
    *(v9 + 64) = v3;
    *(v9 + 72) = v2;
  }

  free(v0);
}

void key path setter for FlightSnippet.Flight.carrierFs : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.carrierFs.setter(v1, v2);
}

void FlightSnippet.Flight.carrierFs.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 80, v8);
  *(v9 + 80) = v4;
  *(v9 + 88) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.carrierFs.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.carrierFs.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.carrierFs.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 80);
    *(v9 + 80) = v3;
    *(v9 + 88) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.carrierName.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.carrierName : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.carrierName.setter(v1, v2);
}

void FlightSnippet.Flight.carrierName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 96, v8);
  *(v9 + 96) = v4;
  *(v9 + 104) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.carrierName.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.carrierName.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.carrierName.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 96);
    *(v9 + 96) = v3;
    *(v9 + 104) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.carrierPhoneNumber.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.carrierPhoneNumber : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.carrierPhoneNumber.setter(v1, v2);
}

void FlightSnippet.Flight.carrierPhoneNumber.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 112, v8);
  *(v9 + 112) = v4;
  *(v9 + 120) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.carrierPhoneNumber.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.carrierPhoneNumber.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.carrierPhoneNumber.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 112);
    *(v9 + 112) = v3;
    *(v9 + 120) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.flightNumber.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.flightNumber : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.flightNumber.setter(v1, v2);
}

void FlightSnippet.Flight.flightNumber.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 128, v8);
  *(v9 + 128) = v4;
  *(v9 + 136) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.flightNumber.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.flightNumber.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.flightNumber.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 128);
    *(v9 + 128) = v3;
    *(v9 + 136) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.flightDepartureScheduled.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 144);
}

uint64_t FlightSnippet.Flight.flightDepartureScheduled.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 144, v5);
  *(v6 + 144) = v0;
  return result;
}

uint64_t FlightSnippet.Flight.flightDepartureScheduled.modify()
{
  v2 = OUTLINED_FUNCTION_55_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_8_2(v3);
  v5 = type metadata accessor for FlightSnippet.Flight(v4);
  OUTLINED_FUNCTION_18_3(v5);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 72) = *(v0 + 144);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Flight.flightDepartureScheduled.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_12_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_2();
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 144) = v3;

  free(v1);
}

uint64_t FlightSnippet.Flight.flightArrivalScheduled.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 152);
}

uint64_t FlightSnippet.Flight.flightArrivalScheduled.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 152, v5);
  *(v6 + 152) = v0;
  return result;
}

uint64_t FlightSnippet.Flight.flightArrivalScheduled.modify()
{
  v2 = OUTLINED_FUNCTION_55_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_8_2(v3);
  v5 = type metadata accessor for FlightSnippet.Flight(v4);
  OUTLINED_FUNCTION_18_3(v5);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 72) = *(v0 + 152);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Flight.flightArrivalScheduled.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_12_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_2();
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 152) = v3;

  free(v1);
}

uint64_t FlightSnippet.Flight.legs.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t FlightSnippet.Flight.legs.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  OUTLINED_FUNCTION_30_1(v6 + 160, v5);
  *(v6 + 160) = v0;
}

uint64_t FlightSnippet.Flight.legs.modify()
{
  v2 = OUTLINED_FUNCTION_120_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 56) = v0;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_114_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.legs.modify()
{
  OUTLINED_FUNCTION_35_2();
  v4 = *(v3 + 48);
  if (v5)
  {
    OUTLINED_FUNCTION_129_0();
    FlightSnippet.Flight.legs.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_82_1();
    v7 = *(v2 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_80_1();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_9_2();
      v9 = FlightSnippet.Flight._StorageClass.init(copying:)(v8);
      OUTLINED_FUNCTION_112_0(v9);
    }

    OUTLINED_FUNCTION_40_2(v7 + 160);
    *(v7 + 160) = v4;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.codeShares.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t FlightSnippet.Flight.codeShares.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  OUTLINED_FUNCTION_30_1(v6 + 168, v5);
  *(v6 + 168) = v0;
}

uint64_t FlightSnippet.Flight.codeShares.modify()
{
  v2 = OUTLINED_FUNCTION_120_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 56) = v0;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_114_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 168);

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.codeShares.modify()
{
  OUTLINED_FUNCTION_35_2();
  v4 = *(v3 + 48);
  if (v5)
  {
    OUTLINED_FUNCTION_129_0();
    FlightSnippet.Flight.codeShares.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_82_1();
    v7 = *(v2 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_80_1();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_9_2();
      v9 = FlightSnippet.Flight._StorageClass.init(copying:)(v8);
      OUTLINED_FUNCTION_112_0(v9);
    }

    OUTLINED_FUNCTION_40_2(v7 + 168);
    *(v7 + 168) = v4;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.legIndex.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 176);
}

uint64_t FlightSnippet.Flight.legIndex.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 176, v5);
  *(v6 + 176) = v0;
  return result;
}

uint64_t FlightSnippet.Flight.legIndex.modify()
{
  v2 = OUTLINED_FUNCTION_73_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_92_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 80) = *(v0 + 176);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Flight.legIndex.modify()
{
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_62_1();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_9_2();
    v7 = FlightSnippet.Flight._StorageClass.init(copying:)(v6);
    OUTLINED_FUNCTION_37_1(v7);
  }

  OUTLINED_FUNCTION_41_0();
  *(v5 + 176) = v2;

  free(v0);
}

uint64_t FlightSnippet.Flight.operatorCarrierCode.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.operatorCarrierCode : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.operatorCarrierCode.setter(v1, v2);
}

void FlightSnippet.Flight.operatorCarrierCode.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 184, v8);
  *(v9 + 184) = v4;
  *(v9 + 192) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.operatorCarrierCode.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 192);
  *(v1 + 48) = *(v0 + 184);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.operatorCarrierCode.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.operatorCarrierCode.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 184);
    *(v9 + 184) = v3;
    *(v9 + 192) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.operatorFlightNumber.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.operatorFlightNumber : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.operatorFlightNumber.setter(v1, v2);
}

void FlightSnippet.Flight.operatorFlightNumber.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 200, v8);
  *(v9 + 200) = v4;
  *(v9 + 208) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.operatorFlightNumber.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 208);
  *(v1 + 48) = *(v0 + 200);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.operatorFlightNumber.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.operatorFlightNumber.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 200);
    *(v9 + 200) = v3;
    *(v9 + 208) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.website.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Flight.website : FlightSnippet.Flight(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Flight.website.setter(v1, v2);
}

void FlightSnippet.Flight.website.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_61_1(v6);
  v9 = *(v3 + v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  OUTLINED_FUNCTION_30_1(v9 + 216, v8);
  *(v9 + 216) = v4;
  *(v9 + 224) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Flight.website.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v4 = *(v0 + 224);
  *(v1 + 48) = *(v0 + 216);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.website.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Flight.website.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Flight._StorageClass();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_9_2();
      v11 = FlightSnippet.Flight._StorageClass.init(copying:)(v10);
      OUTLINED_FUNCTION_37_1(v11);
    }

    OUTLINED_FUNCTION_40_2(v9 + 216);
    *(v9 + 216) = v3;
    *(v9 + 224) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.lastUpdated.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 232);
}

uint64_t FlightSnippet.Flight.lastUpdated.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 232, v5);
  *(v6 + 232) = v0;
  return result;
}

uint64_t FlightSnippet.Flight.lastUpdated.modify()
{
  v2 = OUTLINED_FUNCTION_55_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_8_2(v3);
  v5 = type metadata accessor for FlightSnippet.Flight(v4);
  OUTLINED_FUNCTION_18_3(v5);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 72) = *(v0 + 232);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Flight.lastUpdated.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_12_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_2();
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 232) = v3;

  free(v1);
}

uint64_t FlightSnippet.Flight.legsNotUpdated.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 240);
}

uint64_t FlightSnippet.Flight.legsNotUpdated.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 240, v5);
  *(v6 + 240) = v0;
  return result;
}

uint64_t FlightSnippet.Flight.legsNotUpdated.modify()
{
  v2 = OUTLINED_FUNCTION_73_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_92_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 80) = *(v0 + 240);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Flight.legsNotUpdated.modify()
{
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_62_1();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_9_2();
    v7 = FlightSnippet.Flight._StorageClass.init(copying:)(v6);
    OUTLINED_FUNCTION_37_1(v7);
  }

  OUTLINED_FUNCTION_41_0();
  *(v5 + 240) = v2;

  free(v0);
}

uint64_t FlightSnippet.Flight.departureUtcVariance.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 244);
}

uint64_t FlightSnippet.Flight.departureUtcVariance.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 244, v5);
  *(v6 + 244) = v0;
  return result;
}

uint64_t FlightSnippet.Flight.departureUtcVariance.modify()
{
  v2 = OUTLINED_FUNCTION_73_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_92_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 80) = *(v0 + 244);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Flight.departureUtcVariance.modify()
{
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_62_1();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_9_2();
    v7 = FlightSnippet.Flight._StorageClass.init(copying:)(v6);
    OUTLINED_FUNCTION_37_1(v7);
  }

  OUTLINED_FUNCTION_41_0();
  *(v5 + 244) = v2;

  free(v0);
}

uint64_t FlightSnippet.Flight.totalLegs.getter()
{
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 248);
}

uint64_t FlightSnippet.Flight.totalLegs.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 248, v5);
  *(v6 + 248) = v0;
  return result;
}

uint64_t FlightSnippet.Flight.totalLegs.modify()
{
  v2 = OUTLINED_FUNCTION_73_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_92_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 80) = *(v0 + 248);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Flight.totalLegs.modify()
{
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_62_1();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_9_2();
    v7 = FlightSnippet.Flight._StorageClass.init(copying:)(v6);
    OUTLINED_FUNCTION_37_1(v7);
  }

  OUTLINED_FUNCTION_41_0();
  *(v5 + 248) = v2;

  free(v0);
}

uint64_t FlightSnippet.Flight.legFlightScheduleIds.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t FlightSnippet.Flight.legFlightScheduleIds.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  OUTLINED_FUNCTION_30_1(v6 + 256, v5);
  *(v6 + 256) = v0;
}

uint64_t FlightSnippet.Flight.legFlightScheduleIds.modify()
{
  v2 = OUTLINED_FUNCTION_120_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 56) = v0;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_114_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 256);

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.legFlightScheduleIds.modify()
{
  OUTLINED_FUNCTION_35_2();
  v4 = *(v3 + 48);
  if (v5)
  {
    OUTLINED_FUNCTION_129_0();
    FlightSnippet.Flight.legFlightScheduleIds.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_82_1();
    v7 = *(v2 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_80_1();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_9_2();
      v9 = FlightSnippet.Flight._StorageClass.init(copying:)(v8);
      OUTLINED_FUNCTION_112_0(v9);
    }

    OUTLINED_FUNCTION_40_2(v7 + 256);
    *(v7 + 256) = v4;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.legFlightUpdateIds.getter()
{
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t FlightSnippet.Flight.legFlightUpdateIds.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_60_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for FlightSnippet.Flight._StorageClass();
    OUTLINED_FUNCTION_31_2();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Flight._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  OUTLINED_FUNCTION_30_1(v6 + 264, v5);
  *(v6 + 264) = v0;
}

uint64_t FlightSnippet.Flight.legFlightUpdateIds.modify()
{
  v2 = OUTLINED_FUNCTION_120_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 56) = v0;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_114_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 264);

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Flight.legFlightUpdateIds.modify()
{
  OUTLINED_FUNCTION_35_2();
  v4 = *(v3 + 48);
  if (v5)
  {
    OUTLINED_FUNCTION_129_0();
    FlightSnippet.Flight.legFlightUpdateIds.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_82_1();
    v7 = *(v2 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_80_1();
      OUTLINED_FUNCTION_31_2();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_9_2();
      v9 = FlightSnippet.Flight._StorageClass.init(copying:)(v8);
      OUTLINED_FUNCTION_112_0(v9);
    }

    OUTLINED_FUNCTION_40_2(v7 + 264);
    *(v7 + 264) = v4;
  }

  free(v0);
}

uint64_t FlightSnippet.Airport.mapsID.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t FlightSnippet.Airport.timeZoneName.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t FlightSnippet.Airport.street.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t FlightSnippet.Airport.district.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t FlightSnippet.Airport.state.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t FlightSnippet.Airport.postalCode.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t FlightSnippet.Airport.countryCode.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t FlightSnippet.Airport.country.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t FlightSnippet.Airport.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for FlightSnippet.Airport(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17();
  v1 = OUTLINED_FUNCTION_81_1();

  return v2(v1);
}

uint64_t FlightSnippet.Airport.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for FlightSnippet.Airport(v2) + 72);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*FlightSnippet.Airport.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for FlightSnippet.Airport(v0);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

uint64_t FlightSnippet.Airport.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_86_1(a1);
  v1[8] = 0;
  v1[9] = v2;
  v1[10] = 0;
  v1[11] = 0;
  v1[12] = 0;
  v1[13] = v2;
  v1[14] = 0;
  v1[15] = v2;
  v1[16] = 0;
  v1[17] = v2;
  v1[18] = 0;
  v1[19] = v2;
  v1[20] = 0;
  v1[21] = v2;
  v1[22] = 0;
  v1[23] = v2;
  v1[24] = 0;
  v1[25] = v2;
  type metadata accessor for FlightSnippet.Airport(0);
  return UnknownStorage.init()();
}

uint64_t FlightSnippet.FlightInfo.carrier.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FlightSnippet.FlightInfo.carrierFs.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t FlightSnippet.FlightInfo.flightNumber.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t FlightSnippet.FlightInfo.relationship.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t FlightSnippet.FlightInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for FlightSnippet.FlightInfo(v0);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17();
  v1 = OUTLINED_FUNCTION_81_1();

  return v2(v1);
}

uint64_t FlightSnippet.FlightInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for FlightSnippet.FlightInfo(v2) + 32);
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*FlightSnippet.FlightInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for FlightSnippet.FlightInfo(v0);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

uint64_t FlightSnippet.FlightInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_86_1(a1);
  type metadata accessor for FlightSnippet.FlightInfo(0);
  return UnknownStorage.init()();
}

uint64_t FlightSnippet.Leg.status.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 16);
}

void FlightSnippet.Leg.status.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for FlightSnippet.Leg(0);
  v9 = OUTLINED_FUNCTION_74_1(v8);
  v11 = *(v2 + v3);
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v12 = OUTLINED_FUNCTION_9_2();
    v13 = FlightSnippet.Leg._StorageClass.init(copying:)(v12);
    OUTLINED_FUNCTION_54_1(v13);
  }

  OUTLINED_FUNCTION_30_1(v11 + 16, v10);
  *(v11 + 16) = v7;
  *(v11 + 24) = v5 & 1;
  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Leg.status.modify()
{
  v2 = OUTLINED_FUNCTION_55_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 88) = v0;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_92_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v5 = *(v0 + 24);
  *(v1 + 72) = *(v0 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.status.modify()
{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_19_1();
  v2 = *(v1 + 72);
  v3 = *(v0 + 84);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_20_1();
    v10 = OUTLINED_FUNCTION_9_2();
    v7 = FlightSnippet.Leg._StorageClass.init(copying:)(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_41_0();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  OUTLINED_FUNCTION_203();

  free(v11);
}

uint64_t FlightSnippet.Leg.enRoute.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 25);
}

uint64_t FlightSnippet.Leg.enRoute.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 25, v5);
  *(v6 + 25) = v0 & 1;
  return result;
}

uint64_t FlightSnippet.Leg.enRoute.modify()
{
  v2 = OUTLINED_FUNCTION_73_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_115_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 84) = *(v0 + 25);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.enRoute.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_34_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 25) = v3;

  free(v1);
}

uint64_t FlightSnippet.Leg.departureDelayed.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 26);
}

uint64_t FlightSnippet.Leg.departureDelayed.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 26, v5);
  *(v6 + 26) = v0 & 1;
  return result;
}

uint64_t FlightSnippet.Leg.departureDelayed.modify()
{
  v2 = OUTLINED_FUNCTION_73_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_115_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 84) = *(v0 + 26);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.departureDelayed.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_34_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 26) = v3;

  free(v1);
}

uint64_t FlightSnippet.Leg.arrivalDelayed.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 27);
}

uint64_t FlightSnippet.Leg.arrivalDelayed.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 27, v5);
  *(v6 + 27) = v0 & 1;
  return result;
}

uint64_t FlightSnippet.Leg.arrivalDelayed.modify()
{
  v2 = OUTLINED_FUNCTION_73_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_115_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 84) = *(v0 + 27);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.arrivalDelayed.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_34_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 27) = v3;

  free(v1);
}

uint64_t FlightSnippet.Flight.contentHash.getter(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Leg.title : FlightSnippet.Leg(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Leg.title.setter(v1, v2);
}

void FlightSnippet.Leg.title.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = type metadata accessor for FlightSnippet.Leg(v6);
  v8 = OUTLINED_FUNCTION_74_1(v7);
  v10 = *(v3 + v5);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v11 = OUTLINED_FUNCTION_9_2();
    v12 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
    OUTLINED_FUNCTION_54_1(v12);
  }

  OUTLINED_FUNCTION_30_1(v10 + 32, v9);
  *(v10 + 32) = v4;
  *(v10 + 40) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Leg.title.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_4_2(v3);
  v5 = type metadata accessor for FlightSnippet.Leg(v4);
  OUTLINED_FUNCTION_16_1(v5);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Leg.title.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Leg.title.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Leg._StorageClass(v10);
      OUTLINED_FUNCTION_53_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_9_2();
      v12 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
      OUTLINED_FUNCTION_37_1(v12);
    }

    OUTLINED_FUNCTION_40_2(v9 + 32);
    *(v9 + 32) = v3;
    *(v9 + 40) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Leg.departurePublishedTime.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 48);
}

uint64_t FlightSnippet.Leg.departurePublishedTime.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 48, v5);
  *(v6 + 48) = v0;
  return result;
}

uint64_t FlightSnippet.Leg.departurePublishedTime.modify()
{
  v2 = OUTLINED_FUNCTION_55_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_3(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 72) = *(v0 + 48);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.departurePublishedTime.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_12_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t FlightSnippet.Leg.departureActualTime.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 56);
}

uint64_t FlightSnippet.Leg.departureActualTime.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 56, v5);
  *(v6 + 56) = v0;
  return result;
}

uint64_t FlightSnippet.Leg.departureActualTime.modify()
{
  v2 = OUTLINED_FUNCTION_55_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_3(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 72) = *(v0 + 56);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.departureActualTime.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_12_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t FlightSnippet.Flight.carrierIcao.getter(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Leg.departureTerminal : FlightSnippet.Leg(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Leg.departureTerminal.setter(v1, v2);
}

void FlightSnippet.Leg.departureTerminal.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = type metadata accessor for FlightSnippet.Leg(v6);
  v8 = OUTLINED_FUNCTION_74_1(v7);
  v10 = *(v3 + v5);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v11 = OUTLINED_FUNCTION_9_2();
    v12 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
    OUTLINED_FUNCTION_54_1(v12);
  }

  OUTLINED_FUNCTION_30_1(v10 + 64, v9);
  *(v10 + 64) = v4;
  *(v10 + 72) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Leg.departureTerminal.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_4_2(v3);
  v5 = type metadata accessor for FlightSnippet.Leg(v4);
  OUTLINED_FUNCTION_16_1(v5);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v6 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Leg.departureTerminal.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Leg.departureTerminal.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Leg._StorageClass(v10);
      OUTLINED_FUNCTION_53_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_9_2();
      v12 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
      OUTLINED_FUNCTION_37_1(v12);
    }

    OUTLINED_FUNCTION_40_2(v9 + 64);
    *(v9 + 64) = v3;
    *(v9 + 72) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Flight.carrierFs.getter(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_94();
}

void key path setter for FlightSnippet.Leg.departureGate : FlightSnippet.Leg(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FlightSnippet.Leg.departureGate.setter(v1, v2);
}

void FlightSnippet.Leg.departureGate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = OUTLINED_FUNCTION_7_0();
  v7 = type metadata accessor for FlightSnippet.Leg(v6);
  v8 = OUTLINED_FUNCTION_74_1(v7);
  v10 = *(v3 + v5);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v11 = OUTLINED_FUNCTION_9_2();
    v12 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
    OUTLINED_FUNCTION_54_1(v12);
  }

  OUTLINED_FUNCTION_30_1(v10 + 80, v9);
  *(v10 + 80) = v4;
  *(v10 + 88) = v2;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Leg.departureGate.modify()
{
  v2 = OUTLINED_FUNCTION_50_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_4_2(v3);
  v5 = type metadata accessor for FlightSnippet.Leg(v4);
  OUTLINED_FUNCTION_16_1(v5);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  v6 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Leg.departureGate.modify()
{
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    OUTLINED_FUNCTION_76_0();
    v6 = OUTLINED_FUNCTION_52_1();
    FlightSnippet.Leg.departureGate.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_47_2();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_17_2();
      type metadata accessor for FlightSnippet.Leg._StorageClass(v10);
      OUTLINED_FUNCTION_53_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_9_2();
      v12 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
      OUTLINED_FUNCTION_37_1(v12);
    }

    OUTLINED_FUNCTION_40_2(v9 + 80);
    *(v9 + 80) = v3;
    *(v9 + 88) = v2;
  }

  free(v0);
}

uint64_t FlightSnippet.Leg.departureGateClosed.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 96);
}

uint64_t FlightSnippet.Leg.departureGateClosed.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 96, v5);
  *(v6 + 96) = v0;
  return result;
}

uint64_t FlightSnippet.Leg.departureGateClosed.modify()
{
  v2 = OUTLINED_FUNCTION_55_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_3(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 72) = *(v0 + 96);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.departureGateClosed.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_12_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 96) = v3;

  free(v1);
}

uint64_t FlightSnippet.Leg.departureRunway.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 104);
}

uint64_t FlightSnippet.Leg.departureRunway.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 104, v5);
  *(v6 + 104) = v0;
  return result;
}

uint64_t FlightSnippet.Leg.departureRunway.modify()
{
  v2 = OUTLINED_FUNCTION_55_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_3(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 72) = *(v0 + 104);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.departureRunway.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_12_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 104) = v3;

  free(v1);
}

uint64_t FlightSnippet.Leg.isTaxiing.getter()
{
  OUTLINED_FUNCTION_13_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v2 + 112);
}

uint64_t FlightSnippet.Leg.isTaxiing.setter()
{
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = OUTLINED_FUNCTION_71_1(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_48_0(v8);
  }

  result = OUTLINED_FUNCTION_30_1(v6 + 112, v5);
  *(v6 + 112) = v0 & 1;
  return result;
}

uint64_t FlightSnippet.Leg.isTaxiing.modify()
{
  v2 = OUTLINED_FUNCTION_73_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_32_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_115_0(v4);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *(v1 + 84) = *(v0 + 112);
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.isTaxiing.modify(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_34_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v7 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v7);
    OUTLINED_FUNCTION_37_1(v8);
  }

  OUTLINED_FUNCTION_41_0();
  *(v6 + 112) = v3;

  free(v1);
}

uint64_t FlightSnippet.Leg.departureAirport.getter@<X0>(void *a1@<X8>)
{
  return FlightSnippet.Leg.departureAirport.getter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of EagerResolutionService?();
  v6 = type metadata accessor for FlightSnippet.Airport(0);
  v7 = OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_166(v7, v8, v6);
  if (!v9)
  {
    return outlined init with take of FlightSnippet.Flight();
  }

  FlightSnippet.Airport.init()(a1);
  v10 = OUTLINED_FUNCTION_93_0();
  result = OUTLINED_FUNCTION_166(v10, v11, v6);
  if (!v9)
  {
    return outlined destroy of IntentApplication?(v5, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  }

  return result;
}

uint64_t key path setter for FlightSnippet.flight : FlightSnippet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_114(v9);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_121_0();
  outlined init with copy of FlightSnippet.Flight();
  return a7(v7);
}

void FlightSnippet.Leg.departureAirport.modify()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_89_1(v1);
  v2 = OUTLINED_FUNCTION_63_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_114(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[4] = v6;
  type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_17();
  v8 = *(v7 + 64);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_0();
  v9 = OUTLINED_FUNCTION_25_1();
  if (v10)
  {
    OUTLINED_FUNCTION_21_1(v9);
    OUTLINED_FUNCTION_25_1();
    if (!v10)
    {
      outlined destroy of IntentApplication?(v6, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_130_0();
  }

  OUTLINED_FUNCTION_148();
}

{
  OUTLINED_FUNCTION_202();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    outlined init with copy of FlightSnippet.Flight();
    v2(v3);
    outlined destroy of FlightSnippet.Flight(v4);
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_203();

  free(v7);
}

uint64_t FlightSnippet.Leg.hasDepartureAirport.getter()
{
  return FlightSnippet.Leg.hasDepartureAirport.getter();
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of EagerResolutionService?();
  v3 = type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_166(v0, 1, v3);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  outlined destroy of IntentApplication?(v0, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  return v5;
}

uint64_t FlightSnippet.Leg.arrivalPublishedTime.modify()
{
  v0 = OUTLINED_FUNCTION_55_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_3(v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_87_1();
  return OUTLINED_FUNCTION_46_2();
}

uint64_t FlightSnippet.Leg.arrivalPublishedTime.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_1();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return *(v4 + v5);
}

void FlightSnippet.Leg.arrivalPublishedTime.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_102_0();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_42_2();
  v8 = type metadata accessor for FlightSnippet.Leg(v7);
  v9 = OUTLINED_FUNCTION_74_1(v8);
  v10 = *(v3 + v4);
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v11 = OUTLINED_FUNCTION_9_2();
    v12 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
    OUTLINED_FUNCTION_54_1(v12);
  }

  v13 = OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_30_1(v13, v14);
  *(v10 + v6) = v2;
  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Leg.arrivalActualTime.modify()
{
  v0 = OUTLINED_FUNCTION_55_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_3(v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_87_1();
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.arrivalPublishedTime.modify()
{
  OUTLINED_FUNCTION_202();
  v2 = v1;
  OUTLINED_FUNCTION_35_2();
  v4 = *(v3 + 72);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 80);
    OUTLINED_FUNCTION_20_1();
    v11 = OUTLINED_FUNCTION_9_2();
    v8 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_41_0();
  *(v8 + v2) = v4;
  OUTLINED_FUNCTION_203();

  free(v12);
}

void FlightSnippet.Leg.arrivalTerminal.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  FlightSnippet.Leg.arrivalTerminal.setter(a1, a2, &OBJC_IVAR____TtCVV10OmniSearch13FlightSnippet3LegP33_1432903E5DFDE0C5F6864C747BE81CE313_StorageClass__arrivalTerminal, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_102_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_93();
  v28 = *(type metadata accessor for FlightSnippet.Leg(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v31 = OUTLINED_FUNCTION_9_2();
    isUniquelyReferenced_nonNull_native = FlightSnippet.Leg._StorageClass.init(copying:)(v31);
    v30 = isUniquelyReferenced_nonNull_native;
    *(v27 + v28) = isUniquelyReferenced_nonNull_native;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_107_0(isUniquelyReferenced_nonNull_native, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_101_0();
}

uint64_t FlightSnippet.Leg.arrivalTerminal.modify()
{
  v0 = OUTLINED_FUNCTION_50_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_4_2(v1);
  v3 = type metadata accessor for FlightSnippet.Leg(v2);
  OUTLINED_FUNCTION_49_1(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t FlightSnippet.Leg.arrivalTerminal.getter(void *a1)
{
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();

  return OUTLINED_FUNCTION_107();
}

uint64_t FlightSnippet.Leg.arrivalGate.modify()
{
  v0 = OUTLINED_FUNCTION_50_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_4_2(v1);
  v3 = type metadata accessor for FlightSnippet.Leg(v2);
  OUTLINED_FUNCTION_49_1(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t FlightSnippet.Leg.gateArrival.modify()
{
  v0 = OUTLINED_FUNCTION_55_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_3(v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_87_1();
  return OUTLINED_FUNCTION_46_2();
}

uint64_t FlightSnippet.Leg.arrivalRunway.modify()
{
  v0 = OUTLINED_FUNCTION_55_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_3(v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_87_1();
  return OUTLINED_FUNCTION_46_2();
}

void FlightSnippet.Leg.arrivalAirport.modify()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_89_1(v1);
  v2 = OUTLINED_FUNCTION_63_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_114(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[4] = v6;
  type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_17();
  v8 = *(v7 + 64);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_0();
  v9 = OUTLINED_FUNCTION_25_1();
  if (v10)
  {
    OUTLINED_FUNCTION_21_1(v9);
    OUTLINED_FUNCTION_25_1();
    if (!v10)
    {
      outlined destroy of IntentApplication?(v6, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_130_0();
  }

  OUTLINED_FUNCTION_148();
}

uint64_t FlightSnippet.Leg.clearDepartureAirport()(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_128_0();
  v8 = OUTLINED_FUNCTION_74_1(v7);
  v9 = *(v1 + v3);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v10 = OUTLINED_FUNCTION_9_2();
    v11 = FlightSnippet.Leg._StorageClass.init(copying:)(v10);
    OUTLINED_FUNCTION_54_1(v11);
  }

  v12 = type metadata accessor for FlightSnippet.Airport(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v12);
  OUTLINED_FUNCTION_109_0();
  outlined assign with take of FlightSnippet.Airport?(v2, v9 + a1);
  return swift_endAccess();
}

uint64_t FlightSnippet.Leg.baggageClaim.modify()
{
  v0 = OUTLINED_FUNCTION_50_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_4_2(v1);
  v3 = type metadata accessor for FlightSnippet.Leg(v2);
  OUTLINED_FUNCTION_49_1(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t FlightSnippet.Leg.updatedAt.modify()
{
  v0 = OUTLINED_FUNCTION_55_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_3(v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_87_1();
  return OUTLINED_FUNCTION_46_2();
}

uint64_t FlightSnippet.Leg.departureAirport.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v8 = *(OUTLINED_FUNCTION_128_0() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_20_1();
    v11 = OUTLINED_FUNCTION_9_2();
    v10 = FlightSnippet.Leg._StorageClass.init(copying:)(v11);
    *(v5 + v8) = v10;
  }

  OUTLINED_FUNCTION_52_1();
  outlined init with take of FlightSnippet.Flight();
  type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_109_0();
  outlined assign with take of FlightSnippet.Airport?(v3, v10 + a2);
  return swift_endAccess();
}

void FlightSnippet.Leg.divertedAirport.modify()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_89_1(v1);
  v2 = OUTLINED_FUNCTION_63_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_114(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[4] = v6;
  type metadata accessor for FlightSnippet.Airport(0);
  OUTLINED_FUNCTION_17();
  v8 = *(v7 + 64);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_0();
  v9 = OUTLINED_FUNCTION_25_1();
  if (v10)
  {
    OUTLINED_FUNCTION_21_1(v9);
    OUTLINED_FUNCTION_25_1();
    if (!v10)
    {
      outlined destroy of IntentApplication?(v6, &_s10OmniSearch13FlightSnippetV7AirportVSgMd, &_s10OmniSearch13FlightSnippetV7AirportVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_130_0();
  }

  OUTLINED_FUNCTION_148();
}

{
  FlightSnippet.Leg.departureAirport.modify();
}

uint64_t FlightSnippet.Leg.uid.modify()
{
  v0 = OUTLINED_FUNCTION_50_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_4_2(v1);
  v3 = type metadata accessor for FlightSnippet.Leg(v2);
  OUTLINED_FUNCTION_49_1(v3);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();

  return OUTLINED_FUNCTION_32_0();
}

void FlightSnippet.Leg.arrivalTerminal.modify()
{
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_6_1();
  if (v5)
  {
    v6 = v4;
    OUTLINED_FUNCTION_76_0();
    v7 = OUTLINED_FUNCTION_52_1();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      OUTLINED_FUNCTION_20_1();
      v15 = OUTLINED_FUNCTION_9_2();
      isUniquelyReferenced_nonNull_native = FlightSnippet.Leg._StorageClass.init(copying:)(v15);
      v12 = isUniquelyReferenced_nonNull_native;
      *(v14 + v13) = isUniquelyReferenced_nonNull_native;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_107_0(isUniquelyReferenced_nonNull_native, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  OUTLINED_FUNCTION_203();

  free(v17);
}

uint64_t FlightSnippet.Leg.feedUpdateTime.modify()
{
  v0 = OUTLINED_FUNCTION_55_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_3(v1);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_87_1();
  return OUTLINED_FUNCTION_46_2();
}

uint64_t FlightSnippet.Flight.unknownFields.getter()
{
  OUTLINED_FUNCTION_113();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_94();

  return v1(v0);
}

uint64_t FlightSnippet.Flight.unknownFields.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_42_2();
  type metadata accessor for UnknownStorage();
  OUTLINED_FUNCTION_17();
  v1 = OUTLINED_FUNCTION_107();

  return v2(v1);
}

uint64_t FlightSnippet.Flight.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_52_1();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t FlightSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for FlightSnippet(0);
  UnknownStorage.init()();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for FlightSnippet.Flight(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t static FlightSnippet.Status.allCases.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t static FlightSnippet.Status.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_107_0(a1, v3);
  static FlightSnippet.Status.allCases = a1;
}

uint64_t (*static FlightSnippet.Status.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_107();
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance FlightSnippet.Status@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static FlightSnippet.Status.allCases;
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static FlightSnippet._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FlightSnippet._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DBC88F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "flight";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_card_search";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_icao_search";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query_intended_flight_info";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "selected_leg_index";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "search_timestamp";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static FlightSnippet.Status._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FlightSnippet.Status._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25DBC8900;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "ACTIVE";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CANCELED";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "DIVERTED";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "DATA_SOURCE_NEEDED";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "LANDED";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "NOT_OPERATIONAL";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "REDIRECTED";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "SCHEDULED";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static FlightSnippet.Flight._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FlightSnippet.Flight._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_25DBC8910;
  v4 = v50 + v3 + v1[14];
  *(v50 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v50 + v3 + v2 + v1[14];
  *(v50 + v3 + v2) = 2;
  *v8 = "content_hash";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v50 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "carrier_iata";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v50 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "carrier_icao";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v50 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "carrier_fs";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v50 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "carrier_name";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v50 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "carrier_phone_number";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v50 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "flight_number";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v50 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "flight_departure_scheduled";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v7();
  v23 = (v50 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "flight_arrival_scheduled";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v7();
  v25 = (v50 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "legs";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v7();
  v27 = (v50 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "code_shares";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v50 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "leg_index";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v7();
  v31 = (v50 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "operator_carrier_code";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v7();
  v33 = (v50 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "operator_flight_number";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v7();
  v35 = (v50 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "website";
  *(v36 + 1) = 7;
  v36[16] = 2;
  v7();
  v37 = (v50 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 20;
  *v38 = "last_updated";
  *(v38 + 1) = 12;
  v38[16] = 2;
  v7();
  v39 = (v50 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 21;
  *v40 = "legs_not_updated";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v7();
  v41 = (v50 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 22;
  *v42 = "departure_UTC_variance";
  *(v42 + 1) = 22;
  v42[16] = 2;
  v7();
  v43 = (v50 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 23;
  *v44 = "total_legs";
  *(v44 + 1) = 10;
  v44[16] = 2;
  v7();
  v45 = (v50 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 24;
  *v46 = "leg_flight_schedule_ids";
  *(v46 + 1) = 23;
  v46[16] = 2;
  v7();
  v47 = (v50 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 25;
  *v48 = "leg_flight_update_ids";
  *(v48 + 1) = 21;
  v48[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static FlightSnippet.Airport._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FlightSnippet.Airport._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25DBC8920;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "code";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "city";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "physicalCity";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "maps_id";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "latitude";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "longitude";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "time_zone_name";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "street";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "district";
  *(v25 + 1) = 8;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "state";
  *(v27 + 1) = 5;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "postal_code";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "country_code";
  *(v31 + 1) = 12;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "country";
  *(v33 + 1) = 7;
  v33[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static FlightSnippet.FlightInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FlightSnippet.FlightInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DBC8930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "carrier";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "carrier_fs";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "flight_number";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "relationship";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static FlightSnippet.Leg._protobuf_nameMap);
  __swift_project_value_buffer(v0, static FlightSnippet.Leg._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_25DBC8940;
  v4 = v56 + v3 + v1[14];
  *(v56 + v3) = 1;
  *v4 = "status";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v56 + v3 + v2 + v1[14];
  *(v56 + v3 + v2) = 2;
  *v8 = "en_route";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v56 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "departure_delayed";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v56 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "arrival_delayed";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v56 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v56 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "departure_published_time";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v56 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "departure_actual_time";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v7();
  v19 = (v56 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "departure_terminal";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v56 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "departure_gate";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v56 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "departure_gate_closed";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v7();
  v25 = (v56 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "departure_runway";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v56 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "is_taxiing";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v7();
  v29 = (v56 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "departure_airport";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v7();
  v31 = (v56 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "arrival_published_time";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v7();
  v33 = (v56 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "arrival_actual_time";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v7();
  v35 = (v56 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "arrival_terminal";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v7();
  v37 = (v56 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "arrival_gate";
  *(v38 + 1) = 12;
  v38[16] = 2;
  v7();
  v39 = (v56 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "gate_arrival";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v56 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "arrival_runway";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v7();
  v43 = (v56 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "arrival_airport";
  *(v44 + 1) = 15;
  v44[16] = 2;
  v7();
  v45 = (v56 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "baggage_claim";
  *(v46 + 1) = 13;
  v46[16] = 2;
  v7();
  v47 = (v56 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "updated_at";
  *(v48 + 1) = 10;
  v48[16] = 2;
  v7();
  v49 = (v56 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "diverted_airport";
  *(v50 + 1) = 16;
  v50[16] = 2;
  v7();
  v51 = (v56 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "uid";
  *(v52 + 1) = 3;
  v52[16] = 2;
  v7();
  v53 = (v56 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "feed_update_time";
  *(v54 + 1) = 16;
  v54[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}