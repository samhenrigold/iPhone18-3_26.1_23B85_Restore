uint64_t NLResponse.requestLanguageVariant.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for Siri_Nlu_External_MultilingualVariant();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, v3, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v8 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  }

  else
  {
    v10 = Siri_Nlu_External_LanguageVariantResult.multilingualVariant.getter();
    (*(v9 + 8))(v3, v8);
    if (*(v10 + 16))
    {
      (*(v5 + 16))(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v11 = Siri_Nlu_External_MultilingualVariant.languageVariantName.getter();
      (*(v5 + 8))(v7, v4);
      return v11;
    }
  }

  return 0;
}

uint64_t NLResponse.deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode;
  v2 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  return v0;
}

uint64_t ConversationUserInput.resultCandidateId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConversationUserInput.conversationUserInputId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *ConversationUserInput.speechPackage.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *ConversationUserInput.userSpecificInfoForRecognizedUser.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser);
  v2 = v1;
  return v1;
}

void *ConversationUserInput.userSpecificInfoForUserMeetingSessionThreshold.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold);
  v2 = v1;
  return v1;
}

uint64_t ConversationUserInput.utterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance);

  return v1;
}

uint64_t NLResponse.nlResponseStatusCode.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

char *ConversationUserInput.init(resultCandidateId:speechPackage:nlResponse:mitigationDecision:userSpecificInfoForRecognizedUser:userSpecificInfoForUserMeetingSessionThreshold:remoteRequestWasMadeInSession:utterance:asrLocation:nlLocation:flowRedirectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v41 = a8;
  v39 = a12;
  v40 = a13;
  v37 = a7;
  v38 = a11;
  v35 = a9;
  v36 = a10;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v22 + 8))(v24, v21);
  *(v14 + 4) = v25;
  *(v14 + 5) = v27;
  *(v14 + 6) = a3;
  *(v14 + 7) = a4;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a5, &v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  *&v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser] = a6;
  *&v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold] = v37;
  *&v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext] = 0;
  v28 = &v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
  v29 = v36;
  *v28 = v35;
  v28[1] = v29;
  v30 = OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation;
  v31 = type metadata accessor for ExecutionLocation();
  v32 = *(*(v31 - 8) + 32);
  v32(&v14[v30], v38, v31);
  v32(&v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v39, v31);
  v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession] = v41;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v40, &v14[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  return v14;
}

uint64_t PommesInfo.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v21 = *(v0 + 16);
  v8 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSgMd, &_s21SiriInformationSearch14PommesResponseCSgMR);
  v9 = String.init<A>(describing:)();
  v21 = 123;
  v22 = 0xE100000000000000;
  MEMORY[0x1E12A1580](v9);

  v10 = v21;
  v11 = v22;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, v7, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  v21 = v10;
  v22 = v11;

  MEMORY[0x1E12A1580](v12, v14);

  v15 = v21;
  v16 = v22;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, v4, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  v21 = v15;
  v22 = v16;

  MEMORY[0x1E12A1580](v17, v19);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v21;
}

uint64_t static PommesInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static PommesInfo.supportsSecureCoding = a1;
  return result;
}

void *PommesInfo.pommesResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t PommesInfo.init(pommesResponse:pommesError:pommesSearchReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a2, v3 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a3, v3 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  return v3;
}

uint64_t PommesInfo.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  return v0;
}

void type metadata completion function for NLResponse(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for Siri_Nlu_External_LanguageVariantResult?, MEMORY[0x1E69D0BD8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for ServerFallbackReason?, MEMORY[0x1E69D0790]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for NLRoutingDecisionMessage.RoutingDecision?, MEMORY[0x1E69D0300]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata completion function for ConversationUserInput(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for TTResponseMessage.MitigationDecision?, MEMORY[0x1E69D0280]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ExecutionLocation();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for FlowRedirectContext?, MEMORY[0x1E69CFB38]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for PommesInfo(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for PommesError?, MEMORY[0x1E69D04F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(319, &lazy cache variable for type metadata for PommesSearchReason?, MEMORY[0x1E69CE650]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Siri_Nlu_External_LanguageVariantResult?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NLResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NLResponse.CodingKeys and conformance NLResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NLResponse.CodingKeys and conformance NLResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type NLResponse.CodingKeys and conformance NLResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLResponse.CodingKeys and conformance NLResponse.CodingKeys);
  }

  return result;
}

unint64_t specialized NLResponse.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NLResponse.CodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t CorrectionsEngine.getCorrectionFlow(pluginId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for SiriCorrectionsFlow(0);
  type metadata accessor for ResponseFactory();
  swift_allocObject();

  v11 = ResponseFactory.init()();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static SiriKitEventSender.current.getter();
  *&v14 = specialized SiriCorrectionsFlow.__allocating_init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(a1, a2, v11, &v14, v5, v13, v10, a3, a4);
  lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow();
  Flow.toActingFlow()();
}

unint64_t lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow()
{
  result = lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow;
  if (!lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow)
  {
    type metadata accessor for SiriCorrectionsFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow);
  }

  return result;
}

uint64_t get_witness_table_14SiriKitRuntime17CorrectionsEngineRzlqd__0aB4Flow06ActingF0HD2_AC0F0PACE02togF0QryFQOyAA0adF0C_Qo_HOTm(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriCorrectionsFlow(255);
  lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow();
  return swift_getOpaqueTypeConformance2();
}

char *SiriCorrectionsFlow.__allocating_init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, __int128 *a6)
{
  v13 = a5[3];
  v14 = a5[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a5, v13);
  v16 = specialized SiriCorrectionsFlow.__allocating_init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(a1, a2, a3, a4, v15, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v16;
}

uint64_t static SiriCorrectionsFlow.State.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  outlined init with copy of SiriCorrectionsFlow.State(a1, v4);
  outlined init with copy of SiriCorrectionsFlow.State(a2, v5);
  if (!v4[3])
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime0A15CorrectionsFlowC5StateO_AEtMd, &_s14SiriKitRuntime0A15CorrectionsFlowC5StateO_AEtMR);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  outlined destroy of SiriCorrectionsFlow.State(v5);
LABEL_6:
  outlined destroy of SiriCorrectionsFlow.State(v4);
  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SiriCorrectionsFlow.State(__int128 *a1, __int128 *a2)
{
  outlined init with copy of SiriCorrectionsFlow.State(a1, v4);
  outlined init with copy of SiriCorrectionsFlow.State(a2, v5);
  if (!v4[3])
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime0A15CorrectionsFlowC5StateO_AEtMd, &_s14SiriKitRuntime0A15CorrectionsFlowC5StateO_AEtMR);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  outlined destroy of SiriCorrectionsFlow.State(v5);
LABEL_6:
  outlined destroy of SiriCorrectionsFlow.State(v4);
  return 1;
}

uint64_t SiriCorrectionsFlow.hostPluginId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriCorrectionsFlow.hostPluginId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SiriCorrectionsFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state;
  swift_beginAccess();
  return outlined init with copy of SiriCorrectionsFlow.State((v1 + v3), a1);
}

uint64_t SiriCorrectionsFlow.state.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state;
  swift_beginAccess();
  outlined assign with take of SiriCorrectionsFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

char *SiriCorrectionsFlow.init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, __int128 *a6)
{
  v13 = a5[3];
  v14 = a5[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a5, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = specialized SiriCorrectionsFlow.init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(a1, a2, a3, a4, v18, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v20;
}

uint64_t SiriCorrectionsFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriCorrectionsFlow(0);
  lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(&lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow, type metadata accessor for SiriCorrectionsFlow, &protocol conformance descriptor for SiriCorrectionsFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t SiriCorrectionsFlow.execute()(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v2[42] = *v1;
  v3 = type metadata accessor for PluginAction();
  v2[43] = v3;
  v2[44] = *(v3 - 8);
  v2[45] = swift_task_alloc();
  v4 = type metadata accessor for CorrectionsExitValue();
  v2[46] = v4;
  v2[47] = *(v4 - 8);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v5 = type metadata accessor for ActivityType();
  v2[53] = v5;
  v2[54] = *(v5 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(), 0, 0);
}

uint64_t SiriCorrectionsFlow.execute()()
{
  v81 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 328);
  v2 = type metadata accessor for Logger();
  *(v0 + 456) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/CorrectionsFlow.swift", 36, 2, "execute()", 9, 2);
  (*(*v1 + 216))();
  if (*(v0 + 136))
  {
    v4 = *(v0 + 376);
    v3 = *(v0 + 384);
    v5 = *(v0 + 368);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 112), v0 + 152);
    __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
    dispatch thunk of CorrectingFlow.correctionsExitValue.getter();
    SiriCorrectionsFlow.logExecutedCorrectionsFlow(exitValue:)(v3);
    (*(v4 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
LABEL_16:
    v33 = *(v0 + 392);
    v34 = *(v0 + 344);
    v35 = *(v0 + 352);
    v36 = *(v0 + 328);
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    (*(*v36 + 224))(v79);
    v37 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
    swift_beginAccess();
    outlined init with copy of ReferenceResolutionClientProtocol?(v36 + v37, v33, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 392), &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
      static ExecuteResponse.complete()();
    }

    else
    {
      (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 392), *(v0 + 344));
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1DC659000, v38, v39, "[CorrectionsFlow] sending followup action", v40, 2u);
        MEMORY[0x1E12A2F50](v40, -1, -1);
      }

      v42 = *(v0 + 352);
      v41 = *(v0 + 360);
      v43 = *(v0 + 344);

      static ExecuteResponse.redirect(nextPluginAction:)();
      (*(v42 + 8))(v41, v43);
    }

LABEL_21:

    v44 = *(v0 + 8);

    return v44();
  }

  v6 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 424);
  v8 = *(v0 + 432);
  v10 = *(v0 + 416);
  v11 = *(v0 + 328);
  v77 = *(v0 + 408);
  v78 = *(v0 + 336);
  v69 = v8[13];
  v69(v7, *MEMORY[0x1E69CFD90], v9);
  v12 = type metadata accessor for SiriKitReliabilityCodes();
  v68 = *(v12 - 8);
  v73 = v12;
  v70 = *(v68 + 56);
  v70(v10, 1, 1);
  v71 = (v11 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender);
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), *(v11 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24));
  type metadata accessor for SiriKitEvent();
  v72 = v8[2];
  v72(v6, v7, v9);
  outlined init with copy of ReferenceResolutionClientProtocol?(v10, v77, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v78;
  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v14 = v8[1];
  v14(v7, v9);
  v15 = v11[13];
  v16 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v15);
  LOBYTE(v16) = (*(v16 + 16))(v15, v16);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  if ((v16 & 1) == 0)
  {
    if (v19)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "[CorrectionsFlow] nothing to undo in correctionsManager in flow", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    v28 = *(v0 + 440);
    v27 = *(v0 + 448);
    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v31 = *(v0 + 408);
    v74 = *(v0 + 336);

    v69(v27, *MEMORY[0x1E69CFDD0], v29);
    (*(v68 + 104))(v30, *MEMORY[0x1E69CFC70], v73);
    (v70)(v30, 0, 1, v73);
    __swift_project_boxed_opaque_existential_1(v71, v71[3]);
    v72(v28, v27, v29);
    outlined init with copy of ReferenceResolutionClientProtocol?(v30, v31, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v32 = swift_allocObject();
    v32[2] = 0xD000000000000027;
    v32[3] = 0x80000001DCA81C00;
    v32[4] = v74;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v14(v27, v29);
    goto LABEL_16;
  }

  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v17, v18, "[CorrectionsFlow] undoing using correctionsManager", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  v21 = v11[13];
  v22 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v21);
  (*(v22 + 24))(v21, v22);
  outlined init with copy of UndoResult(v0 + 16, v0 + 64);
  if (*(v0 + 104))
  {
    if (*(v0 + 104) != 1)
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 64), v0 + 192);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1DC659000, v61, v62, "[CorrectionsFlow] Handling registered correcting flow", v63, 2u);
        MEMORY[0x1E12A2F50](v63, -1, -1);
      }

      if (SiriCorrectionsFlow.isSteeringInputAcceptedBy(correctingFlow:)((v0 + 192)))
      {
        v64 = *(v0 + 400);
        v65 = *(v0 + 328);
        (*(*(v0 + 352) + 56))(v64, 1, 1, *(v0 + 344));
        v66 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
        swift_beginAccess();
        outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v64, v65 + v66, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
        swift_endAccess();
      }

      v67 = *(v0 + 328);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 192, v0 + 232);
      (*(*v67 + 224))(v0 + 232);
      __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      static ExecuteResponse.ongoing<A>(next:)();
      outlined destroy of UndoResult(v0 + 16);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
      goto LABEL_21;
    }

    v23 = *(v0 + 64);
    *(v0 + 464) = v23;
    v24 = swift_task_alloc();
    *(v0 + 472) = v24;
    *v24 = v0;
    v24[1] = SiriCorrectionsFlow.execute();

    return SiriCorrectionsFlow.execute(undoCommands:)(v23);
  }

  else
  {
    v76 = v14;
    v45 = *(v0 + 64);
    *(v0 + 480) = v45;
    v46 = v45;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v45;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_1DC659000, v47, v48, "[CorrectionsFlow] corrections manager returned failure: %@", v49, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v50, -1, -1);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    v54 = *(v0 + 440);
    v53 = *(v0 + 448);
    v56 = *(v0 + 416);
    v55 = *(v0 + 424);
    v57 = *(v0 + 408);
    v75 = *(v0 + 336);

    v69(v53, *MEMORY[0x1E69CFDD0], v55);
    (*(v68 + 104))(v56, *MEMORY[0x1E69CFC70], v73);
    (v70)(v56, 0, 1, v73);
    __swift_project_boxed_opaque_existential_1(v71, v71[3]);
    v72(v54, v53, v55);
    outlined init with copy of ReferenceResolutionClientProtocol?(v56, v57, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v58 = swift_allocObject();
    v58[2] = 0xD000000000000035;
    v58[3] = 0x80000001DCA81C30;
    v58[4] = v75;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v76(v53, v55);
    v59 = swift_task_alloc();
    *(v0 + 488) = v59;
    *v59 = v0;
    v59[1] = SiriCorrectionsFlow.execute();
    v60 = MEMORY[0x1E69E7CC0];

    return SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)(v60, 1);
  }
}

{

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(), 0, 0);
}

{
  v16 = v0;
  outlined destroy of UndoResult((v0 + 2));
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  (*(*v4 + 224))(v14);
  v5 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v5, v1, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[49], &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    static ExecuteResponse.complete()();
  }

  else
  {
    (*(v0[44] + 32))(v0[45], v0[49], v0[43]);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsFlow] sending followup action", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v10 = v0[44];
    v9 = v0[45];
    v11 = v0[43];

    static ExecuteResponse.redirect(nextPluginAction:)();
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[1];

  return v12();
}

{

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(), 0, 0);
}

{
  v16 = v0;

  outlined destroy of UndoResult(v0 + 16);
  v1 = *(v0 + 392);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  (*(*v4 + 224))(v14);
  v5 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + v5, v1, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 392), &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    static ExecuteResponse.complete()();
  }

  else
  {
    (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 392), *(v0 + 344));
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsFlow] sending followup action", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v11 = *(v0 + 344);

    static ExecuteResponse.redirect(nextPluginAction:)();
    (*(v10 + 8))(v9, v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t SiriCorrectionsFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v95 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v90 - v8;
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Parse.DirectInvocation();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - v18;
  Input.parse.getter();
  if ((*(v10 + 88))(v12, v9) != *MEMORY[0x1E69D0158])
  {
    (*(v10 + 8))(v12, v9);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.executor);
    v39 = v97;
    v38 = v98;
    (*(v97 + 16))(v4, a1, v98);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v99[0] = v43;
      *v42 = 136315138;
      lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v39 + 8))(v4, v38);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v99);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1DC659000, v40, v41, "[CorrectionsFlow] declining input %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1E12A2F50](v43, -1, -1);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v4, v38);
    }

    return 0;
  }

  (*(v10 + 96))(v12, v9);
  (*(v14 + 32))(v19, v12, v13);
  v99[0] = Parse.DirectInvocation.identifier.getter();
  v99[1] = v20;
  v100 = 0xD000000000000024;
  v101 = 0x80000001DCA815B0;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v21 = BidirectionalCollection<>.starts<A>(with:)();

  v22 = v13;
  if ((v21 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.executor);
    (*(v14 + 16))(v16, v19, v13);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v93 = v19;
      v53 = v22;
      v54 = v52;
      v99[0] = v52;
      *v51 = 136315138;
      v55 = Parse.DirectInvocation.identifier.getter();
      v57 = v56;
      v58 = *(v14 + 8);
      v58(v16, v53);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v99);

      *(v51 + 4) = v59;
      _os_log_impl(&dword_1DC659000, v49, v50, "[CorrectionsFlow] CorrectionsFlow declining input. wrong direct invocation identifier %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v51, -1, -1);

      v58(v93, v53);
    }

    else
    {

      v69 = *(v14 + 8);
      v69(v16, v13);
      v69(v19, v13);
    }

    return 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v96;
  if (v26)
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1DC659000, v24, v25, "[CorrectionsFlow] CorrectionsFlow accepting input", v28, 2u);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  v29 = Parse.DirectInvocation.userData.getter();
  if (v29)
  {
    v30 = v29;
    v93 = v19;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v31 = PropertyListDecoder.init()();
    if (*(v30 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000030, 0x80000001DCA81B60), (v33 & 1) != 0) && (outlined init with copy of Any(*(v30 + 56) + 32 * v32, v99), (swift_dynamicCast() & 1) != 0))
    {
      v35 = v100;
      v34 = v101;
      v36 = type metadata accessor for PluginAction();
      lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08], MEMORY[0x1E69CFE10]);
      v92 = v35;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v91 = v34;
      (*(*(v36 - 8) + 56))(v27, 0, 1, v36);
      v76 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
      v77 = v94;
      swift_beginAccess();
      outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v27, v77 + v76, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
      swift_endAccess();
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v81 = v31;
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_1DC659000, v78, v79, "[CorrectionsFlow] Followup PluginAction available.", v82, 2u);
        v83 = v82;
        v31 = v81;
        MEMORY[0x1E12A2F50](v83, -1, -1);
      }

      outlined consume of Data._Representation(v92, v91);
    }

    else
    {
      v78 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1DC659000, v78, v60, "[CorrectionsFlow] No followup plugin action.", v61, 2u);
        MEMORY[0x1E12A2F50](v61, -1, -1);
      }
    }

    v62 = v95;

    if (*(v30 + 16) && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x80000001DCA81BA0), (v64 & 1) != 0))
    {
      outlined init with copy of Any(*(v30 + 56) + 32 * v63, v99);

      if (swift_dynamicCast())
      {
        v65 = v31;
        v67 = v100;
        v66 = v101;
        lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0110]);
        v68 = v98;
        v96 = v65;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        (*(v97 + 56))(v62, 0, 1, v68);
        v84 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput;
        v85 = v94;
        swift_beginAccess();
        outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v62, v85 + v84, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        swift_endAccess();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_1DC659000, v86, v87, "[CorrectionsFlow] Steering input available.", v89, 2u);
          MEMORY[0x1E12A2F50](v89, -1, -1);
        }

        outlined consume of Data._Representation(v67, v66);

        (*(v14 + 8))(v93, v22);
        return 1;
      }
    }

    else
    {
    }

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    v73 = os_log_type_enabled(v71, v72);
    v74 = v93;
    if (v73)
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1DC659000, v71, v72, "[CorrectionsFlow] No steering input in user data.", v75, 2u);
      MEMORY[0x1E12A2F50](v75, -1, -1);
    }

    (*(v14 + 8))(v74, v22);
    return 1;
  }

  (*(v14 + 8))(v19, v22);
  return 1;
}

uint64_t SiriCorrectionsFlow.isSteeringInputAcceptedBy(correctingFlow:)(void *a1)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for Input();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for PluginAction();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  swift_beginAccess();
  v17 = v1 + v16;
  v18 = v12;
  v19 = v13;
  outlined init with copy of ReferenceResolutionClientProtocol?(v17, v11, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  if ((*(v13 + 48))(v11, 1, v18) != 1)
  {
    v22 = v53;
    (*(v13 + 32))(v15, v11, v18);
    v23 = PluginAction.flowHandlerId.getter();
    v25 = v24;
    if (v23 == (*(*v1 + 144))() && v25 == v26)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, static Logger.executor);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_29;
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "[CorrectionsFlow] Will not pass steering input because we have cross plugin followup.";
        goto LABEL_28;
      }
    }

    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v28 = v51;
    PluginAction.input.getter();
    v29 = dispatch thunk of CorrectingFlow.on(correction:)();
    (*(v22 + 8))(v28, v5);
    if (v29)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.executor);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "[CorrectionsFlow] flow handles steering, no need to redirect", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }

      (*(v19 + 8))(v15, v18);
      return 1;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.executor);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v41, v42))
    {
LABEL_29:

      (*(v19 + 8))(v15, v18);
      return 0;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "[CorrectionsFlow] The correcting flow will not handle the followup.";
LABEL_28:
    _os_log_impl(&dword_1DC659000, v41, v42, v44, v43, 2u);
    MEMORY[0x1E12A2F50](v43, -1, -1);
    goto LABEL_29;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  v20 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v20, v4, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v21 = v53;
  if ((*(v53 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_31:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.executor);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "[CorrectionsFlow] No steering input.", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    return 0;
  }

  v35 = v50;
  (*(v21 + 32))(v50, v4, v5);
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  if ((dispatch thunk of CorrectingFlow.on(correction:)() & 1) == 0)
  {
    (*(v21 + 8))(v35, v5);
    goto LABEL_31;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.executor);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1DC659000, v37, v38, "[CorrectionsFlow] flow handles steering with original input.", v39, 2u);
    MEMORY[0x1E12A2F50](v39, -1, -1);
  }

  (*(v21 + 8))(v35, v5);
  return 1;
}

uint64_t SiriCorrectionsFlow.execute(undoCommands:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CorrectionsActionOutcome();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(undoCommands:), 0, 0);
}

uint64_t SiriCorrectionsFlow.execute(undoCommands:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[2];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_1DC659000, v2, v3, "[CorrectionsFlow] corrections undo action returned, count == %ld", v6, 0xCu);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }

  v7 = v0[2];
  v8 = v7[2];
  v0[7] = v8;
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v0[8] = 0;
    v0[9] = v9;
    v10 = v7[7];
    v11 = v7[8];
    __swift_project_boxed_opaque_existential_1(v7 + 4, v10);
    v17 = (*(v11 + 8) + **(v11 + 8));
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = SiriCorrectionsFlow.execute(undoCommands:);
    v13 = v0[6];

    return v17(v13, v10, v11);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v0[11] = MEMORY[0x1E69E7CC0];
    SiriCorrectionsFlow.logExecutedCorrectionsActions(outcomes:)(v15);
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = SiriCorrectionsFlow.execute(undoCommands:);

    return SiriCorrectionsFlow.produceOutput(from:)(v15);
  }
}

{

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.execute(undoCommands:), 0, 0);
}

{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[9];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v0[9]);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = v0[7];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  v9 = v0[8] + 1;
  v2[2] = v4 + 1;
  (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, v6, v8);
  if (v9 == v5)
  {
    v0[11] = v2;
    SiriCorrectionsFlow.logExecutedCorrectionsActions(outcomes:)(v2);
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = SiriCorrectionsFlow.execute(undoCommands:);

    return SiriCorrectionsFlow.produceOutput(from:)(v2);
  }

  else
  {
    v12 = v0[8];
    v0[8] = v12 + 1;
    v0[9] = v2;
    v13 = (v0[2] + 40 * v12);
    v14 = v13[12];
    v15 = v13[13];
    __swift_project_boxed_opaque_existential_1(v13 + 9, v14);
    v18 = (*(v15 + 8) + **(v15 + 8));
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = SiriCorrectionsFlow.execute(undoCommands:);
    v17 = v0[6];

    return v18(v17, v14, v15);
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in SiriCorrectionsFlow.sendSiriKitEvent(activityType:statusReason:statusReasonDescription:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.attribute.setter();

  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

uint64_t SiriCorrectionsFlow.logExecutedCorrectionsFlow(exitValue:)(uint64_t a1)
{
  v2 = v1;
  v62 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = v56 - v8;
  v9 = type metadata accessor for ActivityType();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - v14;
  v16 = type metadata accessor for CorrectionsExitValue();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v20, a1, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x1E69CFFF0])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v59 = v20[1];
    v60 = v22;
    v23 = v9;
    v24 = v61;
    (*(v10 + 104))(v15, *MEMORY[0x1E69CFDD0], v23);
    v25 = *MEMORY[0x1E69CFC70];
    v26 = type metadata accessor for SiriKitReliabilityCodes();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v24, v25, v26);
    (*(v27 + 56))(v24, 0, 1, v26);
    v28 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
    v58 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), v28);
    type metadata accessor for SiriKitEvent();
    (*(v10 + 16))(v12, v15, v23);
    v29 = v10;
    outlined init with copy of ReferenceResolutionClientProtocol?(v24, v6, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v30 = swift_allocObject();
    v31 = v59;
    v30[2] = v60;
    v30[3] = v31;
    v30[4] = v62;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    v32 = v24;
LABEL_3:
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    return (*(v29 + 8))(v15, v23);
  }

  v59 = v6;
  v60 = v12;
  if (v21 == *MEMORY[0x1E69CFFF8])
  {
    (*(v10 + 104))(v15, *MEMORY[0x1E69CFDE0], v9);
    v34 = type metadata accessor for SiriKitReliabilityCodes();
    v35 = v61;
    (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24));
    type metadata accessor for SiriKitEvent();
    (*(v10 + 16))(v60, v15, v9);
    outlined init with copy of ReferenceResolutionClientProtocol?(v35, v59, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v62;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    return (*(v10 + 8))(v15, v9);
  }

  else
  {
    v37 = v2;
    if (v21 == *MEMORY[0x1E69CFFE8])
    {
      v29 = v10;
      (*(v10 + 104))(v15, *MEMORY[0x1E69CFDE0], v9);
      v38 = type metadata accessor for SiriKitReliabilityCodes();
      v39 = v61;
      (*(*(v38 - 8) + 56))(v61, 1, 1, v38);
      v23 = v9;
      v40 = *(v37 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
      v58 = *(v37 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
      __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), v40);
      type metadata accessor for SiriKitEvent();
      (*(v10 + 16))(v60, v15, v9);
      outlined init with copy of ReferenceResolutionClientProtocol?(v39, v59, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v41 = swift_allocObject();
      v41[2] = 0xD000000000000011;
      v41[3] = 0x80000001DCA81D90;
      v41[4] = v62;
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      v32 = v39;
      goto LABEL_3;
    }

    v57 = v15;
    v58 = v2;
    v42 = v10;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.executor);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v44, v45, "[CorrectionsFlow] unexpected correctionsExitValue.", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    v47 = v57;
    (*(v42 + 104))(v57, *MEMORY[0x1E69CFDD0], v9);
    v48 = *MEMORY[0x1E69CFC70];
    v49 = type metadata accessor for SiriKitReliabilityCodes();
    v50 = *(v49 - 8);
    v51 = v61;
    (*(v50 + 104))(v61, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v56[0] = 0x80000001DCA81D60;
    v52 = (v58 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender);
    v53 = *(v58 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
    v58 = *(v58 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
    v56[1] = __swift_project_boxed_opaque_existential_1(v52, v53);
    type metadata accessor for SiriKitEvent();
    (*(v42 + 16))(v60, v47, v9);
    outlined init with copy of ReferenceResolutionClientProtocol?(v51, v59, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v54 = swift_allocObject();
    v55 = v56[0];
    v54[2] = 0xD00000000000002BLL;
    v54[3] = v55;
    v54[4] = v62;
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v42 + 8))(v57, v9);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t SiriCorrectionsFlow.logExecutedCorrectionsActions(outcomes:)(uint64_t a1)
{
  v60 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = v57 - v6;
  v65 = type metadata accessor for ActivityType();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v59 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = v57 - v9;
  v10 = type metadata accessor for CorrectionsActionOutcome();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v76 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v57 - v14;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = v57 - v18;
  v20 = *(a1 + 16);
  v57[0] = v20;
  v57[1] = a1;
  if (v20)
  {
    v23 = *(v11 + 16);
    v21 = v11 + 16;
    v22 = v23;
    v69 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v24 = a1 + v69;
    v75 = *(v21 + 56);
    v25 = (v21 + 72);
    v26 = *MEMORY[0x1E69D0050];
    v73 = *MEMORY[0x1E69D0040];
    v74 = v26;
    v67 = (v21 + 80);
    v68 = (v21 - 8);
    v27 = MEMORY[0x1E69E7CC0];
    v71 = v21;
    v72 = (v21 + 16);
    v70 = v23;
    v66 = (v21 + 72);
    (v23)(v19, a1 + v69, v10, v17);
    while (1)
    {
      v22(v15, v19, v10);
      v31 = (*v25)(v15, v10);
      if (v31 == v74 || v31 == v73)
      {
        (*v67)(v15, v10);
        outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
        v33 = *v72;
        (*v72)(v76, v19, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1);
          v27 = v77;
        }

        v36 = *(v27 + 16);
        v35 = *(v27 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
          v27 = v77;
        }

        *(v27 + 16) = v36 + 1;
        v37 = v27 + v69 + v36 * v75;
        v30 = v75;
        v33(v37, v76, v10);
        v22 = v70;
      }

      else
      {
        v28 = *v68;
        (*v68)(v15, v10);
        v28(v19, v10);
        v25 = v66;
        v30 = v75;
      }

      v24 += v30;
      if (!--v20)
      {
        break;
      }

      (v22)(v19, v24, v10, v29);
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v38 = *(v27 + 16);

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.executor);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  v42 = os_log_type_enabled(v40, v41);
  v44 = v64;
  v43 = v65;
  v46 = v62;
  v45 = v63;
  if (v42)
  {
    v47 = swift_slowAlloc();
    *v47 = 134218240;
    *(v47 + 4) = v38;
    *(v47 + 12) = 2048;
    v48 = v57[0];
    *(v47 + 14) = v57[0];

    _os_log_impl(&dword_1DC659000, v40, v41, "[CorrectionsFlow] %ld out of %ld corrections actions report success.", v47, 0x16u);
    MEMORY[0x1E12A2F50](v47, -1, -1);
  }

  else
  {

    v48 = v57[0];
  }

  v49 = *(v45 + 104);
  if (v38 == v48)
  {
    v49(v46, *MEMORY[0x1E69CFDE0], v43);
    v50 = type metadata accessor for SiriKitReliabilityCodes();
    (*(*(v50 - 8) + 56))(v44, 1, 1, v50);
    __swift_project_boxed_opaque_existential_1((v58 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), *(v58 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24));
    type metadata accessor for SiriKitEvent();
    (*(v45 + 16))(v59, v46, v43);
    outlined init with copy of ReferenceResolutionClientProtocol?(v44, v61, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
  }

  else
  {
    v49(v46, *MEMORY[0x1E69CFDD0], v43);
    v52 = *MEMORY[0x1E69CFC70];
    v53 = type metadata accessor for SiriKitReliabilityCodes();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v44, v52, v53);
    (*(v54 + 56))(v44, 0, 1, v53);
    v55 = *(v58 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 24);
    v76 = *(v58 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender + 32);
    __swift_project_boxed_opaque_existential_1((v58 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender), v55);
    type metadata accessor for SiriKitEvent();
    (*(v45 + 16))(v59, v46, v43);
    outlined init with copy of ReferenceResolutionClientProtocol?(v44, v61, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v51 = swift_allocObject();
    v51[2] = 0xD000000000000022;
    v51[3] = 0x80000001DCA81D30;
  }

  v51[4] = v60;
  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  return (*(v45 + 8))(v46, v43);
}

uint64_t SiriCorrectionsFlow.produceOutput(from:)(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  v3 = type metadata accessor for CorrectionsActionOutcome();
  v2[64] = v3;
  v2[65] = *(v3 - 8);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.produceOutput(from:), 0, 0);
}

void SiriCorrectionsFlow.produceOutput(from:)()
{
  v92 = v0;
  v1 = *(v0 + 496);
  v2 = *(v1 + 16);
  if (v2)
  {
    *&v81[8] = 0;
    v79 = *(v0 + 544);
    v80 = 0;
    v3 = *(v0 + 520);
    v4 = *(v3 + 16);
    v3 += 16;
    v88 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v85 = *(v3 + 56);
    v87 = (v3 + 72);
    v86 = *MEMORY[0x1E69D0050];
    *v81 = *MEMORY[0x1E69D0048];
    v78 = *MEMORY[0x1E69D0040];
    v6 = (v3 - 8);
    v84 = (v3 + 80);
    v89 = MEMORY[0x1E69E7CC0];
    v82 = (v3 - 8);
    while (1)
    {
      v9 = *(v0 + 552);
      v10 = *(v0 + 544);
      v11 = *(v0 + 512);
      v90 = v5;
      v88(v9);
      (v88)(v10, v9, v11);
      v12 = (*v87)(v10, v11);
      if (v12 == v86)
      {
        v13 = *(v0 + 544);
        (*v84)(v13, *(v0 + 512));
        v14 = *v13;
        v15 = v13[1];
        *(v0 + 368) = *(v13 + 4);
        *(v0 + 336) = v14;
        *(v0 + 352) = v15;
        outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 336, v0 + 416, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
        if (*(v0 + 440))
        {
          outlined init with take of ReferenceResolutionClientProtocol((v0 + 416), v0 + 376);
          outlined init with copy of ReferenceResolutionClientProtocol(v0 + 376, v0 + 456);
          v16 = v89;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
          }

          v83 = v2;
          v18 = v16[2];
          v17 = v16[3];
          if (v18 >= v17 >> 1)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
          }

          else
          {
            v89 = v16;
          }

          v19 = *(v0 + 552);
          v20 = *(v0 + 512);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 336, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          v6 = v82;
          (*v82)(v19, v20);
          v89[2] = v18 + 1;
          outlined init with take of ReferenceResolutionClientProtocol((v0 + 456), &v89[5 * v18 + 4]);
LABEL_41:
          v2 = v83;
          goto LABEL_4;
        }

        v7 = *(v0 + 552);
        v8 = *(v0 + 512);
        outlined destroy of ReferenceResolutionClientProtocol?(v0 + 336, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
        (*v6)(v7, v8);
        outlined destroy of ReferenceResolutionClientProtocol?(v0 + 416, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
      }

      else
      {
        if (v12 == *v81)
        {
          v21 = *(v0 + 544);
          (*v84)(v21, *(v0 + 512));
          v22 = *(v79 + 40);
          v23 = *(v79 + 48);
          v24 = *v21;
          v25 = v21[1];
          *(v0 + 208) = *(v21 + 4);
          *(v0 + 176) = v24;
          *(v0 + 192) = v25;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static Logger.executor);

          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v91 = v30;
            *v29 = 136315138;
            v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v91);

            *(v29 + 4) = v31;
            _os_log_impl(&dword_1DC659000, v27, v28, "[CorrectionsFlow] failure reason: %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v30);
            v6 = v82;
            MEMORY[0x1E12A2F50](v30, -1, -1);
            MEMORY[0x1E12A2F50](v29, -1, -1);
          }

          else
          {
          }

          if (__OFADD__(*&v81[4], 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            return;
          }

          ++*&v81[4];
          outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 176, v0 + 256, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          if (!*(v0 + 280))
          {
            v66 = *(v0 + 552);
            v67 = *(v0 + 512);
            outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
            (*v6)(v66, v67);
            v68 = v0 + 256;
LABEL_43:
            outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
            goto LABEL_4;
          }

          outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v0 + 216);
          outlined init with copy of ReferenceResolutionClientProtocol(v0 + 216, v0 + 296);
          v42 = v89;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
          }

          v44 = v42[2];
          v43 = v42[3];
          v89 = v42;
          if (v44 >= v43 >> 1)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
          }

          v45 = *(v0 + 552);
          v46 = *(v0 + 512);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          (*v82)(v45, v46);
          v89[2] = v44 + 1;
          v40 = &v89[5 * v44];
          v6 = v82;
          v41 = (v0 + 296);
        }

        else
        {
          if (v12 != v78)
          {
            v83 = v2;
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v47 = *(v0 + 552);
            v48 = *(v0 + 536);
            v49 = *(v0 + 512);
            v50 = type metadata accessor for Logger();
            __swift_project_value_buffer(v50, static Logger.executor);
            (v88)(v48, v47, v49);
            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.debug.getter();
            v53 = os_log_type_enabled(v51, v52);
            v54 = *(v0 + 552);
            v55 = *(v0 + 536);
            if (v53)
            {
              v77 = *(v0 + 552);
              v56 = v6;
              v57 = *(v0 + 528);
              v58 = *(v0 + 512);
              v76 = v52;
              v59 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v91 = v75;
              *v59 = 136315138;
              (v88)(v57, v55, v58);
              v60 = v58;
              v61 = String.init<A>(describing:)();
              v63 = v62;
              v64 = *v56;
              (*v56)(v55, v60);
              v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v91);

              *(v59 + 4) = v65;
              _os_log_impl(&dword_1DC659000, v51, v76, "[CorrectionsFlow] unknown outcome %s", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v75);
              MEMORY[0x1E12A2F50](v75, -1, -1);
              MEMORY[0x1E12A2F50](v59, -1, -1);

              v64(v77, v60);
            }

            else
            {
              v69 = *(v0 + 512);

              v64 = *v6;
              v64(v55, v69);
              v64(v54, v69);
            }

            v64(*(v0 + 544), *(v0 + 512));
            v6 = v82;
            goto LABEL_41;
          }

          v32 = *(v0 + 544);
          (*v84)(v32, *(v0 + 512));
          v33 = *v32;
          v34 = v32[1];
          *(v0 + 48) = *(v32 + 4);
          *(v0 + 16) = v33;
          *(v0 + 32) = v34;
          if (__OFADD__(v80, 1))
          {
            goto LABEL_54;
          }

          ++v80;
          outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 96, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          if (!*(v0 + 120))
          {
            v70 = *(v0 + 552);
            v71 = *(v0 + 512);
            outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
            (*v6)(v70, v71);
            v68 = v0 + 96;
            goto LABEL_43;
          }

          outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
          outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 136);
          v35 = v89;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
          }

          v37 = v35[2];
          v36 = v35[3];
          v89 = v35;
          if (v37 >= v36 >> 1)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
          }

          v38 = *(v0 + 552);
          v39 = *(v0 + 512);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
          (*v82)(v38, v39);
          v89[2] = v37 + 1;
          v40 = &v89[5 * v37];
          v6 = v82;
          v41 = (v0 + 136);
        }

        outlined init with take of ReferenceResolutionClientProtocol(v41, (v40 + 4));
      }

LABEL_4:
      v5 = v90 + v85;
      if (!--v2)
      {
        if (*&v81[4] <= 0)
        {
          v72 = 2 * (v80 > 0);
        }

        else
        {
          v72 = 1;
        }

        v73 = v89;
        goto LABEL_50;
      }
    }
  }

  v72 = 0;
  v73 = MEMORY[0x1E69E7CC0];
LABEL_50:
  *(v0 + 560) = v73;
  v74 = swift_task_alloc();
  *(v0 + 568) = v74;
  *v74 = v0;
  v74[1] = SiriCorrectionsFlow.produceOutput(from:);

  SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)(v73, v72);
}

uint64_t SiriCorrectionsFlow.produceOutput(from:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  type metadata accessor for DialogPhase();
  *(v3 + 120) = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:), 0, 0);
}

uint64_t SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v0[19] = v2;
  if (v2)
  {
    v3 = v0[14];
    v0[32] = 0;
    v4 = v3[8];
    v5 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v4);
    v6 = swift_task_alloc();
    v0[33] = v6;
    *v6 = v0;
    v6[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE39A08](v1 + 32, v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE398A0]();
  }
}

{
  v1 = *(v0 + 280);
  if (v1 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE398A8]();
  }

  else if (v1 == 2)
  {
    v2 = swift_task_alloc();
    *(v0 + 200) = v2;
    *v2 = v0;
    v2[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE399C8]();
  }

  else
  {
    v4 = *(v0 + 168);
    *(v0 + 216) = v4;
    static DialogPhase.completion.getter();
    OutputGenerationManifest.init(dialogPhase:_:)();
    v8 = (*MEMORY[0x1E69CFE88] + MEMORY[0x1E69CFE88]);
    v5 = swift_task_alloc();
    *(v0 + 224) = v5;
    *v5 = v0;
    v5[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
    v6 = *(v0 + 144);

    return v8(v0 + 16, v4, v6);
  }
}

{
  v1 = *(v0 + 64);

  *(v0 + 216) = v1;
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v5 = (*MEMORY[0x1E69CFE88] + MEMORY[0x1E69CFE88]);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  v3 = *(v0 + 144);

  return v5(v0 + 16, v1, v3);
}

{
  v1 = *(v0 + 88);

  *(v0 + 216) = v1;
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v5 = (*MEMORY[0x1E69CFE88] + MEMORY[0x1E69CFE88]);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  v3 = *(v0 + 144);

  return v5(v0 + 16, v1, v3);
}

{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v2 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v2);
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

  return MEMORY[0x1EEE39A08](v0 + 16, v2, v3);
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v2 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v2 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[32] + 1;
  if (v1 == v0[19])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[32] = v1;
    v4 = v0[14];
    v5 = v0[13] + 40 * v1;
    v6 = v4[8];
    v7 = v4[9];
    __swift_project_boxed_opaque_existential_1(v4 + 5, v6);
    v8 = swift_task_alloc();
    v0[33] = v8;
    *v8 = v0;
    v8[1] = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);

    return MEMORY[0x1EEE39A08](v5 + 32, v6, v7);
  }
}

{
  v1 = *(v0 + 176);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

{

  v1 = *(v0 + 192);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

{

  v1 = *(v0 + 208);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 232);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v8, 2u);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v8, 2u);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 272);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsFlow] CorrectionsFlow failed to produce output", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v4 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[24] = v1;

  if (v1)
  {
    v4 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v4 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[26] = v1;

  if (v1)
  {
    v4 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  else
  {
    v4 = SiriCorrectionsFlow.produceOutput(outputs:overallOutputType:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void *SiriCorrectionsFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined destroy of SiriCorrectionsFlow.State((v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state));
  return v0;
}

uint64_t SiriCorrectionsFlow.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction, &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined destroy of SiriCorrectionsFlow.State((v0 + OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state));

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SiriCorrectionsFlow(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SiriCorrectionsFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SiriCorrectionsFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance SiriCorrectionsFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return MEMORY[0x1EEE391E8](a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance SiriCorrectionsFlow(uint64_t a1)
{
  v6 = (*(**v1 + 256) + **(**v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance SiriCorrectionsFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriCorrectionsFlow(0);

  return MEMORY[0x1EEE391F0](v3, a2);
}

char *specialized SiriCorrectionsFlow.init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, char *a7, uint64_t a8, uint64_t a9)
{
  *(a7 + 13) = a8;
  *(a7 + 14) = a9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7 + 10);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a5, a8);
  v18 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  v19 = type metadata accessor for PluginAction();
  (*(*(v19 - 8) + 56))(&a7[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput;
  v21 = type metadata accessor for Input();
  (*(*(v21 - 8) + 56))(&a7[v20], 1, 1, v21);
  v22 = &a7[OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  *(a7 + 2) = a1;
  *(a7 + 3) = a2;
  *(a7 + 4) = a3;
  outlined init with take of ReferenceResolutionClientProtocol(a4, (a7 + 40));
  outlined init with take of ReferenceResolutionClientProtocol(a6, &a7[OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender]);
  return a7;
}

char *specialized SiriCorrectionsFlow.__allocating_init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriCorrectionsFlow(0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a5, a8);
  return specialized SiriCorrectionsFlow.init(pluginId:responseFactory:outputPublisher:correctionsEngine:eventSender:)(a1, a2, a3, a4, v17, v21, v18, a8, a9);
}

uint64_t outlined init with copy of SiriCorrectionsFlow.State(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 3);
  if (v3 < 0xFFFFFFFF)
  {
    v5 = *a1;
    v6 = a1[1];
    *(a2 + 32) = *(a1 + 4);
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    v4 = *(a1 + 4);
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    (**(v3 - 8))(a2);
  }

  return a2;
}

void *outlined destroy of SiriCorrectionsFlow.State(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1Tm(result);
    return v1;
  }

  return result;
}

uint64_t outlined assign with take of SiriCorrectionsFlow.State(__int128 *a1, uint64_t a2)
{
  if (*(a2 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
  }

  v4 = *a1;
  v5 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v4;
  *(a2 + 16) = v5;
  return a2;
}

uint64_t type metadata accessor for SiriCorrectionsFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for SiriCorrectionsFlow;
  if (!type metadata singleton initialization cache for SiriCorrectionsFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SiriCorrectionsFlow(uint64_t a1)
{
  type metadata accessor for PluginAction?(319, &lazy cache variable for type metadata for PluginAction?, MEMORY[0x1E69CFE08]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PluginAction?(319, &lazy cache variable for type metadata for Input?, MEMORY[0x1E69D0100]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of SiriCorrectionsFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 256) + **(*v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6(a1);
}

void type metadata accessor for PluginAction?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *destroy for SiriCorrectionsFlow.State(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

__n128 initializeWithCopy for SiriCorrectionsFlow.State(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  return result;
}

__n128 assignWithCopy for SiriCorrectionsFlow.State(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      v7 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v7;
    }

    else
    {
      *(a1 + 24) = v2;
      *(a1 + 32) = *(a2 + 32);
      (**(v2 - 8))();
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = *a2;
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v6;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(a1, a2);
  }

  return result;
}

__n128 assignWithTake for SiriCorrectionsFlow.State(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t getEnumTagSinglePayload for SiriCorrectionsFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SiriCorrectionsFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for SiriCorrectionsFlow.State(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double destructiveInjectEnumTag for SiriCorrectionsFlow.State(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t Parse.asCorrectionsParse()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for Siri_Nlu_External_UserParse();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for USOParse();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, v2, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E69D0128])
  {
    (*(v11 + 96))(v14, v10);
    *a1 = *v14;
    v16 = MEMORY[0x1E69CE378];
LABEL_5:
    v17 = *v16;
    v18 = type metadata accessor for CorrectionsParse();
    return (*(*(v18 - 8) + 104))(a1, v17, v18);
  }

  if (v15 == *MEMORY[0x1E69D0168])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    USOParse.userParse.getter();
    USOParse.parserIdentifier.getter();
    USOParse.appBundleId.getter();
    CorrectionsUSOParse.init(userParse:parserIdentifier:appBundleId:)();
    (*(v7 + 8))(v9, v6);
    v16 = MEMORY[0x1E69CE380];
    goto LABEL_5;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "Received unexpected Parse type in asCorrectionsParse", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v24 = *MEMORY[0x1E69CE388];
  v25 = type metadata accessor for CorrectionsParse();
  (*(*(v25 - 8) + 104))(a1, v24, v25);
  return (*(v11 + 8))(v14, v10);
}

uint64_t CorrectionsService.setupNewTurn(executionUUID:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  v5[18] = swift_task_alloc();
  v6 = type metadata accessor for PluginAction();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for Input();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
  v5[29] = swift_task_alloc();
  v8 = type metadata accessor for UndoAction();
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v5[33] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:), v9, 0);
}

uint64_t CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[CorrectionsService] Checking for corrections with a possible followup", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[29];
  v6 = v0[15];

  PluginAction.input.getter();
  CorrectionsService.getUndoAction(_:conversationUserInput:)(v6, v5);
  v0[35] = 0;
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[29];
  v11 = v0[25];
  v12 = v0[26];
  v13 = *(v12 + 8);
  v0[36] = v13;
  v0[37] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v11);
  if ((*(v8 + 48))(v10, 1, v7) == 1)
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v0[29], &_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
LABEL_7:
    v14 = v0[26];
    goto LABEL_8;
  }

  (*(v0[31] + 32))(v0[32], v0[29], v0[30]);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "[CorrectionsService] Detected user requested undo", v21, 2u);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  if (UndoAction.isExclusive.getter())
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "[CorrectionsService] Undo is exclusive", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v26 = v0[31];
    v25 = v0[32];
    v58 = v0[30];
    v28 = v0[25];
    v27 = v0[26];
    v29 = v0[24];
    v30 = v0[13];

    v31 = *(v27 + 56);
    v31(v29, 1, 1, v28);
    CorrectionsService.generateNewInput(from:originalInput:)(v25, v29, v30);
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v26 + 8))(v25, v58);
    v15 = v31;
    v16 = 0;
    goto LABEL_9;
  }

  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v32 = static SydneyConversationFeatureFlags.forceEnabled;
  if (*(static SydneyConversationFeatureFlags.forceEnabled + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(), (v34 & 1) != 0))
  {
    if (*(*(v32 + 56) + v33) != 1)
    {
LABEL_23:
      (*(v0[31] + 8))(v0[32], v0[30]);

      goto LABEL_7;
    }
  }

  else
  {
    v0[5] = &type metadata for SydneyConversationFeatureFlags;
    v0[6] = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
    *(v0 + 16) = 2;
    v35 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if ((v35 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v36 = v0[25];
  v37 = v0[26];
  v38 = v0[23];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[16], v38, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    v39 = v0[22];
    v40 = v0[23];
    v41 = v0[19];
    v42 = v0[20];
    v43 = v0[14];

    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v42 + 16))(v39, v43, v41);
    v44 = v0[35];
    CorrectionsService.generateNewInputWithFollowupFrom(undoAction:pluginAction:)(v0[32], v0[22], v0[13]);
    v45 = v44;
    v47 = v0[31];
    v46 = v0[32];
    v48 = v0[30];
    v14 = v0[26];
    v49 = v0[22];
    v50 = v0[19];
    v51 = v0[20];
    if (!v45)
    {
      (*(v51 + 8))(v0[22], v0[19]);
      (*(v47 + 8))(v46, v48);
      v16 = 0;
      v15 = *(v14 + 56);
      goto LABEL_9;
    }

    (*(v51 + 8))(v49, v50);
    (*(v47 + 8))(v46, v48);
LABEL_8:
    v15 = *(v14 + 56);
    v16 = 1;
LABEL_9:
    v15(v0[13], v16, 1, v0[25]);

    v17 = v0[1];

    return v17();
  }

  (*(v0[26] + 32))(v0[27], v0[23], v0[25]);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1DC659000, v52, v53, "[CorrectionsService] Undo is not exclusive", v54, 2u);
    MEMORY[0x1E12A2F50](v54, -1, -1);
  }

  v55 = swift_task_alloc();
  v0[38] = v55;
  *v55 = v0;
  v55[1] = CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:);
  v56 = v0[27];
  v57 = v0[18];

  return CorrectionsService.findFollowUpPluginAction(for:)(v57, v56);
}

{
  v1 = *(*v0 + 264);

  return MEMORY[0x1EEE6DFA0](CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:), v1, 0);
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[18], &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "[CorrectionsService] No followup plugin action found, returning nil", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v7 = v0[36];
    v9 = v0[31];
    v8 = v0[32];
    v10 = v0[30];
    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[25];

    v7(v11, v13);
    (*(v9 + 8))(v8, v10);
    goto LABEL_7;
  }

  v14 = v0[21];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[20];
  v18 = v0[18];
  (v0[36])(v0[27], v0[25]);
  v19 = *(v17 + 32);
  v19(v14, v18, v16);
  v19(v15, v14, v16);
  v20 = v0[35];
  CorrectionsService.generateNewInputWithFollowupFrom(undoAction:pluginAction:)(v0[32], v0[22], v0[13]);
  v21 = v20;
  v23 = v0[31];
  v22 = v0[32];
  v24 = v0[30];
  v12 = v0[26];
  v25 = v0[22];
  v26 = v0[19];
  v27 = v0[20];
  if (v21)
  {

    (*(v27 + 8))(v25, v26);
    (*(v23 + 8))(v22, v24);
LABEL_7:
    v28 = 1;
    goto LABEL_8;
  }

  (*(v27 + 8))(v0[22], v0[19]);
  (*(v23 + 8))(v22, v24);
  v28 = 0;
LABEL_8:
  (*(v12 + 56))(v0[13], v28, 1, v0[25]);

  v29 = v0[1];

  return v29();
}

uint64_t CorrectionsService.getCorrectionsAction(input:conversationUserInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v31 - v9;
  v11 = type metadata accessor for UndoAction();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v31[1] = __swift_project_value_buffer(v15, static Logger.executor);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31[0] = v14;
    v19 = a3;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "[CorrectionsService] Checking for corrections without a possible followup", v18, 2u);
    v21 = v20;
    a3 = v19;
    v14 = v31[0];
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  CorrectionsService.getUndoAction(_:conversationUserInput:)(v32, v10);
  v32 = a1;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
    v22 = type metadata accessor for Input();
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  else
  {
    v31[0] = a3;
    (*(v12 + 32))(v14, v10, v11);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "[CorrectionsService] Detected user requested undo", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    v27 = type metadata accessor for Input();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v7, v32, v27);
    v29 = *(v28 + 56);
    v29(v7, 0, 1, v27);
    v30 = v31[0];
    CorrectionsService.generateNewInput(from:originalInput:)(v14, v7, v31[0]);
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v12 + 8))(v14, v11);
    return (v29)(v30, 0, 1, v27);
  }
}

uint64_t CorrectionsService.__allocating_init(correctionsClient:conversationHandlerLocator:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t CorrectionsService.init(correctionsClient:conversationHandlerLocator:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t CorrectionsService.getUndoAction(_:conversationUserInput:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Parse();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CorrectionsParse();
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  if (Input.inputOrAlternativesDirectDismissal.getter())
  {
    v14 = type metadata accessor for UndoAction();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  v28 = a2;
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static SydneyConversationFeatureFlags.forceEnabled;
  if (*(static SydneyConversationFeatureFlags.forceEnabled + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(), (v18 & 1) != 0))
  {
    if (*(*(v16 + 56) + v17) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v34 = &type metadata for SydneyConversationFeatureFlags;
    v35 = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
    LOBYTE(v33[0]) = 1;
    v19 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if ((v19 & 1) == 0)
    {
LABEL_14:
      v25 = type metadata accessor for UndoAction();
      return (*(*(v25 - 8) + 56))(v28, 1, 1, v25);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol((v30 + 2), v33);
  v20 = v34;
  v21 = v35;
  v30 = __swift_project_boxed_opaque_existential_1(v33, v34);
  Input.parse.getter();
  Parse.asCorrectionsParse()(v10);
  (*(v29 + 8))(v8, v6);
  if (*(v31 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser))
  {
  }

  CorrectionsContext.init(userId:assistantId:)();
  v22 = type metadata accessor for CorrectionsContext();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  (*(v21 + 24))(v10, v5, v20, v21);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  (*(v32 + 8))(v10, v36);
  v23 = type metadata accessor for UndoAction();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    goto LABEL_14;
  }

  v26 = v28;
  (*(v24 + 32))(v28, v13, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return (*(v24 + 56))(v26, 0, 1, v23);
}

uint64_t CorrectionsService.generateNewInput(from:originalInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v51 = a3;
  v4 = type metadata accessor for Parse();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for CorrectionsDirectInvocation();
  v12 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = a1;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "[CorrectionsService] Generating new input for undo without followup action", v25, 2u);
    v26 = v25;
    a1 = v24;
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  UndoAction.directInvocation.getter();
  v27 = CorrectionsDirectInvocation.userData.getter();
  v28 = *(v12 + 8);
  v28(v20, v52);
  if (!v27)
  {
    v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v29 = a1;
  UndoAction.directInvocation.getter();
  v30 = CorrectionsDirectInvocation.identifier.getter();
  v32 = v31;
  v28(v17, v52);
  if (v30 == 0xD000000000000024 && 0x80000001DCA815B0 == v32)
  {

    v33 = v47;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = v47;
    if ((v34 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v45, v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v35 = v46;
  if ((*(v33 + 48))(v8, 1, v46) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    v47 = v29;
    v36 = v44;
    (*(v33 + 32))(v44, v8, v35);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    lazy protocol witness table accessor for type Input and conformance Input();
    v37 = v35;
    v38 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v40 = v39;

    v56 = MEMORY[0x1E6969080];
    *&v55 = v38;
    *(&v55 + 1) = v40;
    outlined init with take of Any(&v55, v54);
    outlined copy of Data._Representation(v38, v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, 0xD00000000000002BLL, 0x80000001DCA81BA0, isUniquelyReferenced_nonNull_native);
    outlined consume of Data._Representation(v38, v40);
    (*(v33 + 8))(v36, v37);
  }

LABEL_14:
  UndoAction.directInvocation.getter();
  CorrectionsDirectInvocation.identifier.getter();
  v28(v14, v52);
  v42 = v48;
  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v49 + 104))(v42, *MEMORY[0x1E69D0158], v50);
  return Input.init(parse:)();
}

uint64_t CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for PluginAction();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for Input();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v4[25] = swift_task_alloc();
  v7 = type metadata accessor for Parse();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = type metadata accessor for Siri_Nlu_External_Parser();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v9 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v4[36] = swift_task_alloc();
  v10 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[37] = v10;
  v4[38] = *(v10 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
  v4[41] = swift_task_alloc();
  v11 = type metadata accessor for UndoAction();
  v4[42] = v11;
  v4[43] = *(v11 - 8);
  v4[44] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static MessageBusActor.shared;
  v4[45] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:), v12, 0);
}

uint64_t CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[46] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[CorrectionsService] Checking for corrections with maybe a possible followup", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[41];
  v6 = v0[15];

  CorrectionsService.getUndoAction(_:conversationUserInput:)(v6, v5);
  v0[47] = 0;
  v7 = v0[42];
  v8 = v0[43];
  v9 = v0[41];
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {

    v10 = v0[23];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[41], &_s15SiriCorrections10UndoActionVSgMd, &_s15SiriCorrections10UndoActionVSgMR);
    v11 = *(v10 + 56);
    v12 = 1;
LABEL_7:
    v11(v0[13], v12, 1, v0[22]);

    v13 = v0[1];

    return v13();
  }

  (*(v8 + 32))(v0[44], v9, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v15, v16, "[CorrectionsService] Detected user requested undo", v17, 2u);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  if (UndoAction.isExclusive.getter())
  {
    goto LABEL_18;
  }

  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static SydneyConversationFeatureFlags.forceEnabled;
  if (*(static SydneyConversationFeatureFlags.forceEnabled + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(), (v20 & 1) != 0))
  {
    if (*(*(v18 + 56) + v19) != 1)
    {
LABEL_18:

LABEL_19:
      v22 = v0[43];
      v21 = v0[44];
      v54 = v0[42];
      v23 = v0[22];
      v24 = v0[23];
      v25 = v0[17];
      v26 = v0[13];
      (*(v24 + 16))(v25, v0[14], v23);
      v27 = *(v24 + 56);
      v27(v25, 0, 1, v23);
      CorrectionsService.generateNewInput(from:originalInput:)(v21, v25, v26);
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      (*(v22 + 8))(v21, v54);
      v11 = v27;
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v0[5] = &type metadata for SydneyConversationFeatureFlags;
    v0[6] = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
    *(v0 + 16) = 2;
    v28 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v29 = v0[37];
  v30 = v0[38];
  v31 = v0[36];
  UndoAction.parseExludingUndoUserDialogActs.getter();
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v32 = v0[36];

    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    goto LABEL_19;
  }

  (*(v0[38] + 32))(v0[40], v0[36], v0[37]);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1DC659000, v33, v34, "[CorrectionsService] Undo is not exclusive, and we need to try and find followup actions.", v35, 2u);
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  v36 = v0[40];
  v37 = v0[38];
  v48 = v0[39];
  v49 = v0[37];
  v38 = v0[34];
  v39 = v0[35];
  v40 = v0[32];
  v41 = v0[31];
  v47 = v0[30];
  v50 = v0[33];
  v51 = v0[29];
  v42 = v0[27];
  v52 = v0[26];
  v53 = v0[28];
  v43 = v0[25];

  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v41 + 8))(v40, v47);
  (*(v37 + 16))(v48, v36, v49);
  (*(v38 + 16))(v43, v39, v50);
  (*(v38 + 56))(v43, 0, 1, v50);
  USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
  (*(v42 + 104))(v51, *MEMORY[0x1E69D0168], v52);
  (*(v42 + 16))(v53, v51, v52);
  Input.init(parse:)();
  v44 = swift_task_alloc();
  v0[48] = v44;
  *v44 = v0;
  v44[1] = CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:);
  v45 = v0[24];
  v46 = v0[18];

  return CorrectionsService.findFollowUpPluginAction(for:)(v46, v45);
}

{
  v1 = *(*v0 + 360);

  return MEMORY[0x1EEE6DFA0](CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:), v1, 0);
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[18], &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[40];
    v8 = v0[38];
    v9 = v0[34];
    v55 = v0[35];
    v57 = v0[37];
    v51 = v0[29];
    v53 = v0[33];
    v10 = v0[27];
    v49 = v0[26];
    v11 = v0[23];
    v12 = v0[24];
    v13 = v0[22];
    if (v6)
    {
      v47 = v0[40];
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "[CorrectionsService] No followup plugin action found, returning exclusive undo action", v14, 2u);
      v15 = v14;
      v7 = v47;
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    (*(v11 + 8))(v12, v13);
    (*(v10 + 8))(v51, v49);
    (*(v9 + 8))(v55, v53);
    (*(v8 + 8))(v7, v57);
    v17 = v0[43];
    v16 = v0[44];
    v58 = v0[42];
    v18 = v0[22];
    v19 = v0[23];
    v20 = v0[17];
    v21 = v0[13];
    (*(v19 + 16))(v20, v0[14], v18);
    v22 = *(v19 + 56);
    v22(v20, 0, 1, v18);
    CorrectionsService.generateNewInput(from:originalInput:)(v16, v20, v21);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v17 + 8))(v16, v58);
    v23 = v22;
    v24 = 0;
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v25, v26, "[CorrectionsService] New followup plugin action found", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v28 = v0[47];
    v29 = v0[44];
    v30 = v0[21];
    v31 = v0[13];

    CorrectionsService.generateNewInputWithFollowupFrom(undoAction:pluginAction:)(v29, v30, v31);
    v32 = v28;
    v56 = v0[44];
    v59 = v0[43];
    v52 = v0[40];
    v54 = v0[42];
    v33 = v0[38];
    v34 = v0[34];
    v48 = v0[35];
    v50 = v0[37];
    v45 = v0[29];
    v46 = v0[33];
    v35 = v0[27];
    v44 = v0[26];
    v36 = v0[23];
    v37 = v0[24];
    v38 = v0[21];
    v39 = v0[22];
    v40 = v0[19];
    v41 = v0[20];
    if (v32)
    {

      (*(v41 + 8))(v38, v40);
      (*(v36 + 8))(v37, v39);
      (*(v35 + 8))(v45, v44);
      (*(v34 + 8))(v48, v46);
      (*(v33 + 8))(v52, v50);
      (*(v59 + 8))(v56, v54);
      v23 = *(v36 + 56);
      v24 = 1;
    }

    else
    {
      (*(v41 + 8))(v0[21], v0[19]);
      (*(v36 + 8))(v37, v39);
      (*(v35 + 8))(v45, v44);
      (*(v34 + 8))(v48, v46);
      (*(v33 + 8))(v52, v50);
      (*(v59 + 8))(v56, v54);
      v24 = 0;
      v23 = *(v36 + 56);
    }
  }

  v23(v0[13], v24, 1, v0[22]);

  v42 = v0[1];

  return v42();
}

uint64_t CorrectionsService.findFollowUpPluginAction(for:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for Input();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v3[30] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.findFollowUpPluginAction(for:), v7, 0);
}

uint64_t CorrectionsService.findFollowUpPluginAction(for:)(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[26];
  v1[15] = MEMORY[0x1E69E7CC8];
  v1[16] = MEMORY[0x1E69E7CC0];
  UUID.init()();
  Input.parse.getter();
  v4 = type metadata accessor for Parse();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  specialized SimpleOrderedDictionary.subscript.setter(v3, v2);
  v5 = v1[15];
  v6 = v1[16];
  v1[31] = v5;
  v1[32] = v6;
  v7 = swift_task_alloc();
  v1[33] = v7;
  *v7 = v1;
  v7[1] = CorrectionsService.findFollowUpPluginAction(for:);

  return ConversationHandlerLocator.allHandlers(for:)(v5, v6);
}

{
  v2 = *(*v1 + 240);
  *(*v1 + 272) = a1;

  return MEMORY[0x1EEE6DFA0](CorrectionsService.findFollowUpPluginAction(for:), v2, 0);
}

uint64_t CorrectionsService.findFollowUpPluginAction(for:)()
{
  v1 = *(v0 + 272);

  if (*(v1 + 16))
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 224);
    v4 = *(v0 + 200);
    v5 = *(v0 + 184);
    v6 = *(*(v0 + 192) + 80);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 272) + ((v6 + 32) & ~v6), v4, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);

    v7 = v4 + *(v5 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v7 + 8, v0 + 56);
    outlined destroy of ConversationHandlerLocator.ScoredHandler(v7);
    (*(v3 + 8))(v4, v2);
    if (*(v0 + 80))
    {
      v9 = *(v0 + 168);
      v8 = *(v0 + 176);
      v10 = *(v0 + 160);
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
      v13 = *(v0 + 40);
      v14 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
      (*(v14 + 16))(v13, v14);
      (*(v9 + 16))(v8, v11, v10);
      PluginAction.init(flowHandlerId:input:)();
      v15 = type metadata accessor for PluginAction();
      (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_10;
    }
  }

  else
  {

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DC659000, v17, v18, "[CorrectionsService] No conversation handler found for followup input, returning nil", v19, 2u);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  v20 = *(v0 + 136);

  v21 = type metadata accessor for PluginAction();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
LABEL_10:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t CorrectionsService.generateNewInputWithFollowupFrom(undoAction:pluginAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a1;
  v110 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v104 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v96 - v11;
  v119 = type metadata accessor for Siri_Nlu_External_UserParse();
  v111 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v96 - v15;
  v16 = type metadata accessor for Parse();
  v125 = *(v16 - 8);
  v126 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v96 - v19;
  v20 = type metadata accessor for Input();
  v122 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v96 - v25;
  v115 = type metadata accessor for USOParse();
  v26 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v123 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PluginAction();
  v128 = *(v28 - 8);
  v129 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v130 = &v96 - v31;
  v124 = type metadata accessor for CorrectionsDirectInvocation();
  v32 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v108 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v96 - v35;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.executor);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v40 = os_log_type_enabled(v38, v39);
  v116 = v20;
  if (v40)
  {
    v41 = v26;
    v42 = v32;
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1DC659000, v38, v39, "[CorrectionsService] Generating new input for undo with followup action", v43, 2u);
    v44 = v43;
    v32 = v42;
    v26 = v41;
    v20 = v116;
    MEMORY[0x1E12A2F50](v44, -1, -1);
  }

  v114 = v26;

  UndoAction.directInvocation.getter();
  v45 = CorrectionsDirectInvocation.userData.getter();
  v107 = *(v32 + 8);
  v107(v36, v124);
  v109 = v32 + 8;
  v46 = v13;
  if (!v45)
  {
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v47 = v123;
  (*(v128 + 16))(v130, a2, v129);
  v48 = v117;
  PluginAction.input.getter();
  v49 = v118;
  Input.parse.getter();
  v117 = v122[1];
  (v117)(v48, v20);
  v51 = v125;
  v50 = v126;
  v52 = (*(v125 + 88))(v49, v126);
  if (v52 == *MEMORY[0x1E69D0168])
  {
    v98 = v46;
    v99 = v45;
    v96 = a2;
    v97 = v52;
    (*(v51 + 96))(v49, v50);
    v53 = v114;
    v54 = v115;
    (*(v114 + 32))(v47, v49, v115);
    v55 = v113;
    v56 = USOParse.userParse.getter();
    v57 = MEMORY[0x1E129C0F0](v56);
    v58 = v111;
    v59 = *(v111 + 8);
    v59(v55, v119);
    v60 = *(v57 + 16);

    if (v60 < 2)
    {
      (*(v53 + 8))(v47, v54);
    }

    else
    {
      v61 = v106;
      UndoAction.parseExludingUndoUserDialogActs.getter();
      if ((*(v58 + 48))(v61, 1, v119) == 1)
      {
        (*(v114 + 8))(v123, v115);
        outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
      }

      else
      {
        v62 = v98;
        v63 = v61;
        v64 = v119;
        (*(v58 + 32))(v98, v63, v119);
        (*(v58 + 16))(v113, v62, v64);
        USOParse.parserIdentifier.getter();
        USOParse.appBundleId.getter();
        v65 = v112;
        USOParse.init(userParse:parserIdentifier:appBundleId:)();
        (*(v125 + 104))(v65, v97, v126);
        v66 = v103;
        Input.init(parse:)();
        v67 = PluginAction.speechPackage.getter();
        v113 = PluginAction.flowHandlerId.getter();
        v118 = v68;
        (v122[2])(v101, v66, v116);
        v69 = v114;
        if (v67)
        {
          v122 = v67;
          v111 = PluginAction.utterance.getter();
          v106 = v70;
          v71 = type metadata accessor for ActionParaphrase();
          (*(*(v71 - 8) + 56))(v104, 1, 1, v71);
          v72 = type metadata accessor for UUID();
          (*(*(v72 - 8) + 56))(v105, 1, 1, v72);
          v73 = v102;
          PluginAction.init(flowHandlerId:input:speechPackage:utterance:actionParaphrase:userData:loggingId:)();

          (v117)(v66, v116);
          v59(v98, v119);
          (*(v69 + 8))(v123, v115);
          v75 = v128;
          v74 = v129;
          v76 = v130;
          (*(v128 + 8))(v130, v129);
          (*(v75 + 32))(v76, v73, v74);
        }

        else
        {
          PluginAction.utterance.getter();
          v122 = v77;
          v78 = type metadata accessor for ActionParaphrase();
          (*(*(v78 - 8) + 56))(v104, 1, 1, v78);
          v79 = type metadata accessor for UUID();
          (*(*(v79 - 8) + 56))(v105, 1, 1, v79);
          v80 = v102;
          PluginAction.init(flowHandlerId:input:speechPackage:utterance:actionParaphrase:userData:loggingId:)();
          (v117)(v66, v116);
          v59(v98, v119);
          (*(v69 + 8))(v123, v115);
          v82 = v128;
          v81 = v129;
          v83 = v130;
          (*(v128 + 8))(v130, v129);
          (*(v82 + 32))(v83, v80, v81);
        }
      }
    }

    v45 = v99;
  }

  else
  {
    (*(v51 + 8))(v49, v50);
  }

  v84 = v120[5];
  v85 = v120[6];
  __swift_project_boxed_opaque_existential_1(v120 + 2, v84);
  v86 = (*(v85 + 16))(v84, v85);
  v88 = v87;
  v89 = v121;
  v90 = PluginAction.serialize()();
  if (v89)
  {
    (*(v128 + 8))(v130, v129);
  }

  else
  {
    v133 = MEMORY[0x1E6969080];
    *&v132 = v90;
    *(&v132 + 1) = v91;
    outlined init with take of Any(&v132, &v131);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v45;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v131, v86, v88, isUniquelyReferenced_nonNull_native);

    v94 = v108;
    UndoAction.directInvocation.getter();
    CorrectionsDirectInvocation.identifier.getter();
    v107(v94, v124);
    v95 = v112;
    Parse.DirectInvocation.init(identifier:userData:)();
    (*(v125 + 104))(v95, *MEMORY[0x1E69D0158], v126);
    Input.init(parse:)();
    return (*(v128 + 8))(v130, v129);
  }
}

uint64_t CorrectionsService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t CorrectionsService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

uint64_t CorrectionsUndoManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v2, v0 + 24);
  swift_endAccess();
  return v0;
}

Swift::Int UndoError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for forceCanUndoOutput()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static CorrectionsUndoManager.forceCanUndoOutput = result;
  return result;
}

uint64_t *CorrectionsUndoManager.forceCanUndoOutput.unsafeMutableAddressor()
{
  if (one-time initialization token for forceCanUndoOutput != -1)
  {
    swift_once();
  }

  return &static CorrectionsUndoManager.forceCanUndoOutput;
}

uint64_t static CorrectionsUndoManager.forceCanUndoOutput.getter()
{
  if (one-time initialization token for forceCanUndoOutput != -1)
  {
    swift_once();
  }
}

uint64_t CorrectionsUndoManager.init()()
{
  *(v0 + 56) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v2, v0 + 24);
  swift_endAccess();
  return v0;
}

Swift::Bool __swiftcall CorrectionsUndoManager.canUndo()()
{
  if (one-time initialization token for forceCanUndoOutput != -1)
  {
    swift_once();
  }

  v1 = static CorrectionsUndoManager.forceCanUndoOutput;
  os_unfair_lock_lock((static CorrectionsUndoManager.forceCanUndoOutput + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 2)
  {
    swift_beginAccess();
    v3 = *(v0 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v3 + 40 * v4 - 8, &v10);
      outlined destroy of ReferenceResolutionClientProtocol?(&v10, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
      LOBYTE(v2) = 1;
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      outlined destroy of ReferenceResolutionClientProtocol?(&v10, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
      swift_beginAccess();
      outlined init with copy of CorrectingFlow?(v0 + 24, &v10);
      LOBYTE(v2) = *(&v11 + 1) != 0;
      outlined destroy of ReferenceResolutionClientProtocol?(&v10, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v2 & 1;
      _os_log_impl(&dword_1DC659000, v6, v7, "[CorrectionsUndoManager] returning test value for canUndo %{BOOL}d", v8, 8u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }
  }

  return v2 & 1;
}

uint64_t *CorrectionsUndoManager.undo()@<X0>(uint64_t **a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v4 + 40 * v5 - 8, &v40);
    outlined destroy of ReferenceResolutionClientProtocol?(&v40, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v36 = a1;
      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.executor);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1DC659000, v7, v8, "[CorrectionsUndoManager] running undo stack", v9, 2u);
        MEMORY[0x1E12A2F50](v9, -1, -1);
      }

      v10 = *(v2 + 16);
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      v12 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        outlined init with copy of ReferenceResolutionClientProtocol(v10 + 40 * v11 - 8, &v40);
        outlined destroy of ReferenceResolutionClientProtocol?(&v40, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
        swift_beginAccess();
        v13 = *(v2 + 16);
        if (!v13[2])
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 16) = v13;
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = v13[2];
          if (!v15)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          v15 = v13[2];
          if (!v15)
          {
            goto LABEL_32;
          }
        }

        v13[2] = v15 - 1;
        *(v2 + 16) = v13;
        outlined init with take of ReferenceResolutionClientProtocol(&v13[5 * v15 - 1], &v40);
        swift_endAccess();
        v16 = swift_isUniquelyReferenced_nonNull_native();
        v37[0] = v12;
        if ((v16 & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
          v37[0] = v12;
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
          v37[0] = v12;
        }

        v19 = *(&v41 + 1);
        v20 = v42;
        v21 = __swift_mutable_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        a1 = &v36;
        v22 = MEMORY[0x1EEE9AC00](v21);
        v24 = &v37[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v24, v22);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18, v24, v37, v19, v20);
        __swift_destroy_boxed_opaque_existential_1Tm(&v40);
        v10 = *(v2 + 16);
        v11 = *(v10 + 16);
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    result = outlined destroy of ReferenceResolutionClientProtocol?(&v40, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
    v31 = v36;
    *v36 = v12;
    *(v31 + 40) = 1;
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    outlined destroy of ReferenceResolutionClientProtocol?(&v40, &_s14SiriKitRuntime14UndoingCommand_pSgMd, &_s14SiriKitRuntime14UndoingCommand_pSgMR);
    swift_beginAccess();
    outlined init with copy of CorrectingFlow?(v1 + 24, &v38);
    if (v39)
    {
      outlined init with take of ReferenceResolutionClientProtocol(&v38, &v40);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.executor);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1DC659000, v27, v28, "[CorrectionsUndoManager] return undo flow", v29, 2u);
        MEMORY[0x1E12A2F50](v29, -1, -1);
      }

      CorrectionsUndoManager.clearUndoFlow()();
      result = outlined init with take of ReferenceResolutionClientProtocol(&v40, a1);
      *(a1 + 40) = 2;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v38, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.executor);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DC659000, v33, v34, "[CorrectionsUndoManager] nothing to undo", v35, 2u);
        MEMORY[0x1E12A2F50](v35, -1, -1);
      }

      lazy protocol witness table accessor for type UndoError and conformance UndoError();
      result = swift_allocError();
      *a1 = result;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t CorrectionsUndoManager.register(action:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "[CorrectionsUndoManager] registering undo action", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  CorrectionsUndoManager.clearUndoFlow()();
  v10 = type metadata accessor for UndoCommand();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  v12 = *(v3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v3 + 16) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v18 = v10;
  v19 = &protocol witness table for UndoCommand;
  *&v17 = v11;
  v12[2] = v15 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v17, &v12[5 * v15 + 4]);
  *(v3 + 16) = v12;
  return swift_endAccess();
}

uint64_t UndoCommand.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CorrectionsUndoManager.register(flow:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "[CorrectionsUndoManager] registering undo flow", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  CorrectionsUndoManager.clearUndoStack()();
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v9);
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v9, v2 + 24);
  return swift_endAccess();
}

Swift::Void __swiftcall CorrectionsUndoManager.clear()()
{
  CorrectionsUndoManager.clearUndoFlow()();

  CorrectionsUndoManager.clearUndoStack()();
}

uint64_t CorrectionsUndoManager.clearUndoStack()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsUndoManager] clearing undo stack", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t CorrectionsUndoManager.clearUndoFlow()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[CorrectionsUndoManager] clearing undo flow", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v7, v1 + 24);
  return swift_endAccess();
}

uint64_t CorrectionsUndoManager.deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
  return v0;
}

uint64_t UndoCommand.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t UndoCommand.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](UndoCommand.execute(), 0, 0);
}

uint64_t UndoCommand.execute()()
{
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = UndoCommand.execute();
  v2 = v0[2];

  return v4(v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t UndoCommand.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UndoingCommand.execute() in conformance UndoCommand(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for UndoingCommand.execute() in conformance UndoCommand, 0, 0);
}

uint64_t protocol witness for UndoingCommand.execute() in conformance UndoCommand()
{
  v4 = (*(v0[3] + 16) + **(v0[3] + 16));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = protocol witness for UndoingCommand.execute() in conformance UndoCommand;
  v2 = v0[2];

  return v4(v2);
}

uint64_t outlined init with copy of CorrectingFlow?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t lazy protocol witness table accessor for type UndoError and conformance UndoError()
{
  result = lazy protocol witness table cache variable for type UndoError and conformance UndoError;
  if (!lazy protocol witness table cache variable for type UndoError and conformance UndoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UndoError and conformance UndoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UndoError and conformance UndoError;
  if (!lazy protocol witness table cache variable for type UndoError and conformance UndoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UndoError and conformance UndoError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CorrectionsUndoManager(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager()
{
  result = lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager;
  if (!lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager)
  {
    type metadata accessor for CorrectionsUndoManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager);
  }

  return result;
}

void destroy for UndoResult(void *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else if (v1 == 1)
  {
  }

  else
  {
  }
}

uint64_t initializeWithCopy for UndoResult(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 2;
  }

  else if (v3 == 1)
  {
    *a1 = *a2;
    *(a1 + 40) = 1;
  }

  else
  {
    v5 = *a2;
    v6 = *a2;
    *a1 = v5;
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t *assignWithCopy for UndoResult(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    else if (v4 == 1)
    {
    }

    else
    {
    }

    v5 = *(a2 + 40);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v6 = a2[3];
      a1[3] = v6;
      a1[4] = a2[4];
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 2;
    }

    else if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else
    {
      v7 = *a2;
      v8 = v7;
      *a1 = v7;
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

void *assignWithTake for UndoResult(void *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 3)
    {
      v3 = *result + 3;
    }

    v4 = result;
    if (v3 == 2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(result);
    }

    else if (v3 == 1)
    {
    }

    else
    {
    }

    v5 = *(a2 + 40);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    result = v4;
    if (v5 == 2)
    {
      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 1) = v7;
      v4[4] = *(a2 + 32);
      v6 = 2;
    }

    else if (v5 == 1)
    {
      *v4 = *a2;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      *v4 = *a2;
    }

    *(v4 + 40) = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UndoResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UndoResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of UndoingCommand.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v9(a1, a2, a3);
}

uint64_t specialized Sequence<>.containsConversationTriggeredByPeer()()
{
  v1 = v0[9];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    v4 = v0[2];
    v5 = v0[3];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v6 = 0;
  }

  v0[10] = v4;
  v0[11] = v5;
  v0[13] = v6;
  v0[14] = v8;
  v0[12] = v7;
  if (v4 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14)
    {
      goto LABEL_21;
    }

    v0[8] = v14;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v15 = v0[7];
    v16 = v8;
  }

  else
  {
    if (!v8)
    {
      while (1)
      {
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v13 >= ((v7 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v12 = *(v5 + 8 * v13);
        ++v6;
        if (v12)
        {
          v6 = v13;
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v4, v2, v3);
    }

    v12 = v8;
    v13 = v6;
LABEL_16:
    v16 = (v12 - 1) & v12;
    v15 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  }

  v0[16] = v6;
  v0[17] = v16;
  v0[15] = v15;
  if (v15)
  {
    v4 = specialized Sequence<>.containsConversationTriggeredByPeer();
    v2 = v15;
    v3 = 0;

    return MEMORY[0x1EEE6DFA0](v4, v2, v3);
  }

LABEL_21:
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v0[10]);
  v17 = v0[1];

  return v17(0);
}

{
  v1 = *(*(v0 + 120) + 184);
  *(v0 + 144) = v1;
  if (v1 == 2)
  {
    v2 = specialized Sequence<>.containsConversationTriggeredByPeer();
  }

  else
  {
    v2 = specialized Sequence<>.containsConversationTriggeredByPeer();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 144);

  if (v1)
  {
    goto LABEL_17;
  }

  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  *(v0 + 104) = v6;
  *(v0 + 112) = v5;
  v7 = *(v0 + 80);
  if (v7 < 0)
  {
    v10 = __CocoaSet.Iterator.next()();
    if (!v10)
    {
      goto LABEL_17;
    }

    *(v0 + 64) = v10;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v11 = *(v0 + 56);
    v12 = v5;
  }

  else
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v9 >= ((*(v0 + 96) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v8 = *(*(v0 + 88) + 8 * v9);
        ++v6;
        if (v8)
        {
          v6 = v9;
          goto LABEL_12;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v8 = v5;
    v9 = v6;
LABEL_12:
    v12 = (v8 - 1) & v8;
    v11 = *(*(v7 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v8)))));
  }

  *(v0 + 128) = v6;
  *(v0 + 136) = v12;
  *(v0 + 120) = v11;
  if (v11)
  {
    v2 = specialized Sequence<>.containsConversationTriggeredByPeer();
    v3 = v11;
    v4 = 0;

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

LABEL_17:
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 80));
  v13 = *(v0 + 8);

  return v13(v1 & 1);
}

{

  v5 = v0[16];
  v4 = v0[17];
  v0[13] = v5;
  v0[14] = v4;
  v6 = v0[10];
  if (v6 < 0)
  {
    v9 = __CocoaSet.Iterator.next()();
    if (!v9)
    {
      goto LABEL_16;
    }

    v0[8] = v9;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v10 = v0[7];
    v11 = v4;
  }

  else
  {
    if (!v4)
    {
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v8 >= ((v0[12] + 64) >> 6))
        {
          goto LABEL_16;
        }

        v7 = *(v0[11] + 8 * v8);
        ++v5;
        if (v7)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

    v7 = v4;
    v8 = v5;
LABEL_11:
    v11 = (v7 - 1) & v7;
    v10 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
  }

  v0[16] = v5;
  v0[17] = v11;
  v0[15] = v10;
  if (v10)
  {
    v1 = specialized Sequence<>.containsConversationTriggeredByPeer();
    v2 = v10;
    v3 = 0;

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

LABEL_16:
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v0[10]);
  v12 = v0[1];

  return v12(0);
}

uint64_t DecisionEngine.__allocating_init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, __int128 *a6, uint64_t a7)
{
  v13 = a3[3];
  v12 = a3[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v15 = a5[3];
  v16 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v18 = specialized DecisionEngine.__allocating_init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(a1, a2, v14, a4, v17, a6, a7, v22, v15, v13, v16, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v18;
}

uint64_t DecisionEngine.previousConversation.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t DecisionEngine.init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, __int128 *a6, uint64_t a7)
{
  v29 = a7;
  v27 = a2;
  v28 = a6;
  v12 = a3[3];
  v11 = a3[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = a5[3];
  v19 = a5[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v21);
  v25 = specialized DecisionEngine.init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(a1, v27, v16, a4, v23, v28, v29, v30, v18, v12, v19, v11);

  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v25;
}

uint64_t key path setter for DecisionEngine.ambiguityService : DecisionEngine(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v6);
  v3 = *a2;
  outlined init with take of ReferenceResolutionClientProtocol(v6, v5);
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v5, v3 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  return swift_endAccess();
}

uint64_t DecisionEngine.ambiguityService.setter(__int128 *a1)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, v3);
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v3, v1 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  return swift_endAccess();
}

void (*DecisionEngine.ambiguityService.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  DecisionEngine.ambiguityService.getter(v3);
  return DecisionEngine.ambiguityService.modify;
}

void DecisionEngine.ambiguityService.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(*a1, (v2 + 5));
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)((v2 + 5), v3 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ReferenceResolutionClientProtocol(*a1, (v2 + 5));
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)((v2 + 5), v3 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
    swift_endAccess();
  }

  free(v2);
}

Swift::Void __swiftcall DecisionEngine.newSessionStarted()()
{
  ActionGenerator.newSessionStarted()();
  DecisionEngine.ambiguityService.getter(v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  swift_beginAccess();
  *(v0 + 184) = 0;
}

uint64_t DecisionEngine.newTurnStarted(executionUUID:)(uint64_t a1)
{
  *(v1 + 176) = 0;

  ActionGenerator.newTurnStarted()();
  DecisionEngine.ambiguityService.getter(v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 16))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t DecisionEngine.commitConversation(_:)(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v6[11] = type metadata accessor for ConversationHelperInput(0);
  v6[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v6[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:), v7, 0);
}

uint64_t DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  v9 = *(v0 + 64);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(*(v0 + 56), v2 + *(v1 + 20), type metadata accessor for RemoteConversationTurnData);
  *v2 = v3;
  *(v2 + *(v1 + 24)) = v9;
  v4 = v3;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:);
  v6 = *(v0 + 96);
  v7 = *(v0 + 40);

  return ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v7, v6);
}

{
  v1 = v0[12];

  outlined destroy of RemoteConversationTurnData(v1, type metadata accessor for ConversationHelperInput);

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

{
  v1 = *(v0 + 96);

  outlined destroy of RemoteConversationTurnData(v1, type metadata accessor for ConversationHelperInput);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:)(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[13];
  if (v1)
  {
    v6 = DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:);
  }

  else
  {
    v4[16] = a1;
    v6 = DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  v8[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v8[17] = swift_task_alloc();
  v9 = type metadata accessor for DecisionEngineResponse(0);
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = type metadata accessor for ConversationHelperInput(0);
  v8[22] = swift_task_alloc();
  v8[23] = type metadata accessor for RemoteConversationTurnData(0);
  v8[24] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v8[25] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:), v10, 0);
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[10];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/DecisionEngine.swift", 35, 2, "findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)", 124, 2);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v2, v1, type metadata accessor for RemoteConversationTurnData);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315138;
    v11 = *(*(v7 + *(v8 + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
    v0[5] = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    outlined destroy of RemoteConversationTurnData(v7, type metadata accessor for RemoteConversationTurnData);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v35);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1DC659000, v4, v5, "ConjunctionInfo: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {

    outlined destroy of RemoteConversationTurnData(v7, type metadata accessor for RemoteConversationTurnData);
  }

  v18 = v0[22];
  v17 = v0[23];
  v19 = v0[21];
  v20 = v0[10];
  v33 = *(v0 + 11);
  v21 = ConversationUserInput.asSpeechData.getter();
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v20, v18 + *(v19 + 20), type metadata accessor for RemoteConversationTurnData);
  *v18 = v21;
  *(v18 + *(v19 + 24)) = v33;
  v22 = (*(v20 + *(v17 + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin);
  v24 = *v22;
  v23 = v22[1];
  v0[26] = v23;
  swift_unknownObjectRetain();

  v25 = swift_task_alloc();
  v0[27] = v25;
  *v25 = v0;
  v25[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:);
  v26 = v0[22];
  v27 = v0[11];
  v28 = v0[8];
  v29 = v0[9];
  v30 = v0[6];
  v31 = v0[7];

  return DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)(v30, v31, v28, v29, v26, v24, v23, v27);
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:);
  }

  else
  {
    v4 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[6];

  outlined init with copy of ReferenceResolutionClientProtocol?(v4, v3, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v5 = (*(v2 + 48))(v3, 1, v1);
  v6 = v0[17];
  if (v5 == 1)
  {
    outlined destroy of RemoteConversationTurnData(v0[22], type metadata accessor for ConversationHelperInput);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  }

  else
  {
    v7 = v0[20];
    v8 = v0[10];
    v9 = v0[7];
    _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v0[17], v7, type metadata accessor for DecisionEngineResponse);
    DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(v7, *v8, v8[1], *(v9 + 16), *(v9 + 24));
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    if (*v7)
    {
    }

    v10 = v0[20];
    v11 = v0[15];
    v12 = *(v0[18] + 24);
    outlined init with copy of ReferenceResolutionClientProtocol?(v10 + v12, v11, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v13 = type metadata accessor for Input();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    v16 = v15(v11, 1, v13);
    v18 = v0[15];
    v17 = v0[16];
    if (v16 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[15], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v19 = type metadata accessor for Siri_Nlu_External_UUID();
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    }

    else
    {
      Input.parseHypothesisId.getter(v0[16]);
      (*(v14 + 8))(v18, v13);
    }

    v20 = v0[14];
    outlined init with copy of ReferenceResolutionClientProtocol?(v10 + v12, v20, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v21 = v15(v20, 1, v13);
    v22 = v0[14];
    if (v21 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[14], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    }

    else
    {
      Input.inputOrAlternativesInterpretableAsUniversalAction.getter();
      (*(v14 + 8))(v22, v13);
    }

    v23 = v0[22];
    v24 = v0[20];
    v25 = v0[16];
    dispatch thunk of ConversationSELFHelper.emitDecisionEngineDecision(flowHandlerId:parseHypothesisId:isInterpretableAsUniversalAction:isExistingFlowSelected:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
    outlined destroy of RemoteConversationTurnData(v23, type metadata accessor for ConversationHelperInput);
    outlined destroy of RemoteConversationTurnData(v24, type metadata accessor for DecisionEngineResponse);
  }

  v26 = v0[1];

  return v26();
}

{
  v1 = *(v0 + 176);

  outlined destroy of RemoteConversationTurnData(v1, type metadata accessor for ConversationHelperInput);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[44] = v25;
  v9[45] = v8;
  v9[42] = a7;
  v9[43] = a8;
  v9[40] = a5;
  v9[41] = a6;
  v9[38] = a3;
  v9[39] = a4;
  v9[36] = a1;
  v9[37] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v9[46] = swift_task_alloc();
  v10 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v9[47] = v10;
  v9[48] = *(v10 - 8);
  v9[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v9[50] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v9[51] = v11;
  v9[52] = *(v11 - 8);
  v9[53] = swift_task_alloc();
  v9[54] = swift_task_alloc();
  v12 = type metadata accessor for Siri_Nlu_External_Parser();
  v9[55] = v12;
  v9[56] = *(v12 - 8);
  v9[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24AmbiguityServiceResponseVSgMd, &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMR);
  v9[58] = swift_task_alloc();
  v13 = type metadata accessor for AmbiguityServiceResponse(0);
  v9[59] = v13;
  v9[60] = *(v13 - 8);
  v9[61] = swift_task_alloc();
  v14 = type metadata accessor for ExecutionLocation();
  v9[62] = v14;
  v9[63] = *(v14 - 8);
  v9[64] = swift_task_alloc();
  v9[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v9[66] = swift_task_alloc();
  v15 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v9[67] = v15;
  v9[68] = *(v15 - 8);
  v9[69] = swift_task_alloc();
  v16 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision.SiriXRoute();
  v9[70] = v16;
  v9[71] = *(v16 - 8);
  v9[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v9[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v9[74] = swift_task_alloc();
  v9[75] = type metadata accessor for UserInputResult(0);
  v9[76] = swift_task_alloc();
  v9[77] = swift_task_alloc();
  type metadata accessor for UUID();
  v9[78] = swift_task_alloc();
  type metadata accessor for CamParse();
  v9[79] = swift_task_alloc();
  v17 = type metadata accessor for ActionCandidate();
  v9[80] = v17;
  v9[81] = *(v17 - 8);
  v9[82] = swift_task_alloc();
  v18 = type metadata accessor for Parse();
  v9[83] = v18;
  v9[84] = *(v18 - 8);
  v9[85] = swift_task_alloc();
  v9[86] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11SiriKitFlow5ParseO7elementtMd, &_sSi6offset_11SiriKitFlow5ParseO7elementtMR);
  v9[87] = swift_task_alloc();
  v9[88] = swift_task_alloc();
  v9[89] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();
  v9[92] = swift_task_alloc();
  v9[93] = swift_task_alloc();
  v9[94] = swift_task_alloc();
  v19 = type metadata accessor for Input();
  v9[95] = v19;
  v9[96] = *(v19 - 8);
  v9[97] = swift_task_alloc();
  v9[98] = swift_task_alloc();
  v9[99] = swift_task_alloc();
  v9[100] = swift_task_alloc();
  v9[101] = swift_task_alloc();
  v9[102] = swift_task_alloc();
  v20 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9[103] = v20;
  v9[104] = *(v20 - 8);
  v9[105] = swift_task_alloc();
  v9[106] = swift_task_alloc();
  v9[107] = swift_task_alloc();
  v9[108] = swift_task_alloc();
  v21 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v9[109] = v21;
  v9[110] = *(v21 - 8);
  v9[111] = swift_task_alloc();
  v9[112] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v9[113] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v9[114] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = static MessageBusActor.shared;
  v9[115] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v22, 0);
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)()
{
  v161 = v0;
  if (one-time initialization token for executor != -1)
  {
LABEL_69:
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = type metadata accessor for Logger();
  *(v0 + 928) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/DecisionEngine.swift", 35, 2, "findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)", 151, 2);
  v3 = *(v1 + 56);
  *(v0 + 936) = v3;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo;
  v5 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
  v159 = v0;
  if (v5)
  {
    v6 = *(v0 + 912);
    outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, v6, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    v7 = type metadata accessor for PommesSearchReason();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v6, 1, v7);
    v10 = *(v0 + 912);
    if (v9 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 912), &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      v151 = 0;
      v11 = 0;
    }

    else
    {
      v151 = PommesSearchReason.rawValue.getter();
      v11 = v12;
      (*(v8 + 8))(v10, v7);
    }

    v13 = *(v3 + v4);
    if (v13)
    {
      v14 = *(v0 + 904);
      outlined init with copy of ReferenceResolutionClientProtocol?(v13 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, v14, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
      v15 = type metadata accessor for PommesError();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 48))(v14, 1, v15);
      v18 = *(v0 + 904);
      if (v17 != 1)
      {
        v149 = PommesError.rawValue.getter();
        v19 = v99;
        (*(v16 + 8))(v18, v15);
        goto LABEL_11;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 904), &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    }
  }

  else
  {
    v11 = 0;
    v151 = 0;
  }

  v149 = 0;
  v19 = 0;
LABEL_11:
  v138 = v19;
  v139 = v11;
  *(v0 + 952) = v19;
  *(v0 + 944) = v11;
  v20 = *(v0 + 896);
  v21 = *(v0 + 888);
  v22 = *(v0 + 880);
  v23 = *(v0 + 872);
  v24 = *(v0 + 832);
  (*(v22 + 16))(v20, v3 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, v23);
  (*(v22 + 104))(v21, *MEMORY[0x1E69D0A98], v23);
  lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(&lazy protocol witness table cache variable for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode, MEMORY[0x1E69D0AA8], MEMORY[0x1E69D0AB8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v25 = *(v22 + 8);
  v25(v21, v23);
  v25(v20, v23);
  v26 = *(v0 + 264);
  v146 = *(v0 + 256);
  v142 = v3;
  v27 = *(v3 + 16);
  v154 = *(v27 + 16);
  v156 = v24;
  *(v0 + 960) = v154;
  v158 = (v24 + 8);

  v28 = 0;
  do
  {
    v29 = v28;
    *(v0 + 968) = v28;
    if (v154 == v28)
    {
      break;
    }

    if (v28 >= *(v27 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v30 = *(v0 + 864);
    v31 = *(v0 + 824);
    v32 = (*(v156 + 16))(v30, v27 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v28++, v31);
    MEMORY[0x1E129C0F0](v32);
    v33 = Array<A>.hasWantedToUndo.getter();

    (*(v156 + 8))(v30, v31);
  }

  while ((v33 & 1) == 0);
  v34 = *(v0 + 768);
  v144 = *(v0 + 760);
  v35 = *(v0 + 752);
  v36 = *(v0 + 320);
  v37 = *(v0 + 296);

  v38 = *(type metadata accessor for ConversationHelperInput(0) + 20);
  *(v0 + 1296) = v38;
  v136 = v36 + v38;
  v39 = *(*(v36 + v38 + *(type metadata accessor for RemoteConversationTurnData(0) + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
  *(v0 + 976) = v39;
  *(v0 + 16) = v151;
  *(v0 + 24) = v139;
  *(v0 + 32) = v149;
  *(v0 + 40) = v138;
  *(v0 + 48) = v146 == v26;
  *(v0 + 49) = v154 != v29;
  *(v0 + 56) = v39;
  v40 = *(v37 + 16);
  *(v0 + 984) = v40;
  v41 = *(v37 + 24);
  *(v0 + 992) = v41;
  v42 = v39;

  DecisionEngine.ambiguityService.getter(v159 + 8);
  v43 = v159[11];
  v44 = v159[12];
  __swift_project_boxed_opaque_existential_1(v159 + 8, v43);
  v45 = *(v44 + 24);
  v46 = v44;
  v47 = v159;
  v45(v37, v43, v46);
  v48 = *(v34 + 48);
  v159[125] = v48;
  v159[126] = (v34 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v48(v35, 1, v144) != 1)
  {
    v55 = v159[102];
    v56 = v159[96];
    v57 = v159[95];
    v58 = v159[94];
    v59 = v159[38];
    v60 = *(v56 + 32);
    v159[127] = v60;
    v159[128] = (v56 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v60(v55, v58, v57);
    __swift_destroy_boxed_opaque_existential_1Tm(v159 + 8);
    Input.stripSetIdentity()();
    if ((v59 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_20:

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 134217984;
          if ((v59 & 0xC000000000000001) != 0)
          {
            v64 = __CocoaSet.count.getter();
          }

          else
          {
            v64 = *(v159[38] + 16);
          }

          *(v63 + 4) = v64;

          _os_log_impl(&dword_1DC659000, v61, v62, "[DecisionEngine] %ld active conversations are present. Trying to find an existing flow", v63, 0xCu);
          MEMORY[0x1E12A2F50](v63, -1, -1);
          v47 = v159;
        }

        else
        {
        }

        v47[129] = *(v47[45] + 32);
        v113 = swift_task_alloc();
        v47[130] = v113;
        *v113 = v47;
        v113[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
        v114 = v47[40];
        v115 = v47[38];
        v116 = v47[102];

        return ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(v116, v115, v114);
      }
    }

    else if (*(v159[38] + 16))
    {
      goto LABEL_20;
    }

    v106 = v159[45];
    v107 = *(v106 + 176);
    if (!v107)
    {
      v108 = DecisionEngine.getRREntities()();
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.salientEntitiesProvider.getter();

      dispatch thunk of SalientEntitiesDataProvider.salientEntities.setter();

      *(v106 + 176) = v108;
      v47 = v159;

      v107 = *(v106 + 176);
      v106 = v159[45];
    }

    v47[137] = v107;
    v109 = v47;
    if (v107)
    {
      v110 = v107;
    }

    else
    {
      v110 = MEMORY[0x1E69E7CC0];
    }

    v111 = swift_task_alloc();
    v109[138] = v111;
    *v111 = v109;
    v111[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v112 = v109[37];

    return ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(v112, v110, v106 + 96);
  }

  v135 = v42;
  outlined destroy of ReferenceResolutionClientProtocol?(v159[94], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v159 + 8);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = v40;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v160 = v53;
    *v52 = 136315138;
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v41, &v160);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_1DC659000, v49, v50, "[DecisionEngine]: Could not extract ranked input from ConversationUserInput for rcId: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1E12A2F50](v53, -1, -1);
    MEMORY[0x1E12A2F50](v52, -1, -1);
  }

  else
  {
  }

  v65 = *(*(v142 + 16) + 16);
  v152 = *(v142 + 16);

  v147 = v65;
  if (v65)
  {
    v66 = 0;
    v67 = v159[52];
    v150 = (v159[56] + 8);
    v0 = v67 + 104;
    v68 = (v67 + 8);
    v137 = (v159[48] + 8);
    v145 = *MEMORY[0x1E69D0988];
    while (v66 < *(v152 + 16))
    {
      v69 = v47[106];
      v70 = v47[103];
      v71 = v159[57];
      v72 = v159[55];
      v73 = v159[54];
      v74 = v159[53];
      v75 = v159[51];
      v143 = *(v156 + 16);
      v143(v69, v152 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v66, v70);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      v76 = v72;
      v77 = *v150;
      (*v150)(v71, v76);
      (*v0)(v74, v145, v75);
      lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v47 = v159;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v78 = *v68;
      (*v68)(v74, v75);
      v78(v73, v75);
      if (v47[34] == v47[35])
      {
        v79 = v159[50];
        Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v79);
        v80 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
        v81 = *(v80 - 8);
        v82 = v79;
        v47 = v159;
        v83 = (*(v81 + 48))(v82, 1, v80);
        v84 = v159[50];
        if (v83 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v159[50], &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        }

        else
        {
          v85 = v159[49];
          v86 = v159[47];
          Siri_Nlu_External_UserDialogAct.delegated.getter();
          (*(v81 + 8))(v84, v80);
          v87 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
          v89 = v88;
          (*v137)(v85, v86);
          if (v87 == 0xD000000000000026 && 0x80000001DCA82100 == v89)
          {
            v47 = v159;

LABEL_61:

            (*(v47[104] + 32))(v47[107], v47[106], v47[103]);
            v117 = Logger.logObject.getter();
            v118 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              *v119 = 0;
              _os_log_impl(&dword_1DC659000, v117, v118, "[DecisionEngine] Returning response with NLv3 fallback exception parse.", v119, 2u);
              v120 = v119;
              v47 = v159;
              MEMORY[0x1E12A2F50](v120, -1, -1);
            }

            v121 = v117;
            v122 = v47[107];
            v123 = v47[105];
            v124 = v47[103];
            v153 = v47[97];
            v155 = v47[96];
            v157 = v47[95];
            v125 = v47[85];
            v126 = v47[84];
            v148 = v47[83];
            v127 = v159[57];
            v140 = v159[55];
            v128 = v159[52];
            v141 = v159[51];
            v129 = v159[46];
            v130 = v159[36];

            v143(v123, v122, v124);
            Siri_Nlu_External_UserParse.parser.getter();
            Siri_Nlu_External_Parser.parserID.getter();
            v131 = v127;
            v47 = v159;
            v77(v131, v140);
            (*(v128 + 56))(v129, 0, 1, v141);
            USOParse.init(userParse:parserIdentifier:appBundleId:)();
            (*(v126 + 104))(v125, *MEMORY[0x1E69D0168], v148);
            Input.init(parse:)();

            (*v158)(v122, v124);
            v132 = type metadata accessor for DecisionEngineResponse(0);
            v133 = *(v132 + 24);
            (*(v155 + 32))(v130 + v133, v153, v157);
            (*(v155 + 56))(v130 + v133, 0, 1, v157);
            *v130 = 0;
            *(v130 + 8) = 0;
            *(v130 + *(v132 + 28)) = 0;
            (*(*(v132 - 8) + 56))(v130, 0, 1, v132);
            goto LABEL_64;
          }

          v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v47 = v159;
          if (v90)
          {
            goto LABEL_61;
          }
        }
      }

      ++v66;
      (*v158)(v47[106], v47[103]);
      if (v147 == v66)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_68;
  }

LABEL_35:

  if (DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*v136, *(v136 + 8), v154 != v29))
  {
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_1DC659000, v91, v92, "[DecisionEngine] Returning fallback response", v93, 2u);
      v94 = v93;
      v47 = v159;
      MEMORY[0x1E12A2F50](v94, -1, -1);
    }

    v95 = swift_task_alloc();
    v47[161] = v95;
    *v95 = v47;
    v95[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v96 = v47[40];
    v97 = v47[36];

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v97, v96, (v47 + 2));
  }

  else
  {

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_1DC659000, v100, v101, "[DecisionEngine] Returning no response to enforce server fallback", v102, 2u);
      v103 = v102;
      v47 = v159;
      MEMORY[0x1E12A2F50](v103, -1, -1);
    }

    v104 = v47[36];

    v105 = type metadata accessor for DecisionEngineResponse(0);
    (*(*(v105 - 8) + 56))(v104, 1, 1, v105);
LABEL_64:

    v134 = v47[1];

    return v134();
  }
}

{
  if (v0[136])
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1DC659000, v1, v2, "[DecisionEngine] found an existing flow that can handle alternative NL parse this turn.", v3, 2u);
      MEMORY[0x1E12A2F50](v3, -1, -1);
    }

    v27 = v0[136];
    v4 = v0[127];
    v5 = v0[122];
    v28 = v0[102];
    v6 = v0[100];
    v7 = v0[96];
    v8 = v0[95];
    v9 = v0[36];

    v10 = type metadata accessor for DecisionEngineResponse(0);
    v11 = *(v10 + 24);
    v4(v9 + v11, v6, v8);
    (*(v7 + 56))(v9 + v11, 0, 1, v8);
    *v9 = v27;
    *(v9 + 8) = 1;
    *(v9 + *(v10 + 28)) = 0;
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    (*(v7 + 8))(v28, v8);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[133];
    v15 = v0[134] + 1;
    result = (*(v0[96] + 8))(v0[100], v0[95]);
    if (v15 == v14)
    {

      v16 = v0[45];
      v17 = *(v16 + 176);
      if (!v17)
      {
        v18 = DecisionEngine.getRREntities()();
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.salientEntitiesProvider.getter();

        dispatch thunk of SalientEntitiesDataProvider.salientEntities.setter();

        *(v16 + 176) = v18;

        v17 = *(v16 + 176);
        v16 = v0[45];
      }

      v0[137] = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      v20 = swift_task_alloc();
      v0[138] = v20;
      *v20 = v0;
      v20[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
      v21 = v0[37];

      return ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(v21, v19, v16 + 96);
    }

    else
    {
      v0[134] = v15;
      v22 = v0[132];
      if (v15 >= *(v22 + 16))
      {
        __break(1u);
      }

      else
      {
        (*(v0[96] + 16))(v0[100], v22 + ((*(v0[96] + 80) + 32) & ~*(v0[96] + 80)) + *(v0[96] + 72) * v15, v0[95]);
        v23 = swift_task_alloc();
        v0[135] = v23;
        *v23 = v0;
        v23[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
        v24 = v0[100];
        v25 = v0[40];
        v26 = v0[38];

        return ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(v24, v26, v25);
      }
    }
  }

  return result;
}

{
  v115 = v0;
  v1._rawValue = *(v0 + 1112);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v4._countAndFlagsBits = v3;
  v4._object = v2;
  ConversationSELFHelper.emitActionCandidatesGenerated(rcId:actionCandidates:)(v4, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1112);
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_1DC659000, v5, v6, "[DecisionEngine] Generated %ld action candidates", v9, 0xCu);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {
  }

  CorrectionsService.getCorrectionsAction(input:conversationUserInput:)(*(v0 + 816), *(v0 + 296), *(v0 + 744));
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 744);
    v13 = *(v0 + 736);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v114 = v15;
    *v14 = 136315138;
    swift_beginAccess();
    outlined init with copy of ReferenceResolutionClientProtocol?(v12, v13, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v114);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v10, v11, "[DecisionEngine] Corrections Input: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v19 = *(v0 + 1000);
  v20 = *(v0 + 760);
  v21 = *(v0 + 744);
  v22 = *(v0 + 728);
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v21, v22, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if (v19(v22, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 728), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_12:
    v36 = *(v0 + 1112);
    v37 = *(v0 + 992);
    v38 = *(v0 + 984);
    v39 = *(v0 + 352);
    ObjectType = swift_getObjectType();
    (*(v39 + 160))(v36, v38, v37, ObjectType, v39);

    if (*(v36 + 16))
    {
      v41 = *(v0 + 360);
      DecisionEngine.ambiguityService.getter((v0 + 104));
      v42 = *(v0 + 128);
      v43 = *(v0 + 136);
      __swift_project_boxed_opaque_existential_1((v0 + 104), v42);
      *(v0 + 1216) = *(v41 + 32);
      swift_beginAccess();
      *(v0 + 1224) = *(v41 + 184);
      v44 = *(v43 + 32);

      v111 = v44 + *v44;
      v45 = swift_task_alloc();
      *(v0 + 1232) = v45;
      *v45 = v0;
      v45[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
      v47 = *(v0 + 328);
      v46 = *(v0 + 336);
      v119 = v42;
      v120 = v43;
      v117 = v47;
      v118 = v46;

      __asm { BRAA            X8, X16 }
    }

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DC659000, v48, v49, "[DecisionEngine] Skipping ambiguity handling as there are no actions from action generator", v50, 2u);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    v51 = swift_task_alloc();
    *(v0 + 1176) = v51;
    *v51 = v0;
    v51[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v52 = *(v0 + 816);
    v53 = *(v0 + 736);
    v54 = *(v0 + 296);

    return CorrectionsService.getCorrectionsAndFollowupAction(input:conversationUserInput:)(v53, v52, v54);
  }

  v23 = *(v0 + 312);
  (*(v0 + 1016))(*(v0 + 792), *(v0 + 728), *(v0 + 760));
  if (!v23)
  {
    (*(*(v0 + 768) + 8))(*(v0 + 792), *(v0 + 760));
    goto LABEL_12;
  }

  v112 = *(v0 + 992);
  v24 = *(v0 + 680);
  v25 = *(v0 + 672);
  v98 = *(v0 + 664);
  v100 = *(v0 + 656);
  v26 = *(v0 + 648);
  v107 = *(v0 + 640);
  v109 = *(v0 + 984);
  v27 = *(v0 + 632);
  v92 = *(v0 + 936);
  v93 = *(v0 + 584);
  v95 = *(v0 + 544);
  v105 = *(v0 + 536);
  v103 = *(v0 + 352);
  v28 = *(v0 + 296);

  Input.parse.getter();
  Parse.asCamParse()(v27);
  (*(v25 + 8))(v24, v98);
  UUID.init()();
  ActionCandidate.init(flowHandlerId:parse:affinityScore:loggingId:userData:)();
  v29 = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam15ActionCandidateVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam15ActionCandidateVGMR);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DCA66060;
  (*(v26 + 16))(v31 + v30, v100, v107);
  (*(v103 + 160))(v31, v109, v112, v29);

  v108 = *(v28 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser);
  v113 = *(v28 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold);
  v97 = *(v28 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession);
  v110 = *(v28 + 48);
  v102 = *(v92 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v104 = *(v92 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);

  v32 = NLResponse.requestLanguageVariant.getter();
  v99 = v33;
  v101 = v32;
  outlined init with copy of ReferenceResolutionClientProtocol?(v92 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v93, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  if ((*(v95 + 48))(v93, 1, v105) == 1)
  {
    v34 = *(v0 + 592);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 584), &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    v35 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  }

  else
  {
    v56 = *(v0 + 552);
    v57 = *(v0 + 544);
    v58 = *(v0 + 536);
    (*(v57 + 16))(v56, *(v0 + 584), v58);
    v59 = (*(v57 + 88))(v56, v58);
    v60 = *(v0 + 592);
    if (v59 == *MEMORY[0x1E69D02E8])
    {
      v61 = *(v0 + 576);
      v62 = *(v0 + 568);
      v63 = *(v0 + 560);
      v64 = *(v0 + 552);
      v65 = *(v0 + 544);
      (*(v65 + 96))(v64, *(v0 + 536));
      (*(v62 + 32))(v61, v64, v63);
      NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.genAIFallbackSuppressReason.getter();
      (*(v62 + 8))(v61, v63);
      (*(v65 + 8))(*(v0 + 584), *(v0 + 536));
    }

    else
    {
      v66 = *(*(v0 + 544) + 8);
      v66(*(v0 + 552), *(v0 + 536));
      v67 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
      (*(*(v67 - 8) + 56))(v60, 1, 1, v67);
      v66(*(v0 + 584), *(v0 + 536));
    }
  }

  v68 = *(v0 + 992);
  v69 = *(v0 + 984);
  v106 = *(v0 + 592);
  v70 = *(v0 + 528);
  v71 = *(v0 + 520);
  v94 = v71;
  v96 = v70;
  v72 = *(v0 + 504);
  v73 = *(v0 + 512);
  v74 = *(v0 + 496);
  v75 = *(v0 + 296);
  v76 = type metadata accessor for FlowRedirectContext();
  (*(*(v76 - 8) + 56))(v70, 1, 1, v76);
  v77 = *(v72 + 16);
  v77(v71, v75 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation, v74);
  v77(v73, v75 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation, v74);
  v78 = type metadata accessor for RemoteConversationSpeechData(0);
  v79 = objc_allocWithZone(v78);
  v80 = &v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  *v80 = v69;
  v80[1] = v68;
  v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = 1;
  *&v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = v108;
  *&v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = v113;
  v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = v97;
  *&v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = v110;
  v81 = &v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  *v81 = 0;
  v81[1] = 0;
  v82 = &v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  *v82 = v102;
  v82[1] = v104;
  v83 = &v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  *v83 = v101;
  v83[1] = v99;
  outlined init with copy of ReferenceResolutionClientProtocol?(v106, &v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v70, &v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v77(&v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation], v94, v74);
  v77(&v79[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], v73, v74);
  *(v0 + 240) = v79;
  *(v0 + 248) = v78;
  v84 = v108;
  v85 = v113;
  v86 = v110;
  v87 = objc_msgSendSuper2((v0 + 240), sel_init);
  *(v0 + 1120) = v87;
  v88 = *(v72 + 8);
  v88(v73, v74);
  v88(v94, v74);
  outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v89 = swift_task_alloc();
  *(v0 + 1128) = v89;
  *v89 = v0;
  v89[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  v90 = *(v0 + 792);
  v91 = *(v0 + 616);

  return RemoteConversationClient.accept(input:speechData:)(v91, v90, v87);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1120);
  *(*v1 + 1136) = v0;

  v4 = *(v2 + 920);
  if (v0)
  {
    v5 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  else
  {
    v5 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v0[77], v0[76], type metadata accessor for UserInputResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v16 = v0[127];
    v1 = v0[122];
    v2 = v0[96];
    v13 = v0[95];
    v14 = v0[99];
    v17 = v0[93];
    v18 = v0[102];
    v3 = v0[82];
    v4 = v0[81];
    v5 = v0[80];
    v6 = v0[77];
    v15 = v0[39];
    v7 = v0[36];

    outlined destroy of RemoteConversationTurnData(v6, type metadata accessor for UserInputResult);
    (*(v4 + 8))(v3, v5);
    v8 = type metadata accessor for DecisionEngineResponse(0);
    v9 = *(v8 + 24);
    v16(v7 + v9, v14, v13);
    (*(v2 + 56))(v7 + v9, 0, 1, v13);
    *v7 = v15;
    *(v7 + 8) = 0;
    *(v7 + *(v8 + 28)) = 0;
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v2 + 8))(v18, v13);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = static MessageBusActor.shared;
    v0[143] = static MessageBusActor.shared;

    return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v12, 0);
  }
}

{
  v1 = swift_task_alloc();
  v0[144] = v1;
  *v1 = v0;
  v1[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  v2 = v0[99];
  v3 = v0[40];

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v2, v3, 0, 1);
}

{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 320) + *(v0 + 1296);
  if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*v2, *(v2 + 8), *(v0 + 968) != *(v0 + 960)) & 1) == 0 || v1)
  {
    v7 = *(v0 + 1160);
    v8 = *(v0 + 792);
    v9 = *(v0 + 768);
    v10 = *(v0 + 760);
    v11 = *(v0 + 288);

    v12 = type metadata accessor for DecisionEngineResponse(0);
    v13 = *(v12 + 24);
    (*(v9 + 16))(v11 + v13, v8, v10);
    (*(v9 + 56))(v11 + v13, 0, 1, v10);
    *v11 = v7;
    *(v11 + 8) = 0;
    *(v11 + *(v12 + 28)) = 0;
    v14 = *(v0 + 920);

    return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v14, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 1168) = v3;
    *v3 = v0;
    v3[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v4 = *(v0 + 320);
    v5 = *(v0 + 288);

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v5, v4, v0 + 16);
  }
}

{
  v1 = *(*v0 + 1144);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v1, 0);
}

{

  v1 = *(v0 + 920);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v1, 0);
}

{
  v1 = v0[122];
  v2 = v0[96];
  v11 = v0[95];
  v12 = v0[99];
  v15 = v0[93];
  v16 = v0[102];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[77];
  v13 = v0[36];
  v14 = v0[76];

  outlined destroy of RemoteConversationTurnData(v6, type metadata accessor for UserInputResult);
  (*(v4 + 8))(v3, v5);
  v7 = *(v2 + 8);
  v7(v12, v11);
  v8 = type metadata accessor for DecisionEngineResponse(0);
  (*(*(v8 - 8) + 56))(v13, 0, 1, v8);
  outlined destroy of RemoteConversationTurnData(v14, type metadata accessor for UserInputResult);
  outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7(v16, v11);

  v9 = v0[1];

  return v9();
}

{
  v1 = *(*v0 + 920);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v1, 0);
}

{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 760);
  v3 = *(v0 + 744);
  v4 = *(v0 + 720);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(*(v0 + 736), v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v3, v4, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v5 = v1(v4, 1, v2);
  v6 = *(v0 + 784);
  if (v5 == 1)
  {
    v7 = *(v0 + 1000);
    v8 = *(v0 + 760);
    v9 = *(v0 + 720);
    (*(*(v0 + 768) + 16))(v6, *(v0 + 816), v8);
    if (v7(v9, 1, v8) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 720), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    }
  }

  else
  {
    (*(v0 + 1016))(v6, *(v0 + 720), *(v0 + 760));
  }

  v10 = static MessageBusActor.shared;
  *(v0 + 1184) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v10, 0);
}

{
  v1 = swift_task_alloc();
  v0[149] = v1;
  *v1 = v0;
  v1[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  v2 = v0[98];
  v3 = v0[40];

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v2, v3, 0, 1);
}

{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 320) + *(v0 + 1296);
  if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*v2, *(v2 + 8), *(v0 + 968) != *(v0 + 960)) & 1) == 0 || v1)
  {
    v7 = *(v0 + 1200);
    v8 = *(v0 + 784);
    v9 = *(v0 + 768);
    v10 = *(v0 + 760);
    v11 = *(v0 + 288);

    v12 = type metadata accessor for DecisionEngineResponse(0);
    v13 = *(v12 + 24);
    (*(v9 + 16))(v11 + v13, v8, v10);
    (*(v9 + 56))(v11 + v13, 0, 1, v10);
    *v11 = v7;
    *(v11 + 8) = 0;
    *(v11 + *(v12 + 28)) = 0;
    v14 = *(v0 + 920);

    return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v14, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 1208) = v3;
    *v3 = v0;
    v3[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v4 = *(v0 + 320);
    v5 = *(v0 + 288);

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v5, v4, v0 + 16);
  }
}

{
  v1 = *(*v0 + 1184);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v1, 0);
}

{

  v1 = *(v0 + 920);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v1, 0);
}

{
  v1 = v0[122];
  v2 = v0[102];
  v3 = v0[98];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[93];
  v7 = v0[36];

  v8 = *(v4 + 8);
  v8(v3, v5);
  v9 = type metadata accessor for DecisionEngineResponse(0);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8(v2, v5);

  v10 = v0[1];

  return v10();
}

{
  v2 = *v1;

  v3 = *(v2 + 920);
  if (v0)
  {

    v4 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  else
  {

    v4 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[58], &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMd, &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "[DecisionEngine] AmbiguityService couldn't find best action. Falling back to default input", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v0[157] = static MessageBusActor.shared;

    v7 = swift_task_alloc();
    v0[158] = v7;
    *v7 = v0;
    v7[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v8 = v0[102];
    v9 = v0[40];

    return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v8, v9, 0, 1);
  }

  else
  {
    _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v0[58], v0[61], type metadata accessor for AmbiguityServiceResponse);
    v11 = swift_task_alloc();
    v0[155] = v11;
    *v11 = v0;
    v11[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v12 = v0[61];
    v13 = v0[41];
    v14 = v0[42];
    v15 = v0[40];
    v16 = v0[36];

    return DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)(v16, v12, v15, v13, v14, (v0 + 2));
  }
}

{
  v2 = *v1;
  *(*v1 + 1248) = v0;

  v3 = *(v2 + 920);
  if (v0)
  {
    v4 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  else
  {
    v4 = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[122];
  v2 = v0[102];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[93];
  v6 = v0[61];

  outlined destroy of RemoteConversationTurnData(v6, type metadata accessor for AmbiguityServiceResponse);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 320) + *(v0 + 1296);
  if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*v2, *(v2 + 8), *(v0 + 968) != *(v0 + 960)) & 1) == 0 || v1)
  {
    v7 = *(v0 + 1272);
    v8 = *(v0 + 816);
    v9 = *(v0 + 768);
    v10 = *(v0 + 760);
    v11 = *(v0 + 288);

    v12 = type metadata accessor for DecisionEngineResponse(0);
    v13 = *(v12 + 24);
    (*(v9 + 16))(v11 + v13, v8, v10);
    (*(v9 + 56))(v11 + v13, 0, 1, v10);
    *v11 = v7;
    *(v11 + 8) = 0;
    *(v11 + *(v12 + 28)) = 0;
    v14 = *(v0 + 920);

    return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v14, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 1280) = v3;
    *v3 = v0;
    v3[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v4 = *(v0 + 320);
    v5 = *(v0 + 288);

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v5, v4, v0 + 16);
  }
}

{
  v1 = *(*v0 + 1256);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v1, 0);
}

{

  v1 = *(v0 + 920);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v1, 0);
}

{
  v1 = v0[122];
  v2 = v0[102];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[93];
  v6 = v0[36];

  v7 = type metadata accessor for DecisionEngineResponse(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

{
  v1 = *(*v0 + 920);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v1, 0);
}

{
  v1 = v0[122];
  v2 = v0[36];

  v3 = type metadata accessor for DecisionEngineResponse(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[122];
  v2 = v0[96];
  v3 = v0[95];
  v10 = v0[99];
  v11 = v0[93];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 8);
  v7(v10, v3);
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7(v0[102], v0[95]);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  (*(v2 + 56))(v3, 1, 1, v1);
  outlined destroy of ReferenceResolutionClientProtocol?(v0[58], &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMd, &_s14SiriKitRuntime24AmbiguityServiceResponseVSgMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "[DecisionEngine] AmbiguityService couldn't find best action. Falling back to default input", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v0[157] = static MessageBusActor.shared;

  v7 = swift_task_alloc();
  v0[158] = v7;
  *v7 = v0;
  v7[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
  v8 = v0[102];
  v9 = v0[40];

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v8, v9, 0, 1);
}

{
  v1 = v0[122];
  v2 = v0[96];
  v3 = v0[93];
  v4 = v0[61];

  outlined destroy of RemoteConversationTurnData(v4, type metadata accessor for AmbiguityServiceResponse);
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(v2 + 8))(v0[102], v0[95]);

  v5 = v0[1];

  return v5();
}

uint64_t DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:)(uint64_t a1)
{
  v2 = *(*v1 + 920);
  *(*v1 + 1048) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v2 = v1;
  if (v1[131])
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "[DecisionEngine] found an existing flow that can handle top NL parse this turn.", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = v1[131];
    v7 = v1[122];
    v8 = v1[102];
    v9 = v1[96];
    v10 = v1[95];
    v11 = v1[36];

    v12 = type metadata accessor for DecisionEngineResponse(0);
    v13 = *(v12 + 24);
    (*(v9 + 16))(v11 + v13, v8, v10);
    (*(v9 + 56))(v11 + v13, 0, 1, v10);
    *v11 = v6;
    *(v11 + 8) = 1;
    *(v11 + *(v12 + 28)) = 0;
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    (*(v9 + 8))(v8, v10);

    v14 = v1[1];

    return v14();
  }

  v16 = Input.alternatives.getter();
  v17 = *(v16 + 16);
  if (v17)
  {
    v54 = v1[96];
    v60 = v1[86];
    v18 = v1[84];
    v65 = MEMORY[0x1E69E7CC0];
    v19 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    result = v19;
    v20 = 0;
    v21 = v65;
    v61 = *(result + 16);
    v64 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v58 = result + v64;
    v59 = v18;
    v53 = (v18 + 8);
    v55 = v17;
    v56 = result;
    v57 = v1;
    while (v20 != v61)
    {
      if (v20 >= *(result + 16))
      {
        goto LABEL_38;
      }

      v22 = v2[88];
      v23 = v2;
      v24 = *(v60 + 48);
      v25 = v23[87];
      v26 = v23[83];
      v27 = *(v59 + 72);
      v28 = v27 * v20;
      v63 = *(v59 + 16);
      v63(v22 + v24, v58 + v27 * v20, v26);
      *v25 = v20;
      v29 = *(v60 + 48);
      v62 = v25;
      (*(v59 + 32))(v25 + v29, v22 + v24, v26);
      v30 = Input.alternatives.getter();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
        v30 = result;
      }

      v31 = *(v30 + 2);
      v2 = v57;
      if (v20 >= v31)
      {
        goto LABEL_39;
      }

      v32 = v31 - 1;
      (*v53)(&v30[v64 + v28], v57[83]);
      if (v27 > 0 || &v30[v64 + v28] >= &v30[v64 + v28 + v27 + (v32 - v20) * v27])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v27)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v33 = v57[87];
      v34 = v57[85];
      v35 = v57[83];
      *(v30 + 2) = v32;
      v63(v34, v62 + v29, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMR);
      *(swift_allocObject() + 16) = xmmword_1DCA66060;
      Input.parse.getter();
      specialized Array.append<A>(contentsOf:)(v30);
      Input.init(parse:alternatives:)();
      outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sSi6offset_11SiriKitFlow5ParseO7elementtMd, &_sSi6offset_11SiriKitFlow5ParseO7elementtMR);
      v37 = *(v65 + 16);
      v36 = *(v65 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
      }

      v38 = v57[127];
      v39 = v57[101];
      v40 = v57[95];
      ++v20;
      *(v65 + 16) = v37 + 1;
      v38(v65 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v37, v39, v40);
      result = v56;
      if (v20 == v55)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v2[132] = v21;
  v41 = *(v21 + 16);
  v2[133] = v41;
  if (v41)
  {
    v42 = v2[96];
    v2[134] = 0;
    if (!*(v21 + 16))
    {
LABEL_40:
      __break(1u);
      return result;
    }

    (*(v42 + 16))(v2[100], v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v2[95]);
    v43 = swift_task_alloc();
    v2[135] = v43;
    *v43 = v2;
    v43[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v44 = v2[40];
    v45 = v2[38];
    v46 = v2[100];

    return ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(v46, v45, v44);
  }

  else
  {

    v47 = v2[45];
    v48 = *(v47 + 176);
    if (!v48)
    {
      v49 = DecisionEngine.getRREntities()();
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.salientEntitiesProvider.getter();

      dispatch thunk of SalientEntitiesDataProvider.salientEntities.setter();

      *(v47 + 176) = v49;

      v48 = *(v47 + 176);
      v47 = v2[45];
    }

    v2[137] = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    v51 = swift_task_alloc();
    v2[138] = v51;
    *v51 = v2;
    v51[1] = DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:);
    v52 = v2[37];

    return ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(v52, v50, v47 + 96);
  }
}

{
  v2 = *(*v1 + 920);
  *(*v1 + 1088) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v2 = *(*v1 + 920);
  *(*v1 + 1112) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v2 = *(*v1 + 1144);
  *(*v1 + 1160) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v2 = *(*v1 + 1184);
  *(*v1 + 1200) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

{
  v2 = *(*v1 + 1256);
  *(*v1 + 1272) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:conversationHelperInput:inputOrigin:bridge:), v2, 0);
}

uint64_t DecisionEngine.CAMFallbackInfo.init(pommesSearchReason:pommesError:emptyNLInput:hasUndoRequest:conjunctionInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  if (a3)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "[DecisionEngine] userWantedToUndo present, so we need to generate CAM fallback flow to produce undo fallback behavior.", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    return 1;
  }

  else
  {
    v21 = *(v3 + 192);
    v22 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    v23 = type metadata accessor for ServerFallbackReason();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    if (specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(1, v15, v12))
    {
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v21;
      v25[5] = a1;
      v25[6] = a2;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:), v25);

      v26 = [objc_opt_self() sharedPreferences];
      v20 = [v26 shouldDisableServerFallbackDomain];
    }

    else
    {
      v20 = 0;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 67109378;
      *(v30 + 4) = v20;
      *(v30 + 8) = 2080;
      *(v30 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
      _os_log_impl(&dword_1DC659000, v28, v29, "[DecisionEngine] empty nlParses and shouldDisableServerfallbackWithABExperiment = %{BOOL}d for executionRequestId: %s", v30, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }
  }

  return v20;
}

uint64_t DecisionEngine.getCAMFallback(conversationHelperInput:info:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = type metadata accessor for Parse();
  v4[52] = v5;
  v4[53] = *(v5 - 8);
  v4[54] = swift_task_alloc();
  v6 = type metadata accessor for Input();
  v4[55] = v6;
  v4[56] = *(v6 - 8);
  v4[57] = swift_task_alloc();
  v7 = type metadata accessor for Parse.DirectInvocation();
  v4[58] = v7;
  v4[59] = *(v7 - 8);
  v4[60] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v4[61] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.getCAMFallback(conversationHelperInput:info:), v8, 0);
}

uint64_t DecisionEngine.getCAMFallback(conversationHelperInput:info:)()
{
  v1 = *(v0 + 400);
  v2 = v1[1];
  v3 = MEMORY[0x1E69E6158];
  if (v2)
  {
    v4 = *v1;
    *(v0 + 296) = MEMORY[0x1E69E6158];
    *(v0 + 272) = v4;
    *(v0 + 280) = v2;
    outlined init with take of Any((v0 + 272), (v0 + 304));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 304), 0xD000000000000012, 0x80000001DCA81B40, isUniquelyReferenced_nonNull_native);
    v1 = *(v0 + 400);
  }

  v6 = v1[3];
  if (v6)
  {
    v7 = v1[2];
    *(v0 + 232) = v3;
    *(v0 + 208) = v7;
    *(v0 + 216) = v6;
    outlined init with take of Any((v0 + 208), (v0 + 240));

    v8 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 240), 0x724573656D6D6F70, 0xEB00000000726F72, v8);
    v1 = *(v0 + 400);
  }

  v9 = *(v1 + 32);
  v10 = MEMORY[0x1E69E6370];
  *(v0 + 40) = MEMORY[0x1E69E6370];
  *(v0 + 16) = v9;
  outlined init with take of Any((v0 + 16), (v0 + 48));
  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 48), 0x494C4E7974706D65, 0xEC0000007475706ELL, v11);
  v12 = *(v1 + 33);
  *(v0 + 104) = v10;
  *(v0 + 80) = v12;
  outlined init with take of Any((v0 + 80), (v0 + 112));
  v13 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 112), 0x526F646E55736168, 0xEE00747365757165, v13);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v14 = v1[5];
  *(v0 + 360) = v14;
  *(v0 + 368) = v14;
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 360, v0 + 376, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
  lazy protocol witness table accessor for type RequestConjunctionInfo? and conformance <A> A?();
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v17 = v16;
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 360, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);

  *(v0 + 168) = MEMORY[0x1E6969080];
  *(v0 + 144) = v15;
  *(v0 + 152) = v17;
  outlined init with take of Any((v0 + 144), (v0 + 176));
  outlined copy of Data._Representation(v15, v17);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 176), 0x74636E756A6E6F63, 0xEF6F666E496E6F69, v18);
  outlined consume of Data._Representation(v15, v17);
  v20 = *(v0 + 472);
  v19 = *(v0 + 480);
  v21 = *(v0 + 464);
  v23 = *(v0 + 424);
  v22 = *(v0 + 432);
  v24 = *(v0 + 416);
  static CamDirectInvocationIdentifiers.fallback.getter();
  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v20 + 16))(v22, v19, v21);
  (*(v23 + 104))(v22, *MEMORY[0x1E69D0158], v24);
  Input.init(parse:)();
  v25 = swift_task_alloc();
  *(v0 + 496) = v25;
  *v25 = v0;
  v25[1] = DecisionEngine.getCAMFallback(conversationHelperInput:info:);
  v26 = *(v0 + 456);
  v27 = *(v0 + 392);

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v26, v27, 0, 0);
}

{
  v1 = v0[63];
  v2 = v0[60];
  v3 = v0[58];
  v4 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[55];
  v8 = v0[48];

  (*(v4 + 8))(v2, v3);
  v9 = type metadata accessor for DecisionEngineResponse(0);
  v10 = *(v9 + 24);
  (*(v6 + 32))(v8 + v10, v5, v7);
  (*(v6 + 56))(v8 + v10, 0, 1, v7);
  *v8 = v1;
  *(v8 + 8) = 0;
  *(v8 + *(v9 + 28)) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t DecisionEngine.getCAMFallback(conversationHelperInput:info:)(uint64_t a1)
{
  v2 = *(*v1 + 488);
  *(*v1 + 504) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.getCAMFallback(conversationHelperInput:info:), v2, 0);
}

Swift::Void __swiftcall Input.stripSetIdentity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v92 = &v79 - v2;
  v3 = type metadata accessor for Input();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v93 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v90 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v96 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v79 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v79 - v9;
  v10 = type metadata accessor for Siri_Nlu_External_UserParse();
  v99 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - v13;
  v15 = type metadata accessor for USOParse();
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Parse();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79 - v23;
  v25 = v0;
  Input.parse.getter();
  v26 = v19;
  v27 = v20;
  v28 = (*(v20 + 88))(v24, v26);
  if (v28 != *MEMORY[0x1E69D0168])
  {
    (*(v20 + 8))(v24, v26);
    return;
  }

  v29 = v28;
  v30 = *(v27 + 96);
  v84 = v26;
  v30(v24, v26);
  (*(v16 + 32))(v18, v24, v15);
  v31 = USOParse.userParse.getter();
  v32 = MEMORY[0x1E129C0F0](v31);
  v33 = *(v99 + 8);
  v89 = v10;
  v88 = v99 + 8;
  v87 = v33;
  v33(v14, v10);
  v34 = *(v32 + 16);

  if (v34 < 2)
  {
    (*(v16 + 8))(v18, v15);
    return;
  }

  v81 = v29;
  v83 = v14;
  v86 = v25;
  v35 = v98;
  v85 = v18;
  USOParse.userParse.getter();
  v36 = Siri_Nlu_External_UserParse.userDialogActs.modify();
  v103 = v37;
  v38 = *v37;
  v39 = *(*v37 + 16);
  v40 = v16;
  v82 = v27;
  v102 = v39;
  v80 = v36;
  v41 = 0;
  if (v39)
  {
    v42 = v90;
    v104 = v90 + 8;
    v105 = (v90 + 16);
    v100 = v15;
    v101 = v16;
    while (1)
    {
      if (v41 >= *(v38 + 16))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v40 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v43 = v42[9];
      v15 = v42[2];
      v45 = v106;
      v44 = v107;
      v46 = (v15)(v106, v38 + v40 + v43 * v41, v107);
      v25 = Siri_Nlu_External_UserDialogAct.isSetIdentity.getter(v46);
      v18 = v42[1];
      (v18)(v45, v44);
      v35 = v41 + 1;
      if (v25)
      {
        break;
      }

      ++v41;
      v40 = v101;
      v15 = v100;
      if (v102 == v35)
      {
        v41 = *(*v103 + 16);
        v35 = v41;
        goto LABEL_12;
      }
    }

    v63 = *v103;
    v64 = *(*v103 + 16);
    v38 = v85;
    if (v64 - 1 == v41)
    {
      v15 = v100;
      v40 = v101;
      goto LABEL_12;
    }

    v79 = (v42 + 5);
    v25 = v40 + v43 * v35;
    v42 = v105;
    while (v35 < v64)
    {
      v72 = v106;
      v38 = v107;
      v73 = (v15)(v106, v63 + v25, v107);
      v74 = Siri_Nlu_External_UserDialogAct.isSetIdentity.getter(v73);
      (v18)(v72, v38);
      if (v74)
      {
        v42 = v105;
      }

      else
      {
        v42 = v105;
        if (v35 != v41)
        {
          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v75 = *v103;
          if (v41 >= *(*v103 + 16))
          {
            goto LABEL_41;
          }

          v102 = *(*v103 + 16);
          v90 = v41 * v43;
          v38 = v107;
          (v15)(v97, v75 + v40 + v41 * v43, v107);
          if (v35 >= v102)
          {
            goto LABEL_42;
          }

          (v15)(v96, v75 + v25, v38);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v103 = v75;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v75 = specialized _ArrayBuffer._consumeAndCreateNew()(v75);
            *v103 = v75;
          }

          v38 = v107;
          v42 = v79;
          if (v41 >= v75[2])
          {
            goto LABEL_43;
          }

          v77 = v75 + v40;
          v78 = *v79;
          (*v79)(&v77[v90], v96, v107);
          if (v35 >= *(*v103 + 16))
          {
            goto LABEL_44;
          }

          v78((*v103 + v25), v97, v38);
          v42 = v105;
        }

        ++v41;
      }

      ++v35;
      v63 = *v103;
      v64 = *(*v103 + 16);
      v25 += v43;
      if (v35 == v64)
      {
        v15 = v100;
        v40 = v101;
        v38 = v85;
        if (v35 >= v41)
        {
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_38;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
    goto LABEL_14;
  }

  v35 = 0;
LABEL_12:
  specialized Array.replaceSubrange<A>(_:with:)(v41, v35, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  v80(v108, 0);
  v47 = v83;
  v48 = USOParse.userParse.getter();
  v49 = MEMORY[0x1E129C0F0](v48);
  v25 = v89;
  v87(v47, v89);
  v50 = *(v49 + 16);

  v52 = *(MEMORY[0x1E129C0F0](v51) + 16);

  v53 = v50 == v52;
  v42 = v86;
  v18 = v95;
  v41 = v99;
  if (v53)
  {
    goto LABEL_20;
  }

  v38 = Input.description.getter();
  v35 = v54;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_45;
  }

LABEL_14:
  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.executor);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v108[0] = v59;
    *v58 = 136315138;
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v35, v108);

    *(v58 + 4) = v60;
    _os_log_impl(&dword_1DC659000, v56, v57, "[DecisionEngine] setIdentity stripped %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    v61 = v59;
    v25 = v89;
    MEMORY[0x1E12A2F50](v61, -1, -1);
    v62 = v58;
    v42 = v86;
    MEMORY[0x1E12A2F50](v62, -1, -1);
  }

  else
  {
  }

LABEL_20:
  v66 = v93;
  v65 = v94;
  (*(v94 + 32))(v93, v42, v18);
  v67 = v98;
  (*(v41 + 16))(v83, v98, v25);
  v68 = v85;
  USOParse.parserIdentifier.getter();
  USOParse.appBundleId.getter();
  v69 = v91;
  USOParse.init(userParse:parserIdentifier:appBundleId:)();
  v70 = v82;
  v71 = v84;
  (*(v82 + 104))(v69, v81, v84);
  Input.withReformedParse(_:)();
  (*(v70 + 8))(v69, v71);
  (*(v65 + 8))(v66, v95);
  v87(v67, v89);
  (*(v40 + 8))(v68, v15);
}

void *DecisionEngine.getRREntities()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "[DecisionEngine] Beginning collecting the RRCandidates", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  v10 = dispatch thunk of ReferenceResolutionClientProtocol.retrieveSalientEntities()();
  v11 = v10;
  if (v12)
  {
    v13 = v10;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    outlined consume of Result<[RRCandidate], Error>(v11, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v11;
      v34 = v32;
      *v16 = 136315138;
      v17 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v34);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1DC659000, v14, v15, "[DecisionEngine] Error when retrieving RRCandidates : %s", v16, 0xCu);
      v21 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    outlined consume of Result<[RRCandidate], Error>(v11, 1);
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315138;
      v26 = type metadata accessor for RRCandidate();
      v27 = MEMORY[0x1E12A16D0](v11, v26);
      v32 = v5;
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v34);
      v5 = v32;

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1DC659000, v22, v23, "[DecisionEngine] RRCandidates: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    outlined consume of Result<[RRCandidate], Error>(v11, 0);
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v5, v2);
  return v11;
}

uint64_t DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for PluginAction();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for AmbiguityOutput(0);
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7[21] = swift_task_alloc();
  v10 = type metadata accessor for Input();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static MessageBusActor.shared;
  v7[26] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:), v11, 0);
}

void DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)()
{
  v88 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[7], v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v20 = v0[25];
    v21 = v0[22];
    v22 = v0[23];
    v23 = v0[21];
    v24 = *(v22 + 32);
    v0[27] = v24;
    v0[28] = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v20, v23, v21);
    v25 = swift_task_alloc();
    v0[29] = v25;
    *v25 = v0;
    v25[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
    v26 = v0[25];
LABEL_13:
    v27 = v0[8];

    ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v26, v27, 0, 0);
    return;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0[21], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[7];
  v8 = type metadata accessor for AmbiguityServiceResponse(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7 + *(v8 + 20), v6, &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[16], &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
LABEL_4:
    v9 = v0[9];
    v10 = v0[8];
    v11 = type metadata accessor for ConversationHelperInput(0);
    if (DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*(v10 + *(v11 + 20)), *(v10 + *(v11 + 20) + 8), *(v9 + 33)))
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.executor);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1DC659000, v13, v14, "[DecisionEngine]: Generating CAM Fallback", v15, 2u);
        MEMORY[0x1E12A2F50](v15, -1, -1);
      }

      v16 = swift_task_alloc();
      v0[45] = v16;
      *v16 = v0;
      v16[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
      v17 = v0[9];
      v18 = v0[8];
      v19 = v0[6];

      DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v19, v18, v17);
      return;
    }

    v40 = v0[6];

    v41 = type metadata accessor for DecisionEngineResponse(0);
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    goto LABEL_37;
  }

  v28 = v0[19];
  v29 = v0[20];
  _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v0[16], v29, type metadata accessor for AmbiguityOutput);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v29, v28, type metadata accessor for AmbiguityOutput);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v0[23];
    v30 = v0[24];
    v32 = v0[22];
    v33 = v0[19];
    v34 = *(v31 + 32);
    v0[41] = v34;
    v0[42] = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v34(v30, v33, v32);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.executor);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "[AmbiguityService]: Received an ambiguity flow", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v39 = swift_task_alloc();
    v0[43] = v39;
    *v39 = v0;
    v39[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
    v26 = v0[24];
    goto LABEL_13;
  }

  v42 = *v0[19];
  v0[31] = v42;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v0[32] = __swift_project_value_buffer(v43, static Logger.executor);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1DC659000, v44, v45, "[DecisionEngine]: Received actions to execute", v46, 2u);
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  v47 = *(v42 + 16);
  v0[33] = v47;
  if (!v47)
  {
    outlined destroy of RemoteConversationTurnData(v0[20], type metadata accessor for AmbiguityOutput);

    goto LABEL_4;
  }

  v48 = v0[12];
  v0[34] = 0;
  v49 = v0[31];
  if (!*(v49 + 16))
  {
    __break(1u);
    return;
  }

  v52 = *(v48 + 16);
  v50 = v48 + 16;
  v51 = v52;
  v53 = v0[15];
  v54 = v0[11];
  v55 = (*(v50 + 64) + 32) & ~*(v50 + 64);
  v0[35] = v52;
  v0[36] = v50 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v53, v49 + v55, v54);
  if (PluginAction.flowHandlerId.getter() == 0xD000000000000013 && 0x80000001DCA7C5A0 == v56)
  {

LABEL_34:

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DC659000, v58, v59, "[DecisionEngine]: Found SNLC handler. Returning corresponding response", v60, 2u);
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }

    v61 = v0[23];
    v85 = v0[22];
    v62 = v0[20];
    v63 = v0[15];
    v64 = v0[11];
    v65 = v0[12];
    v66 = v0[6];

    v67 = type metadata accessor for DecisionEngineResponse(0);
    v68 = *(v67 + 24);
    PluginAction.input.getter();
    (*(v65 + 8))(v63, v64);
    outlined destroy of RemoteConversationTurnData(v62, type metadata accessor for AmbiguityOutput);
    (*(v61 + 56))(v66 + v68, 0, 1, v85);
    *v66 = 0;
    *(v66 + 8) = 0;
    *(v66 + *(v67 + 28)) = 0;
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
LABEL_37:

    v69 = v0[1];

    v69();
    return;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {
    goto LABEL_34;
  }

  v51(v0[14], v0[15], v0[11]);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v0[14];
  v74 = v0[11];
  v75 = v0[12];
  if (v72)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v87 = v77;
    *v76 = 136315138;
    v86 = PluginAction.flowHandlerId.getter();
    v79 = v78;
    v80 = *(v75 + 8);
    v80(v73, v74);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v79, &v87);

    *(v76 + 4) = v81;
    _os_log_impl(&dword_1DC659000, v70, v71, "[DecisionEngine]: Trying to load new conversation for %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    MEMORY[0x1E12A2F50](v77, -1, -1);
    MEMORY[0x1E12A2F50](v76, -1, -1);
  }

  else
  {

    v80 = *(v75 + 8);
    v80(v73, v74);
  }

  v0[37] = v80;
  v82 = swift_task_alloc();
  v0[38] = v82;
  *v82 = v0;
  v82[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  v83 = v0[15];
  v84 = v0[8];

  ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v83, v84);
}

{
  v87 = v0;
  v1 = v0[30];
  if (v1)
  {
    v2 = v0[27];
    v3 = v0[25];
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[6];

    v7 = type metadata accessor for DecisionEngineResponse(0);
    v8 = *(v7 + 24);
    v2(v6 + v8, v3, v4);
    (*(v5 + 56))(v6 + v8, 0, 1, v4);
    *v6 = v1;
    *(v6 + 8) = 0;
    *(v6 + *(v7 + 28)) = 0;
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
LABEL_3:

    v9 = v0[1];

    v9();
    return;
  }

  (*(v0[23] + 8))(v0[25], v0[22]);
  v10 = v0[17];
  v11 = v0[18];
  v12 = v0[16];
  v13 = v0[7];
  v14 = type metadata accessor for AmbiguityServiceResponse(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v13 + *(v14 + 20), v12, &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[16], &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  }

  else
  {
    v26 = v0[19];
    v27 = v0[20];
    _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v0[16], v27, type metadata accessor for AmbiguityOutput);
    _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v27, v26, type metadata accessor for AmbiguityOutput);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v0[23];
      v28 = v0[24];
      v30 = v0[22];
      v31 = v0[19];
      v32 = *(v29 + 32);
      v0[41] = v32;
      v0[42] = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v32(v28, v31, v30);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1DC659000, v34, v35, "[AmbiguityService]: Received an ambiguity flow", v36, 2u);
        MEMORY[0x1E12A2F50](v36, -1, -1);
      }

      v37 = swift_task_alloc();
      v0[43] = v37;
      *v37 = v0;
      v37[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
      v38 = v0[24];
      v39 = v0[8];

      ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v38, v39, 0, 0);
      return;
    }

    v42 = *v0[19];
    v0[31] = v42;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    v0[32] = __swift_project_value_buffer(v43, static Logger.executor);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v44, v45, "[DecisionEngine]: Received actions to execute", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    v47 = *(v42 + 16);
    v0[33] = v47;
    if (v47)
    {
      v48 = v0[12];
      v0[34] = 0;
      v49 = v0[31];
      if (!*(v49 + 16))
      {
        __break(1u);
        return;
      }

      v52 = *(v48 + 16);
      v50 = v48 + 16;
      v51 = v52;
      v53 = v0[15];
      v54 = v0[11];
      v55 = (*(v50 + 64) + 32) & ~*(v50 + 64);
      v0[35] = v52;
      v0[36] = v50 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v52(v53, v49 + v55, v54);
      if (PluginAction.flowHandlerId.getter() == 0xD000000000000013 && 0x80000001DCA7C5A0 == v56)
      {
      }

      else
      {
        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v57 & 1) == 0)
        {
          v51(v0[14], v0[15], v0[11]);
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.debug.getter();
          v71 = os_log_type_enabled(v69, v70);
          v72 = v0[14];
          v73 = v0[11];
          v74 = v0[12];
          if (v71)
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v86 = v76;
            *v75 = 136315138;
            v85 = PluginAction.flowHandlerId.getter();
            v78 = v77;
            v79 = *(v74 + 8);
            v79(v72, v73);
            v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v78, &v86);

            *(v75 + 4) = v80;
            _os_log_impl(&dword_1DC659000, v69, v70, "[DecisionEngine]: Trying to load new conversation for %s", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v76);
            MEMORY[0x1E12A2F50](v76, -1, -1);
            MEMORY[0x1E12A2F50](v75, -1, -1);
          }

          else
          {

            v79 = *(v74 + 8);
            v79(v72, v73);
          }

          v0[37] = v79;
          v81 = swift_task_alloc();
          v0[38] = v81;
          *v81 = v0;
          v81[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
          v82 = v0[15];
          v83 = v0[8];

          ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v82, v83);
          return;
        }
      }

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1DC659000, v58, v59, "[DecisionEngine]: Found SNLC handler. Returning corresponding response", v60, 2u);
        MEMORY[0x1E12A2F50](v60, -1, -1);
      }

      v61 = v0[23];
      v84 = v0[22];
      v62 = v0[20];
      v63 = v0[15];
      v64 = v0[11];
      v65 = v0[12];
      v66 = v0[6];

      v67 = type metadata accessor for DecisionEngineResponse(0);
      v68 = *(v67 + 24);
      PluginAction.input.getter();
      (*(v65 + 8))(v63, v64);
      outlined destroy of RemoteConversationTurnData(v62, type metadata accessor for AmbiguityOutput);
      (*(v61 + 56))(v66 + v68, 0, 1, v84);
      *v66 = 0;
      *(v66 + 8) = 0;
      *(v66 + *(v67 + 28)) = 0;
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      goto LABEL_3;
    }

    outlined destroy of RemoteConversationTurnData(v0[20], type metadata accessor for AmbiguityOutput);
  }

  v15 = v0[9];
  v16 = v0[8];
  v17 = type metadata accessor for ConversationHelperInput(0);
  if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*(v16 + *(v17 + 20)), *(v16 + *(v17 + 20) + 8), *(v15 + 33)) & 1) == 0)
  {
    v40 = v0[6];

    v41 = type metadata accessor for DecisionEngineResponse(0);
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    goto LABEL_3;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.executor);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "[DecisionEngine]: Generating CAM Fallback", v21, 2u);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  v22 = swift_task_alloc();
  v0[45] = v22;
  *v22 = v0;
  v22[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  v23 = v0[9];
  v24 = v0[8];
  v25 = v0[6];

  DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v25, v24, v23);
}

uint64_t DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)(uint64_t a1)
{
  v2 = *(*v1 + 208);
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:), v2, 0);
}

{
  v4 = *v2;
  v4[39] = v1;

  v5 = v4[26];
  if (v1)
  {
    v6 = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  }

  else
  {
    v4[40] = a1;
    v6 = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *(*v1 + 208);
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:), v2, 0);
}

uint64_t DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:)()
{
  v81 = v0;
  if (v0[40])
  {
    v1 = v0[35];
    v2 = v0[15];
    v3 = v0[13];
    v4 = v0[11];

    v1(v3, v2, v4);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[37];
    v9 = v0[13];
    v10 = v0[11];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v80 = v12;
      *v11 = 136315138;
      v13 = PluginAction.flowHandlerId.getter();
      v15 = v14;
      v8(v9, v10);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v80);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1DC659000, v5, v6, "[DecisionEngine]: Found new conversation for %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    else
    {

      v8(v9, v10);
    }

    v30 = v0[37];
    v31 = v0[23];
    v76 = v0[22];
    v77 = v0[40];
    v32 = v0[20];
    v33 = v0[15];
    v34 = v0[11];
    v35 = v0[6];
    v36 = type metadata accessor for DecisionEngineResponse(0);
    v37 = *(v36 + 24);
    PluginAction.input.getter();
    v30(v33, v34);
    outlined destroy of RemoteConversationTurnData(v32, type metadata accessor for AmbiguityOutput);
    (*(v31 + 56))(v35 + v37, 0, 1, v76);
    *v35 = v77;
    *(v35 + 8) = 0;
    *(v35 + *(v36 + 28)) = 0;
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    goto LABEL_14;
  }

  (v0[37])(v0[15], v0[11]);
  v17 = v0[34] + 1;
  if (v17 == v0[33])
  {
    outlined destroy of RemoteConversationTurnData(v0[20], type metadata accessor for AmbiguityOutput);

    v18 = v0[9];
    v19 = v0[8];
    v20 = type metadata accessor for ConversationHelperInput(0);
    if ((DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*(v19 + *(v20 + 20)), *(v19 + *(v20 + 20) + 8), *(v18 + 33)) & 1) == 0)
    {
      v47 = v0[6];

      v48 = type metadata accessor for DecisionEngineResponse(0);
      (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
LABEL_14:

      v38 = v0[1];

      return v38();
    }

    if (one-time initialization token for executor == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  v0[34] = v17;
  v39 = v0[31];
  if (v17 >= *(v39 + 16))
  {
    __break(1u);
LABEL_33:
    swift_once();
LABEL_7:
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.executor);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "[DecisionEngine]: Generating CAM Fallback", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    v0[45] = v25;
    *v25 = v0;
    v25[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
    v26 = v0[9];
    v27 = v0[8];
    v28 = v0[6];

    return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v28, v27, v26);
  }

  v40 = v0[15];
  v41 = v0[11];
  v42 = v0[12];
  v44 = *(v42 + 16);
  v42 += 16;
  v43 = v44;
  v45 = v39 + ((*(v42 + 64) + 32) & ~*(v42 + 64)) + *(v42 + 56) * v17;
  v0[35] = v44;
  v0[36] = v42 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v40, v45, v41);
  if (PluginAction.flowHandlerId.getter() == 0xD000000000000013 && 0x80000001DCA7C5A0 == v46)
  {

LABEL_23:

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DC659000, v50, v51, "[DecisionEngine]: Found SNLC handler. Returning corresponding response", v52, 2u);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    v53 = v0[23];
    v78 = v0[22];
    v54 = v0[20];
    v55 = v0[15];
    v56 = v0[11];
    v57 = v0[12];
    v58 = v0[6];

    v59 = type metadata accessor for DecisionEngineResponse(0);
    v60 = *(v59 + 24);
    PluginAction.input.getter();
    (*(v57 + 8))(v55, v56);
    outlined destroy of RemoteConversationTurnData(v54, type metadata accessor for AmbiguityOutput);
    (*(v53 + 56))(v58 + v60, 0, 1, v78);
    *v58 = 0;
    *(v58 + 8) = 0;
    *(v58 + *(v59 + 28)) = 0;
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    goto LABEL_14;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
    goto LABEL_23;
  }

  v43(v0[14], v0[15], v0[11]);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v0[14];
  v65 = v0[11];
  v66 = v0[12];
  if (v63)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v80 = v68;
    *v67 = 136315138;
    v79 = PluginAction.flowHandlerId.getter();
    v70 = v69;
    v71 = *(v66 + 8);
    v71(v64, v65);
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v70, &v80);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_1DC659000, v61, v62, "[DecisionEngine]: Trying to load new conversation for %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  else
  {

    v71 = *(v66 + 8);
    v71(v64, v65);
  }

  v0[37] = v71;
  v73 = swift_task_alloc();
  v0[38] = v73;
  *v73 = v0;
  v73[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  v74 = v0[15];
  v75 = v0[8];

  return ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v74, v75);
}

{
  v1 = v0[44];
  v2 = v0[41];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[20];
  v7 = v0[6];

  outlined destroy of RemoteConversationTurnData(v6, type metadata accessor for AmbiguityOutput);
  v8 = type metadata accessor for DecisionEngineResponse(0);
  v9 = *(v8 + 24);
  v2(v7 + v9, v3, v5);
  (*(v4 + 56))(v7 + v9, 0, 1, v5);
  *v7 = v1;
  *(v7 + 8) = 0;
  *(v7 + *(v8 + 28)) = 0;
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(*v0 + 208);

  return MEMORY[0x1EEE6DFA0](DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:), v1, 0);
}

{
  v1 = *(v0 + 48);

  v2 = type metadata accessor for DecisionEngineResponse(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

{
  v72 = v0;
  v1 = *(v0 + 312);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 120);
    v7 = *(v0 + 88);
    v68 = *(v0 + 296);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v71 = v9;
    *v8 = 136315138;
    *(v0 + 40) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v71);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v3, v4, "[AmbiguityService]: Error when loading a new conversation from a plugin action: %s. Will try the next pluginAction", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);

    v68(v6, v7);
  }

  else
  {
    v14 = *(v0 + 296);
    v15 = *(v0 + 120);
    v16 = *(v0 + 88);

    v14(v15, v16);
  }

  v17 = *(v0 + 272) + 1;
  if (v17 == *(v0 + 264))
  {
    outlined destroy of RemoteConversationTurnData(*(v0 + 160), type metadata accessor for AmbiguityOutput);

    v18 = *(v0 + 72);
    v19 = *(v0 + 64);
    v20 = type metadata accessor for ConversationHelperInput(0);
    if (DecisionEngine.shouldGenerateCAMFallback(executionRequestId:userWantedToUndo:)(*(v19 + *(v20 + 20)), *(v19 + *(v20 + 20) + 8), *(v18 + 33)))
    {
      if (one-time initialization token for executor == -1)
      {
LABEL_7:
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.executor);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1DC659000, v22, v23, "[DecisionEngine]: Generating CAM Fallback", v24, 2u);
          MEMORY[0x1E12A2F50](v24, -1, -1);
        }

        v25 = swift_task_alloc();
        *(v0 + 360) = v25;
        *v25 = v0;
        v25[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
        v26 = *(v0 + 72);
        v27 = *(v0 + 64);
        v28 = *(v0 + 48);

        return DecisionEngine.getCAMFallback(conversationHelperInput:info:)(v28, v27, v26);
      }

LABEL_31:
      swift_once();
      goto LABEL_7;
    }

    v38 = *(v0 + 48);

    v39 = type metadata accessor for DecisionEngineResponse(0);
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    goto LABEL_21;
  }

  *(v0 + 272) = v17;
  v30 = *(v0 + 248);
  if (v17 >= *(v30 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v31 = *(v0 + 120);
  v32 = *(v0 + 88);
  v33 = *(v0 + 96);
  v35 = *(v33 + 16);
  v33 += 16;
  v34 = v35;
  v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64)) + *(v33 + 56) * v17;
  *(v0 + 280) = v35;
  *(v0 + 288) = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v31, v36, v32);
  if (PluginAction.flowHandlerId.getter() == 0xD000000000000013 && 0x80000001DCA7C5A0 == v37)
  {

LABEL_18:

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DC659000, v41, v42, "[DecisionEngine]: Found SNLC handler. Returning corresponding response", v43, 2u);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    v44 = *(v0 + 184);
    v69 = *(v0 + 176);
    v45 = *(v0 + 160);
    v46 = *(v0 + 120);
    v47 = *(v0 + 88);
    v48 = *(v0 + 96);
    v49 = *(v0 + 48);

    v50 = type metadata accessor for DecisionEngineResponse(0);
    v51 = *(v50 + 24);
    PluginAction.input.getter();
    (*(v48 + 8))(v46, v47);
    outlined destroy of RemoteConversationTurnData(v45, type metadata accessor for AmbiguityOutput);
    (*(v44 + 56))(v49 + v51, 0, 1, v69);
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + *(v50 + 28)) = 0;
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
LABEL_21:

    v52 = *(v0 + 8);

    return v52();
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_18;
  }

  v34(*(v0 + 112), *(v0 + 120), *(v0 + 88));
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 112);
  v57 = *(v0 + 88);
  v58 = *(v0 + 96);
  if (v55)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v71 = v60;
    *v59 = 136315138;
    v70 = PluginAction.flowHandlerId.getter();
    v62 = v61;
    v63 = *(v58 + 8);
    v63(v56, v57);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v62, &v71);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_1DC659000, v53, v54, "[DecisionEngine]: Trying to load new conversation for %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x1E12A2F50](v60, -1, -1);
    MEMORY[0x1E12A2F50](v59, -1, -1);
  }

  else
  {

    v63 = *(v58 + 8);
    v63(v56, v57);
  }

  *(v0 + 296) = v63;
  v65 = swift_task_alloc();
  *(v0 + 304) = v65;
  *v65 = v0;
  v65[1] = DecisionEngine.selectConversationFrom(ambiguityServiceResponse:conversationHelperInput:inputOrigin:camFallbackInfo:);
  v66 = *(v0 + 120);
  v67 = *(v0 + 64);

  return ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(v66, v67);
}

uint64_t DecisionEngine.CAMFallbackInfo.pommesSearchReason.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DecisionEngine.CAMFallbackInfo.pommesSearchReason.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DecisionEngine.CAMFallbackInfo.pommesError.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DecisionEngine.CAMFallbackInfo.pommesError.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *DecisionEngine.CAMFallbackInfo.conjunctionInfo.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

double DecisionEngine.CAMFallbackInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *DecisionEngine.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);

  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 25), &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  return v0;
}

uint64_t DecisionEngine.__deallocating_deinit()
{
  DecisionEngine.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DecisionMaking.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:) in conformance DecisionEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return DecisionEngine.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for DecisionMaking.loadConversationFromPluginAction(_:speechData:turnData:bridge:) in conformance DecisionEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for AceServiceInvokerAsync.submitToRemote<A>(_:_:setRefId:) in conformance AceServiceInvokerImpl;

  return DecisionEngine.loadConversationFromPluginAction(_:speechData:turnData:bridge:)(a1, a2, a3, a4, a5);
}

uint64_t Siri_Nlu_External_UserDialogAct.isSetIdentity.getter(double a1)
{
  v1 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
  {
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v6 + 8))(v8, v5);
    v9 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    (*(v2 + 8))(v4, v1);
    v10 = MEMORY[0x1E129C9E0](v9);
    v11 = v10;
    if (v10 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v13 = 0;
      while ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](v13, v11);
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_16;
        }

LABEL_13:
        static UsoTask_CodegenConverter.convert(task:)();

        if (v18)
        {
          outlined init with take of Any(&v17, v19);
          outlined init with take of Any(v19, &v17);
          type metadata accessor for UsoTask_setIdentity_common_Person();
          if (swift_dynamicCast())
          {

            return 1;
          }
        }

        else
        {
          outlined destroy of ReferenceResolutionClientProtocol?(&v17, &_sypSgMd, &_sypSgMR);
        }

        ++v13;
        if (v14 == i)
        {
          goto LABEL_19;
        }
      }

      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v14 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_13;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }

  return 0;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for RecentDialog();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized DecisionEngine.init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38[3] = a10;
  v38[4] = a12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_0, a3, a10);
  v37[3] = a9;
  v37[4] = a11;
  v20 = __swift_allocate_boxed_opaque_existential_0(v37);
  (*(*(a9 - 8) + 32))(v20, a5, a9);
  type metadata accessor for ServerFallbackDisablingUtils();
  *(a8 + 176) = 0;
  *(a8 + 184) = 0;
  v21 = swift_allocObject();
  v21[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v21[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v21[4] = 0;
  *(a8 + 192) = v21;
  *(a8 + 200) = 0u;
  *(a8 + 216) = 0u;
  *(a8 + 232) = 0;
  *(a8 + 24) = a1;
  outlined init with copy of ReferenceResolutionClientProtocol(a2, a8 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v37, &v34);
  type metadata accessor for ConversationHelper();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(&v34, v22 + 24);
  *(a8 + 32) = v22;
  v23 = type metadata accessor for LinkMetadataProvider();
  v24 = swift_allocObject();
  v25 = objc_allocWithZone(MEMORY[0x1E69ACF60]);
  swift_retain_n();

  *(v24 + 16) = [v25 init];
  v26 = type metadata accessor for AppShortcutStateProvider();
  v27 = swift_allocObject();
  type metadata accessor for AppShortcutExpansionContextBuilder();
  v28 = swift_allocObject();
  v28[9] = v23;
  v28[10] = &protocol witness table for LinkMetadataProvider;
  v28[6] = v24;
  v28[14] = v26;
  v28[15] = &protocol witness table for AppShortcutStateProvider;
  v28[11] = v27;
  type metadata accessor for ConditionalIntentMetadataStore();
  v28[4] = 0;
  v28[5] = 0;
  v28[3] = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = MEMORY[0x1E69E7CC8];
  v28[2] = v29;
  type metadata accessor for ActionGenerator();
  v30 = swift_allocObject();
  v30[3] = v28;
  v30[4] = a1;
  v30[2] = a4;
  *(a8 + 16) = v30;
  outlined init with copy of ReferenceResolutionClientProtocol(v38, &v34);
  type metadata accessor for CorrectionsService();
  v31 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(&v34, v31 + 16);
  *(v31 + 56) = a1;
  *(a8 + 40) = v31;
  *(a8 + 88) = a7;
  v35 = type metadata accessor for AppShortcutProvider();
  v36 = MEMORY[0x1E69CFFA8];
  __swift_allocate_boxed_opaque_existential_0(&v34);

  AppShortcutProvider.init()();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  outlined init with take of ReferenceResolutionClientProtocol(&v34, a8 + 96);
  outlined init with take of ReferenceResolutionClientProtocol(a6, a8 + 136);
  return a8;
}