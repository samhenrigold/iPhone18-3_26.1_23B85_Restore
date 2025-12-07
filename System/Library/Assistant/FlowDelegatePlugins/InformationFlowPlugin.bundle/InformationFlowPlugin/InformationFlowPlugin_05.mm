unint64_t lazy protocol witness table accessor for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError()
{
  result = lazy protocol witness table cache variable for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError;
  if (!lazy protocol witness table cache variable for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError);
  }

  return result;
}

uint64_t RunPommesRequestFlow.execute()(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = type metadata accessor for ExternalActivationRequest();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v2[37] = swift_task_alloc();
  v5 = type metadata accessor for IdentifiedUser();
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();

  return _swift_task_switch(RunPommesRequestFlow.execute(), 0, 0);
}

uint64_t RunPommesRequestFlow.execute()()
{
  v1 = [objc_allocWithZone(SARDRunPOMMESRequest) init];
  v0[41] = v1;
  v2 = PommesResponse.asrRecognition.getter();
  if (v2)
  {
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  [v1 setRequestType:v3];

  v4 = PommesResponse.asrRecognition.getter();
  [v1 setRecognition:v4];

  PommesResponse.searchRequestUtterance.getter();
  v5 = String._bridgeToObjectiveC()();

  [v1 setUtterance:v5];

  PommesResponse.responseVariantResult.getter();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[38];
  v9 = v0[39];
  v10 = v0[37];
  v11 = v0[30];
  [v1 setResponseVariantResult:v7];

  outlined init with copy of IdentifiedUser?(v11 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser, v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    outlined destroy of IdentifiedUser?(v0[37]);
    PommesResponse.sharedUserId.getter();
    if (v12)
    {
      v13 = String._bridgeToObjectiveC()();
    }

    else
    {
      v13 = 0;
    }

    [v1 setUserId:v13];
  }

  else
  {
    (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
    IdentifiedUser.sharedUserId.getter();
    if (v14)
    {
      v15 = String._bridgeToObjectiveC()();
    }

    else
    {
      v15 = 0;
    }

    v17 = v0[39];
    v16 = v0[40];
    v18 = v0[38];
    [v1 setUserId:v15];

    [v1 setUserIdentityClassification:SAUserIdentityClassificationConfidentValue];
    v19 = IdentifiedUser.selectedUserAttributes.getter();
    [v1 setSelectedUserAttributes:v19];

    (*(v17 + 8))(v16, v18);
  }

  v20 = PommesResponse.encodedNLUserParses.getter();
  if (v21 >> 60 != 15)
  {
    v22 = v20;
    v23 = v21;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v1 setNlUserParses:isa];

    outlined consume of Data?(v22, v23);
  }

  v25 = PommesResponse.encodedNLFallbackParse.getter();
  if (v26 >> 60 != 15)
  {
    v27 = v25;
    v28 = v26;
    v29 = Data._bridgeToObjectiveC()().super.isa;
    [v1 setNlFallbackParse:v29];

    outlined consume of Data?(v27, v28);
  }

  v31 = v0[35];
  v30 = v0[36];
  v32 = v0[34];
  v33 = [objc_allocWithZone(SAStartLocalRequest) init];
  v0[42] = v33;
  v34 = v33;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v31 + 8))(v30, v32);
  v35 = String._bridgeToObjectiveC()();

  [v34 setAceId:v35];

  [v34 setRefId:0];
  v36 = v1;
  v37 = [v34 aceId];

  [v36 setRefId:v37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_B9BD0;
  *(v38 + 32) = v36;
  v39 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v34 setClientBoundCommands:v40];

  v41 = [objc_allocWithZone(AFRequestInfo) init];
  v0[43] = v41;
  [v41 setStartLocalRequest:v34];
  [v41 setActivationEvent:7];
  [v41 setOptions:0];
  v42 = v41;
  ExternalActivationRequest.init(requestInfo:flowActivity:)();
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v0[44] = __swift_project_value_buffer(v43, static Logger.information);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "Publishing ExternalActivationRequest from RunPommesRequestFlow", v46, 2u);
  }

  v48 = v0[32];
  v47 = v0[33];
  v50 = v0[30];
  v49 = v0[31];

  v51 = (v50 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher);
  v52 = *(v50 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher + 24);
  v53 = v51[4];
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v0[17] = v49;
  v0[18] = &protocol witness table for ExternalActivationRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  (*(v48 + 16))(boxed_opaque_existential_1, v47, v49);
  v55 = swift_task_alloc();
  v0[45] = v55;
  *v55 = v0;
  v55[1] = RunPommesRequestFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 14, v52, v53);
}

{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = RunPommesRequestFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 112));
    v3 = RunPommesRequestFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for ExternalActivationRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  *(v0 + 104) = 0;
  v6 = OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  swift_beginAccess();
  outlined assign with take of RunPommesRequestFlow.State(v0 + 64, v4 + v6);
  swift_endAccess();
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 328);
  static ExecuteResponse.complete()();

  v10 = *(v0 + 8);

  return v10();
}

{
  v16 = v0;
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v15);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "Unable to publish AceOutput from RunPommesRequestFlow with error: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  v8 = *(v0 + 240);
  *(v0 + 16) = *(v0 + 368);
  *(v0 + 56) = 1;
  v9 = OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  swift_beginAccess();
  outlined assign with take of RunPommesRequestFlow.State(v0 + 16, v8 + v9);
  swift_endAccess();
  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v12 = *(v0 + 328);
  static ExecuteResponse.complete()();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t outlined destroy of IdentifiedUser?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RunPommesRequestFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RunPommesRequestFlow(0);
  lazy protocol witness table accessor for type RunPommesRequestFlow and conformance RunPommesRequestFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RunPommesRequestFlow.InvalidStateError()
{
  v1 = *v0;

  return v1;
}

uint64_t RunPommesRequestFlow.deinit()
{
  outlined destroy of IdentifiedUser?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher));
  outlined destroy of RunPommesRequestFlow.State(v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state);
  return v0;
}

uint64_t RunPommesRequestFlow.__deallocating_deinit()
{
  outlined destroy of IdentifiedUser?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher));
  outlined destroy of RunPommesRequestFlow.State(v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance RunPommesRequestFlow(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t type metadata accessor for RunPommesRequestFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for RunPommesRequestFlow;
  if (!type metadata singleton initialization cache for RunPommesRequestFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RunPommesRequestFlow and conformance RunPommesRequestFlow()
{
  result = lazy protocol witness table cache variable for type RunPommesRequestFlow and conformance RunPommesRequestFlow;
  if (!lazy protocol witness table cache variable for type RunPommesRequestFlow and conformance RunPommesRequestFlow)
  {
    type metadata accessor for RunPommesRequestFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunPommesRequestFlow and conformance RunPommesRequestFlow);
  }

  return result;
}

void type metadata completion function for RunPommesRequestFlow(uint64_t a1)
{
  type metadata accessor for IdentifiedUser?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for IdentifiedUser?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IdentifiedUser?)
  {
    type metadata accessor for IdentifiedUser();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IdentifiedUser?);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RunPommesRequestFlow.InvalidStateError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RunPommesRequestFlow.InvalidStateError(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_21InformationFlowPlugin016RunPommesRequestB0C5State33_64756BB0B454E557F97EA22C3AC45B02LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RunPommesRequestFlow.State(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RunPommesRequestFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for RunPommesRequestFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t USOParse.userConfirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for USOParse();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v43 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  USOParse.userParse.getter();
  v17 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v9 + 8))(v11, v8);
  if (*(v17 + 16))
  {
    (*(v13 + 16))(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

    if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
    {
      (*(v13 + 8))(v15, v12);
      v18 = enum case for ConfirmationResponse.rejected(_:);
      v19 = type metadata accessor for ConfirmationResponse();
      v20 = *(v19 - 8);
      v21 = v45;
      (*(v20 + 104))(v45, v18, v19);
      return (*(v20 + 56))(v21, 0, 1, v19);
    }

    v39 = Siri_Nlu_External_UserDialogAct.hasAccepted.getter();
    (*(v13 + 8))(v15, v12);
    if (v39)
    {
      v40 = enum case for ConfirmationResponse.confirmed(_:);
      v19 = type metadata accessor for ConfirmationResponse();
      v20 = *(v19 - 8);
      v21 = v45;
      (*(v20 + 104))(v45, v40, v19);
      return (*(v20 + 56))(v21, 0, 1, v19);
    }
  }

  else
  {
    v22 = v16;
    v24 = v43;
    v23 = v44;
    v25 = v5;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.information);
    v27 = *(v24 + 16);
    v28 = v7;
    v29 = v23;
    v27(v7, v22, v23);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v28;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      v27(v25, v32, v29);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      (*(v24 + 8))(v32, v29);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v46);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, v30, v31, "Invalid USOParse while looking for user confirmation. Parse has no UDAs: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    else
    {

      (*(v24 + 8))(v28, v23);
    }
  }

  v42 = type metadata accessor for ConfirmationResponse();
  return (*(*(v42 - 8) + 56))(v45, 1, 1, v42);
}

uint64_t Input.userCancelled.getter()
{
  v0 = type metadata accessor for Parse.DirectInvocation();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Parse.directInvocation(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v1 + 32))(v3, v11, v0);
    v13 = Parse.DirectInvocation.identifier.getter();
    v15 = v14;
    v16 = static SiriKitDirectInvocationPayloads.cancel.getter();
    v17 = [v16 identifier];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v13 == v18 && v15 == v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v1 + 8))(v3, v0);
  }

  else if (v12 == enum case for Parse.uso(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v22 = USOParse.userCancelled.getter();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t Input.userConfirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for Parse.DirectInvocation();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for Parse.directInvocation(_:))
  {
    if (v13 == enum case for Parse.uso(_:))
    {
      (*(v10 + 96))(v12, v9);
      (*(v6 + 32))(v8, v12, v5);
      USOParse.userConfirmationResponse.getter(v39);
      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      v34 = type metadata accessor for ConfirmationResponse();
      (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
      return (*(v10 + 8))(v12, v9);
    }
  }

  (*(v10 + 96))(v12, v9);
  (*(v2 + 32))(v4, v12, v1);
  v14 = Parse.DirectInvocation.identifier.getter();
  v16 = v15;
  v17 = static SiriKitDirectInvocationPayloads.reject.getter();
  v18 = [v17 identifier];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == v14 && v21 == v16)
  {

    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
LABEL_13:
    (*(v2 + 8))(v4, v1);

    v30 = enum case for ConfirmationResponse.rejected(_:);
    v31 = type metadata accessor for ConfirmationResponse();
    v32 = *(v31 - 8);
    v33 = v39;
    (*(v32 + 104))(v39, v30, v31);
    return (*(v32 + 56))(v33, 0, 1, v31);
  }

  v24 = static SiriKitDirectInvocationPayloads.confirm.getter();
  v25 = [v24 identifier];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26 == v14 && v28 == v16)
  {

    (*(v2 + 8))(v4, v1);
LABEL_18:
    v36 = enum case for ConfirmationResponse.confirmed(_:);
    v31 = type metadata accessor for ConfirmationResponse();
    v32 = *(v31 - 8);
    v33 = v39;
    (*(v32 + 104))(v39, v36, v31);
    return (*(v32 + 56))(v33, 0, 1, v31);
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v2 + 8))(v4, v1);
  if (v35)
  {
    goto LABEL_18;
  }

  v37 = type metadata accessor for ConfirmationResponse();
  return (*(*(v37 - 8) + 56))(v39, 1, 1, v37);
}

uint64_t USOParse.userCancelled.getter()
{
  v1 = type metadata accessor for USOParse();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v36 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0;
  USOParse.userParse.getter();
  v16 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v8 + 8))(v10, v7);
  if (*(v16 + 16))
  {
    (*(v12 + 16))(v14, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

    v17 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v18 = v15;
    v20 = v37;
    v19 = v38;
    v21 = v4;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.information);
    v23 = *(v20 + 16);
    v24 = v6;
    v25 = v19;
    v23(v6, v18, v19);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v24;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136315138;
      v23(v21, v28, v25);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      (*(v20 + 8))(v28, v25);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v39);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_0, v26, v27, "Invalid USOParse while looking for user cancellation. Parse has no UDAs: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    else
    {

      (*(v20 + 8))(v24, v19);
    }

    v17 = 0;
  }

  return v17 & 1;
}

unint64_t static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.information);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "CommandFactory: make direct & delayed commands", v10, 2u);
  }

  v23[1] = type metadata accessor for PerformanceUtil();
  v11 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v11);
  Date.init()();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
  v21 = &v19;
  v22 = v12;
  v20 = partial apply for closure #1 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:);
  LOBYTE(v19) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v13 = *(v4 + 8);
  v13(v6, v3);
  v24 = v28;
  v14 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v14);
  v23[0] = v3;
  Date.init()();
  v21 = &v19;
  v22 = v12;
  v20 = partial apply for closure #2 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:);
  LOBYTE(v19) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v13(v6, v3);
  v15 = v28;
  v16 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v16);
  Date.init()();
  v21 = &v19;
  v22 = v12;
  v20 = partial apply for closure #3 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:);
  LOBYTE(v19) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v13(v6, v23[0]);
  v17 = v28;
  v27 = v24;
  specialized Array.append<A>(contentsOf:)(v15, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  specialized Array.append<A>(contentsOf:)(v17, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  return v27;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for RREntity);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for URLQueryItem);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v3 >> 62))
  {
    v8 = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(&dword_10 + v12) + 32, (*(&dword_18 + v12) >> 1) - *(&dword_10 + v12), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *static CommandFactory.makeCommands(forComponent:)(uint64_t a1)
{
  return specialized static CommandFactory.makeCommands(forComponent:)(a1, &Apple_Parsec_Siri_V2alpha_ButtonViewComponent.commands.getter);
}

{
  return specialized static CommandFactory.makeCommands(forComponent:)(a1, &Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.siriCommandBuilder.getter);
}

id Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asClientBoundAceCommand.getter(uint64_t a1)
{
  result = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
  if (result)
  {
    v2 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      v3 = swift_dynamicCastObjCProtocolConditional();
      if (v3)
      {
        v4 = v3;
        v5 = [objc_allocWithZone(SASendCommands) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_B9BD0;
        *(v6 + 32) = v4;
        v7 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v5 setCommands:isa];

        return v5;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void *Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v89 = (&v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v80 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v80 - v12;
  v14 = __chkstk_darwin(v11);
  v87 = &v80 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v80 - v17;
  __chkstk_darwin(v16);
  v20 = &v80 - v19;
  v88 = v0;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Any?(v6, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.information);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "InfoViewFactory component missing type", v24, 2u);
    }

    return 0;
  }

  v84 = v1;
  v85 = v2;
  (*(v8 + 32))(v20, v6, v7);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.information);
  v28 = *(v8 + 16);
  v28(v18, v20, v7);
  v83 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v82 = v13;
    v32 = v31;
    v33 = swift_slowAlloc();
    v81 = v20;
    v34 = v33;
    v90 = v33;
    *v32 = 136315138;
    v35 = v28;
    v28(v87, v18, v7);
    v36 = String.init<A>(describing:)();
    v37 = v8;
    v80 = v8;
    v38 = v36;
    v40 = v39;
    v41 = v18;
    v42 = *(v37 + 8);
    v42(v41, v7);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v90);
    v28 = v35;

    *(v32 + 4) = v43;
    _os_log_impl(&dword_0, v29, v30, "Translating command to Ace: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v20 = v81;

    v13 = v82;

    v44 = v80;
  }

  else
  {

    v45 = v18;
    v42 = *(v8 + 8);
    v42(v45, v7);
    v44 = v8;
  }

  v28(v13, v20, v7);
  v46 = (*(v44 + 88))(v13, v7);
  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.recordLocationActivity(_:))
  {
    type metadata accessor for PerformanceUtil();
    v47 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v47);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24SARecordLocationActivityCSgMd, &_sSo24SARecordLocationActivityCSgMR);
    v77 = partial apply for closure #8 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
LABEL_49:
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    (v85[1])(v48, v84);
    v42(v20, v7);
    v25 = v90;
    v42(v13, v7);
    return v25;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.appPunchOut(_:))
  {
    type metadata accessor for PerformanceUtil();
    v49 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v49);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SAUIAppPunchOutCSgMd, &_sSo15SAUIAppPunchOutCSgMR);
    v77 = partial apply for closure #1 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.startRequest(_:))
  {
    type metadata accessor for PerformanceUtil();
    v50 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v50);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14SAStartRequestCSgMd, &_sSo14SAStartRequestCSgMR);
    v77 = partial apply for closure #6 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showMapPoints(_:))
  {
    type metadata accessor for PerformanceUtil();
    v51 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v51);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SALocalSearchShowMapPointsCSgMd, &_sSo26SALocalSearchShowMapPointsCSgMR);
    v77 = partial apply for closure #4 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.phoneCall(_:))
  {
    type metadata accessor for PerformanceUtil();
    v52 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v52);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11SAPhoneCallCSgMd, &_sSo11SAPhoneCallCSgMR);
    v77 = partial apply for closure #11 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.extendCurrentTts(_:))
  {
    type metadata accessor for PerformanceUtil();
    v53 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v53);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAUIExtendCurrentTTSCSgMd, &_sSo20SAUIExtendCurrentTTSCSgMR);
    v77 = partial apply for closure #12 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.setSiriAuthorizationForApp(_:))
  {
    type metadata accessor for PerformanceUtil();
    v54 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v54);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35SASettingSetSiriAuthorizationForAppCSgMd, &_sSo35SASettingSetSiriAuthorizationForAppCSgMR);
    v77 = partial apply for closure #14 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.sayIt(_:))
  {
    type metadata accessor for PerformanceUtil();
    v55 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v55);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9SAUISayItCSgMd, &_sSo9SAUISayItCSgMR);
    v77 = partial apply for closure #2 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showPlaceDetails(_:))
  {
    type metadata accessor for PerformanceUtil();
    v56 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v56);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29SALocalSearchShowPlaceDetailsCSgMd, &_sSo29SALocalSearchShowPlaceDetailsCSgMR);
    v77 = partial apply for closure #3 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.unlockDevice(_:))
  {
    type metadata accessor for PerformanceUtil();
    v57 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v57);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SAUIUnlockDeviceCSgMd, &_sSo16SAUIUnlockDeviceCSgMR);
    v77 = partial apply for closure #15 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.openLink(_:))
  {
    type metadata accessor for PerformanceUtil();
    v58 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v58);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12SAUIOpenLinkCSgMd, &_sSo12SAUIOpenLinkCSgMR);
    v77 = partial apply for closure #17 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.navigationEnd(_:))
  {
    type metadata accessor for PerformanceUtil();
    v59 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v59);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SALocalSearchNavigationEndCSgMd, &_sSo26SALocalSearchNavigationEndCSgMR);
    v77 = partial apply for closure #7 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.unlockDeviceWithWatch(_:))
  {
    type metadata accessor for PerformanceUtil();
    v60 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v60);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SAUIUnlockDeviceWithWatchCSgMd, &_sSo25SAUIUnlockDeviceWithWatchCSgMR);
    v77 = partial apply for closure #16 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.cancelCurrentTts(_:))
  {
    type metadata accessor for PerformanceUtil();
    v61 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v61);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAUICancelCurrentTTSCSgMd, &_sSo20SAUICancelCurrentTTSCSgMR);
    v77 = partial apply for closure #13 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.switchProfile(_:))
  {
    type metadata accessor for PerformanceUtil();
    v62 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v62);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SAProfileSwitchCSgMd, &_sSo15SAProfileSwitchCSgMR);
    v77 = partial apply for closure #10 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.pushOff(_:))
  {
    type metadata accessor for PerformanceUtil();
    v63 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v63);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28SAInitiateHandoffOnCompanionCSgMd, &_sSo28SAInitiateHandoffOnCompanionCSgMR);
    v77 = partial apply for closure #9 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.searchMarketplace(_:))
  {
    type metadata accessor for PerformanceUtil();
    v64 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v64);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23SAAppsSearchMarketplaceCSgMd, &_sSo23SAAppsSearchMarketplaceCSgMR);
    v77 = partial apply for closure #18 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  if (v46 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showLocalSearchResult(_:))
  {
    type metadata accessor for PerformanceUtil();
    v65 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v65);
    v48 = v89;
    Date.init()();
    v78 = &v76;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo022SALocalSearchShowLocalB6ResultCSgMd, &_sSo022SALocalSearchShowLocalB6ResultCSgMR);
    v77 = partial apply for closure #5 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    LOBYTE(v76) = 2;
    goto LABEL_49;
  }

  v28(v86, v20, v7);
  v67 = Logger.logObject.getter();
  LODWORD(v88) = static os_log_type_t.error.getter();
  v89 = v67;
  if (os_log_type_enabled(v67, v88))
  {
    v68 = swift_slowAlloc();
    v84 = v68;
    v85 = swift_slowAlloc();
    v90 = v85;
    *v68 = 136315138;
    v69 = v86;
    v28(v87, v86, v7);
    v70 = String.init<A>(describing:)();
    v72 = v71;
    v87 = (v44 + 8);
    v82 = v42;
    v42(v69, v7);
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v90);

    v74 = v84;
    *(v84 + 1) = v73;
    v75 = v89;
    _os_log_impl(&dword_0, v89, v88, "Unknown (future?) command type: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);

    (v82)(v20, v7);
  }

  else
  {

    v42(v86, v7);
    v42(v20, v7);
  }

  v42(v13, v7);
  return 0;
}

uint64_t closure #2 in static CommandFactory.makeCommands(forDirectExecution:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(SAResultCallback) init];
  UUID.init()();
  UUID.uuidString.getter();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v6 = String._bridgeToObjectiveC()();

  [v4 setAceId:v6];

  [v4 setCode:SAResultCallbackAnySuccessCodeValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v4 setCommands:isa];

  v8 = [objc_allocWithZone(SARequestCompleted) init];
  UUID.init()();
  UUID.uuidString.getter();
  v5(v3, v0);
  v9 = String._bridgeToObjectiveC()();

  [v8 setAceId:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  v15 = xmmword_B9BD0;
  *(v10 + 16) = xmmword_B9BD0;
  *(v10 + 32) = v4;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  v11 = v4;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setCallbacks:v12];

  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  *(v13 + 32) = v8;

  return v13;
}

void *static CommandFactory.wrapMapCommandsIfNecessary(_:callback:)(unint64_t a1, uint64_t (*a2)(void))
{
  v15[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:
      v14 = a2;
      v5 = 0;
      a2 = NSArray_ptr;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_17;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            a2 = v14;
            v7 = v15[0];
            if ((v15[0] & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_26;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v5;
        if (v6 == v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  if ((v7 & 0x4000000000000000) != 0)
  {
LABEL_26:
    v13 = _CocoaArrayWrapper.endIndex.getter();

    if (v13)
    {
      goto LABEL_21;
    }

    return a2(a1);
  }

  v8 = *(v7 + 16);

  if (!v8)
  {
    return a2(a1);
  }

LABEL_21:
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v9 = dispatch thunk of CurrentDevice.isCarPlay.getter();

  if (v9)
  {
    return a2(a1);
  }

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v11 = dispatch thunk of CurrentDevice.isEyesFree.getter();

  if ((v11 & 1) == 0)
  {
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v12 = dispatch thunk of DeviceState.isEyesFree.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    if ((v12 & 1) == 0)
    {
      return a2(a1);
    }
  }

  return specialized static CommandFactory.wrapMapCommandsWithResultCallBack(clientBoundCommands:)(a1);
}

uint64_t closure #1 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v13 - v9;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, v13 - v9, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v12 = specialized static CommandFactory.makeCommands(forDirectExecution:)();
    result = (*(v5 + 8))(v7, v4);
  }

  *a2 = v12;
  return result;
}

uint64_t partial apply for closure #2 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized Sequence.flatMap<A>(_:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #3 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized Sequence.flatMap<A>(_:)(*(v1 + 16));
  *a1 = result;
  return result;
}

double specialized closure #5 in static CommandFactory.makeCommands(forDelayedAction:viewFactory:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(SARequestCompleted) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v5, v2);
  v7 = String._bridgeToObjectiveC()();

  [v6 setAceId:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  v13 = xmmword_B9BD0;
  *(v8 + 16) = xmmword_B9BD0;
  *(v8 + 32) = a1;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  v9 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setCallbacks:isa];

  v11 = swift_allocObject();
  result = *&v13;
  *(v11 + 16) = v13;
  *(v11 + 32) = v6;
  return result;
}

void *specialized static CommandFactory.wrapMapCommandsWithResultCallBack(clientBoundCommands:)(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
LABEL_29:
    v40 = _swiftEmptyArrayStorage;
    v41 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

LABEL_3:
  v38 = v3;
  v39 = v2;
  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  while (!v7)
  {
    if (v6 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        goto LABEL_29;
      }

      goto LABEL_3;
    }

    swift_unknownObjectRetain();
    v2 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v6;
    if (v2 == v5)
    {
      goto LABEL_14;
    }
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  v2 = (v6 + 1);
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v8 = 0;
  v41 = v43;
  v43 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v7)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      goto LABEL_20;
    }

    if (v8 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_27;
    }

    swift_unknownObjectRetain();
    v9 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
LABEL_20:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = *(v43 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v8;
      if (v9 == v5)
      {
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_25:
  v40 = v43;
  v3 = v38;
  v2 = v39;
LABEL_30:
  v10 = [objc_allocWithZone(SAResultCallback) init];
  v11 = v42;
  UUID.init()();
  UUID.uuidString.getter();
  v12 = *(v3 + 8);
  v12(v11, v2);
  v13 = String._bridgeToObjectiveC()();

  [v10 setAceId:v13];

  [v10 setCode:SAResultCallbackAnySuccessCodeValue];
  v14 = [objc_allocWithZone(SARequestCompleted) init];
  UUID.init()();
  UUID.uuidString.getter();
  v12(v11, v2);
  v15 = String._bridgeToObjectiveC()();

  [v14 setAceId:v15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_B9BD0;
  *(v16 + 32) = v14;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v42 = v10;
  [v10 setCommands:isa];

  v19 = v41;
  v39 = v17;
  if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
  {
LABEL_51:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v41;
    v20 = v32;
    if (v32)
    {
      goto LABEL_33;
    }

LABEL_52:
    v43 = v40;
    specialized Array.append<A>(contentsOf:)(v19);
    v33 = v43;
    v43 = _swiftEmptyArrayStorage;
    if (v33 >> 62)
    {
LABEL_71:
      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (v34)
      {
LABEL_54:
        v35 = 0;
        v36 = _swiftEmptyArrayStorage;
        do
        {
          v37 = v35;
          while (1)
          {
            if ((v33 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              v35 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
                goto LABEL_69;
              }
            }

            else
            {
              if (v37 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_70;
              }

              swift_unknownObjectRetain();
              v35 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v37;
            if (v35 == v34)
            {
              goto LABEL_73;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v36 = v43;
        }

        while (v35 != v34);
        goto LABEL_73;
      }
    }

    else
    {
      v34 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
      if (v34)
      {
        goto LABEL_54;
      }
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_73:

    return v36;
  }

  v20 = *(v41 + 16);
  if (!v20)
  {
    goto LABEL_52;
  }

LABEL_33:
  v21 = 0;
  v41 = v19 & 0xC000000000000001;
  v22 = v19;
  while (1)
  {
    if (v41)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_50;
      }

      v24 = *(v19 + 8 * v21 + 32);
      swift_unknownObjectRetain();
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v26 = [v24 callbacks];
    if (!v26)
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
      v27 = Array._bridgeToObjectiveC()().super.isa;
      [v24 setCallbacks:v27];
      v26 = v27;
    }

    result = [v24 callbacks];
    if (!result)
    {
      break;
    }

    v29 = result;
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = v30;
    v31 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v43)
    {
      v23.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v23.super.isa = 0;
    }

    [v24 setCallbacks:v23.super.isa];
    swift_unknownObjectRelease();

    ++v21;
    v19 = v22;
    if (v25 == v20)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
  return result;
}

void *specialized static CommandFactory.makeCommands(forDelayedAction:viewFactory:)(uint64_t a1, _UNKNOWN **a2)
{
  v183 = type metadata accessor for DeviceClass();
  v187 = *(v183 - 8);
  __chkstk_darwin(v183);
  v177 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSg_ADtMd, &_s13SiriUtilities11DeviceClassOSg_ADtMR);
  __chkstk_darwin(v181);
  v182 = &v174 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v178 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v188 = &v174 - v10;
  __chkstk_darwin(v9);
  *&v189 = &v174 - v11;
  v196 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v12 = *(v196 - 8);
  v13 = __chkstk_darwin(v196);
  v179 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v186 = &v174 - v16;
  v17 = __chkstk_darwin(v15);
  v180 = &v174 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v174 - v20;
  __chkstk_darwin(v19);
  v23 = &v174 - v22;
  v195 = type metadata accessor for UUID();
  v190 = *(v195 - 8);
  __chkstk_darwin(v195);
  v194 = (&v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  __chkstk_darwin(v25 - 8);
  v27 = &v174 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  __chkstk_darwin(v28 - 8);
  v30 = &v174 - v29;
  v31 = type metadata accessor for CATOption();
  __chkstk_darwin(v31 - 8);
  v32 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.hasRenderedDialog.getter();
  v191 = v12;
  v185 = a1;
  if ((v32 & 1) != 0 || (v33 = *(Apple_Parsec_Siri_V2alpha_DelayedActionComponent.layoutExperiences.getter() + 16), , v33))
  {
    if (a2)
    {
      v34 = a2;
    }

    else
    {
      static Device.current.getter();
      type metadata accessor for CommonCATs(0);
      static CATOption.defaultMode.getter();
      v35 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for InformationViewFactory();
      v34 = swift_allocObject();
      v36 = [objc_opt_self() sharedPreferences];
      v37 = type metadata accessor for PommesServerFallbackPreferences();
      swift_allocObject();
      v38 = PommesServerFallbackPreferences.init(_:)();
      v34[11] = v37;
      v34[12] = &protocol witness table for PommesServerFallbackPreferences;
      v34[8] = v38;
      outlined init with take of OutputPublisherAsync(&v203, (v34 + 3));
      v34[2] = v35;
    }

    v39 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.layoutExperiences.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMR);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_B8690;
    Apple_Parsec_Siri_V2alpha_DelayedActionComponent.renderedDialog.getter();
    v41 = type metadata accessor for DialogPhase();
    (*(*(v41 - 8) + 56))(v30, 1, 1, v41);
    v42 = type metadata accessor for PommesCandidateId();
    (*(*(v42 - 8) + 56))(v27, 1, 1, v42);
    v43 = (*(*v34 + 19))(v39, v40, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, v30, 0, 0, v27);

    outlined destroy of Any?(v27, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    outlined destroy of Any?(v30, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);

    v197 = v43;
    v193 = v34;
    if (v43 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (v44)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
      if (v44)
      {
LABEL_8:
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = v197 & 0xC000000000000001;
          v47 = v190 + 1;
          while (1)
          {
            if (v46)
            {
              v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v50 = *(v197 + 8 * v45 + 32);
            }

            v51 = v50;
            v52 = [v51 aceId];
            if (v52)
            {
              v53 = v52;
              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;

              v57 = v54 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v57 = 0;
              v56 = 0xE000000000000000;
            }

            v58 = HIBYTE(v56) & 0xF;
            if ((v56 & 0x2000000000000000) == 0)
            {
              v58 = v57;
            }

            if (v58)
            {
              v59 = [v51 aceId];
              if (!v59)
              {
                v49 = 0;
                goto LABEL_12;
              }

              v60 = v59;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }

            else
            {
              v48 = v194;
              UUID.init()();
              UUID.uuidString.getter();
              (*v47)(v48, v195);
            }

            v49 = String._bridgeToObjectiveC()();

LABEL_12:
            ++v45;
            [v51 setAceId:v49];

            if (v44 == v45)
            {
              goto LABEL_27;
            }
          }
        }

        __break(1u);
        goto LABEL_153;
      }
    }

LABEL_27:

    v12 = v191;
  }

  else
  {
    v197 = _swiftEmptyArrayStorage;
  }

  v61 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.delayMilliseconds.getter();
  v62 = v196;
  if (!v61)
  {
    v80 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
    *&v203 = _swiftEmptyArrayStorage;
    v81 = *(v80 + 16);
    if (!v81)
    {

      v88 = _swiftEmptyArrayStorage;
      goto LABEL_59;
    }

    v84 = *(v12 + 16);
    v82 = v12 + 16;
    v83 = v84;
    v85 = (*(v82 + 64) + 32) & ~*(v82 + 64);
    v176 = v80;
    v86 = v80 + v85;
    v193 = *(v82 + 56);
    v87 = (v82 - 8);
    v88 = _swiftEmptyArrayStorage;
    v184 = xmmword_B9BD0;
    v192 = v84;
    while (1)
    {
      v89 = v196;
      v83(v21, v86, v196);
      v90 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
      if (v90)
      {
        v91 = v90;
        v201 = &OBJC_PROTOCOL___SAClientBoundCommand;
        v92 = swift_dynamicCastObjCProtocolConditional();
        if (v92)
        {
          goto LABEL_52;
        }

        v200 = &OBJC_PROTOCOL___SAServerBoundCommand;
        v93 = swift_dynamicCastObjCProtocolConditional();
        if (v93)
        {
          v94 = v93;
          v92 = [objc_allocWithZone(SASendCommands) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v95 = swift_allocObject();
          *(v95 + 16) = v184;
          *(v95 + 32) = v94;
          v96 = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v92 setCommands:isa];

          v83 = v192;
LABEL_52:
          Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
          v98 = String._bridgeToObjectiveC()();

          [v92 setAceId:v98];

          (*v87)(v21, v196);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v203 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v203 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v88 = v203;
          goto LABEL_47;
        }

        v89 = v196;
        v83 = v192;
      }

      (*v87)(v21, v89);
LABEL_47:
      v86 += v193;
      if (!--v81)
      {

        goto LABEL_59;
      }
    }
  }

  v63 = [objc_allocWithZone(SAUIDelayedActionCommand) init];
  v64 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
  *&v203 = _swiftEmptyArrayStorage;
  v65 = *(v64 + 16);
  if (v65)
  {
    v175 = v63;
    v67 = *(v12 + 16);
    v66 = v12 + 16;
    v193 = v67;
    v68 = (*(v66 + 64) + 32) & ~*(v66 + 64);
    v176 = v64;
    v69 = v64 + v68;
    v192 = *(v66 + 56);
    v70 = (v66 - 8);
    v184 = xmmword_B9BD0;
    v67(v23, v64 + v68, v62);
    while (1)
    {
      v71 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
      if (!v71)
      {
        goto LABEL_32;
      }

      v72 = v71;
      v199 = &OBJC_PROTOCOL___SAClientBoundCommand;
      v73 = swift_dynamicCastObjCProtocolConditional();
      if (!v73)
      {
        v198 = &OBJC_PROTOCOL___SAServerBoundCommand;
        v74 = swift_dynamicCastObjCProtocolConditional();
        if (!v74)
        {

          v62 = v196;
LABEL_32:
          (*v70)(v23, v62);
          goto LABEL_33;
        }

        v75 = v74;
        v73 = [objc_allocWithZone(SASendCommands) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v76 = swift_allocObject();
        *(v76 + 16) = v184;
        *(v76 + 32) = v75;
        v77 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
        v78 = Array._bridgeToObjectiveC()().super.isa;

        [v73 setCommands:v78];

        v62 = v196;
      }

      Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
      v79 = String._bridgeToObjectiveC()();

      [v73 setAceId:v79];

      (*v70)(v23, v62);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v203 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v203 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_33:
      v69 += v192;
      if (!--v65)
      {

        v63 = v175;
        goto LABEL_56;
      }

      (v193)(v23, v69, v62);
    }
  }

LABEL_56:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v99 = Array._bridgeToObjectiveC()().super.isa;

  [v63 setCommands:v99];

  v100 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:Apple_Parsec_Siri_V2alpha_DelayedActionComponent.delayMilliseconds.getter()];
  [v63 setTimerValue:v100];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_B9BD0;
  *(v88 + 32) = v63;
LABEL_59:
  v34 = v183;
  v101 = v182;
  v102 = v189;
  v103 = v188;
  v192 = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.deviceClass.getter();

  v104 = v187;
  (*(v187 + 104))(v103, enum case for DeviceClass.homePod(_:), v34);
  (*(v104 + 56))(v103, 0, 1, v34);
  v105 = *(v181 + 48);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v102, v101, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v103, v101 + v105, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v30 = *(v104 + 48);
  v106 = (v30)(v101, 1, v34);
  v193 = v88;
  v107 = v88 >> 62;
  if (v106 == 1)
  {
    outlined destroy of Any?(v103, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    outlined destroy of Any?(v102, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if ((v30)(v101 + v105, 1, v34) == 1)
    {
      outlined destroy of Any?(v101, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
      goto LABEL_78;
    }
  }

  else
  {
    v102 = v178;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v101, v178, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if ((v30)(v101 + v105, 1, v34) != 1)
    {
LABEL_77:
      v111 = v187;
      v112 = v177;
      (*(v187 + 32))(v177, v101 + v105, v34);
      lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass();
      v113 = dispatch thunk of static Equatable.== infix(_:_:)();
      v114 = *(v111 + 8);
      v30 = (v111 + 8);
      v114(v112, v34);
      outlined destroy of Any?(v188, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
      outlined destroy of Any?(v189, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
      v114(v102, v34);
      outlined destroy of Any?(v101, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
      if (v113)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

    outlined destroy of Any?(v188, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    outlined destroy of Any?(v189, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    (*(v187 + 8))(v102, v34);
  }

  outlined destroy of Any?(v101, &_s13SiriUtilities11DeviceClassOSg_ADtMd, &_s13SiriUtilities11DeviceClassOSg_ADtMR);
LABEL_65:
  if (v107)
  {
    goto LABEL_150;
  }

  v108 = *(&dword_10 + (v193 & 0xFFFFFFFFFFFFFF8));
  if (v108)
  {
    goto LABEL_67;
  }

LABEL_78:
  while (2)
  {
    if (v107)
    {
LABEL_114:
      v107 = v193;
      v105 = _CocoaArrayWrapper.endIndex.getter();
      v21 = v197;
      if (v105)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v107 = v193;
      v105 = *(&dword_10 + (v193 & 0xFFFFFFFFFFFFFF8));
      v21 = v197;
      if (v105)
      {
LABEL_80:
        if (v105 < 1)
        {
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        v115 = 0;
        v116 = v190 + 1;
        do
        {
          if ((v107 & 0xC000000000000001) != 0)
          {
            v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v119 = *(v107 + 8 * v115 + 32);
            swift_unknownObjectRetain();
          }

          v120 = [v119 aceId];
          if (v120)
          {
            v121 = v120;
            v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v123;

            v125 = v122 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v125 = 0;
            v124 = 0xE000000000000000;
          }

          v126 = HIBYTE(v124) & 0xF;
          if ((v124 & 0x2000000000000000) == 0)
          {
            v126 = v125;
          }

          if (v126)
          {
            v127 = [v119 aceId];
            if (!v127)
            {
              v118 = 0;
              goto LABEL_84;
            }

            v128 = v127;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v117 = v194;
            UUID.init()();
            UUID.uuidString.getter();
            (*v116)(v117, v195);
          }

          v118 = String._bridgeToObjectiveC()();

LABEL_84:
          ++v115;
          [v119 setAceId:v118];
          swift_unknownObjectRelease();
        }

        while (v105 != v115);
      }
    }

    v34 = [objc_allocWithZone(SAResultCallback) init];
    v152 = v194;
    UUID.init()();
    UUID.uuidString.getter();
    (v190[1])(v152, v195);
    v153 = String._bridgeToObjectiveC()();

    [v34 setAceId:v153];

    [v34 setCode:SAResultCallbackAnySuccessCodeValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v154 = Array._bridgeToObjectiveC()().super.isa;
    [v34 setCommands:v154];

    v30 = (v21 >> 62);
    if (v21 >> 62)
    {
      v155 = _CocoaArrayWrapper.endIndex.getter();
      if (v155)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v155 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (v155)
      {
LABEL_117:
        v156 = __OFSUB__(v155, 1);
        v157 = v155 - 1;
        if (v156)
        {
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
LABEL_155:
          v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_122:
          v159 = v158;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v160 = swift_allocObject();
          *(v160 + 16) = xmmword_B9BD0;
          *(v160 + 32) = v34;
          type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
          v161 = v34;
          v162 = Array._bridgeToObjectiveC()().super.isa;

          [v159 setCallbacks:v162];

          if (v30)
          {
            type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

            v163 = _bridgeCocoaArray<A>(_:)();

            swift_bridgeObjectRelease_n();
            return v163;
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
          }

          return v21;
        }

        if ((v157 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v157 < *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
        {
          v158 = *(v21 + 8 * v157 + 32);
          goto LABEL_122;
        }

        __break(1u);
        goto LABEL_158;
      }
    }

    v164 = _swiftEmptyArrayStorage;
    *&v203 = _swiftEmptyArrayStorage;
    if (!v105)
    {
LABEL_139:
      if ((v164 & 0x8000000000000000) == 0 && (v164 & 0x4000000000000000) == 0)
      {
        v167 = *(v164 + 16);

        if (!v167)
        {
          goto LABEL_143;
        }

        goto LABEL_142;
      }

LABEL_158:
      v173 = _CocoaArrayWrapper.endIndex.getter();

      if (!v173)
      {
        goto LABEL_143;
      }

LABEL_142:
      static SiriEnvironment.default.getter();
      SiriEnvironment.currentDevice.getter();

      v168 = dispatch thunk of CurrentDevice.isCarPlay.getter();

      if ((v168 & 1) == 0)
      {
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentDevice.getter();

        v170 = dispatch thunk of CurrentDevice.isEyesFree.getter();

        if (v170 & 1) != 0 || (static Device.current.getter(), __swift_project_boxed_opaque_existential_1(&v203, v204), v171 = dispatch thunk of DeviceState.isEyesFree.getter(), __swift_destroy_boxed_opaque_existential_0Tm(&v203), (v171))
        {
          v169 = specialized static CommandFactory.wrapMapCommandsWithResultCallBack(clientBoundCommands:)(v107);
          goto LABEL_147;
        }
      }

LABEL_143:
      specialized closure #5 in static CommandFactory.makeCommands(forDelayedAction:viewFactory:)(v34);
LABEL_147:
      v21 = v169;

      return v21;
    }

    v197 = v34;
    v165 = 0;
    v34 = (v107 & 0xC000000000000001);
    v102 = v107 & 0xFFFFFFFFFFFFFF8;
    while (v34)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v166 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
LABEL_137:
        __break(1u);
LABEL_138:
        v164 = v203;
        v34 = v197;
        goto LABEL_139;
      }

LABEL_133:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v30 = *(v203 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v165;
      if (v166 == v105)
      {
        goto LABEL_138;
      }
    }

    if (v165 < *(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
    {
      swift_unknownObjectRetain();
      v166 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        goto LABEL_137;
      }

      goto LABEL_133;
    }

    __break(1u);
LABEL_150:
    v108 = _CocoaArrayWrapper.endIndex.getter();
    if (!v108)
    {
      continue;
    }

    break;
  }

LABEL_67:
  v109 = 0;
  v110 = v193 & 0xC000000000000001;
  v30 = (v193 & 0xFFFFFFFFFFFFFF8);
  v34 = NSArray_ptr;
  while (1)
  {
    if (v110)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v101 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    else
    {
      if (v109 >= *(v30 + 2))
      {
        __break(1u);
        goto LABEL_114;
      }

      swift_unknownObjectRetain();
      v101 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        goto LABEL_76;
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v109;
    if (v101 == v108)
    {
      goto LABEL_78;
    }
  }

  swift_unknownObjectRelease();
  v129 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
  *&v203 = _swiftEmptyArrayStorage;
  v131 = *(v129 + 16);
  if (v131)
  {
    v132 = *(v191 + 16);
    v133 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v188 = v129;
    v134 = v129 + v133;
    v195 = *(v191 + 72);
    v21 = _swiftEmptyArrayStorage;
    *&v130 = 136315138;
    v189 = v130;
    v194 = (v191 + 8);
    v135 = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v191 += 16;
    v192 = v135;
    v136 = v196;
    v137 = v180;
    v132(v180, v129 + v133, v196);
    while (1)
    {
      v139 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
      if (v139)
      {
        v140 = v139;
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
        v141 = String._bridgeToObjectiveC()();

        [v140 setAceId:v141];

        (*v194)(v137, v136);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v203 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v203 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v203;
      }

      else
      {
        v197 = v21;
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v142 = type metadata accessor for Logger();
        __swift_project_value_buffer(v142, static Logger.information);
        v143 = v186;
        v132(v186, v137, v136);
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v202 = v190;
          *v146 = v189;
          v147 = v132;
          v132(v179, v143, v136);
          v148 = String.init<A>(describing:)();
          v150 = v149;
          v138 = *v194;
          (*v194)(v143, v196);
          v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, &v202);
          v136 = v196;

          *(v146 + 4) = v151;
          v132 = v147;
          _os_log_impl(&dword_0, v144, v145, "Unable to generate Ace command from builder: %s", v146, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v190);
          v137 = v180;
        }

        else
        {

          v138 = *v194;
          (*v194)(v143, v136);
        }

        v21 = v197;
        v138(v137, v136);
      }

      v134 += v195;
      if (!--v131)
      {
        break;
      }

      v132(v137, v134, v136);
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v21;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v32 = *(a1 + 16);
  if (!v32)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent() - 8);
  v4 = _swiftEmptyArrayStorage;
  v31 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v30 = *(v3 + 72);
  v5 = &_sSaySo13SABaseCommandCGMd;
  while (1)
  {
    v7 = specialized static CommandFactory.makeCommands(forDelayedAction:viewFactory:)(v31 + v30 * v2, 0);
    v8 = v7;
    v9 = v7 >> 62;
    if (v7 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v28 + v10;
      if (__OFADD__(v28, v10))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v36 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v36)
    {
      goto LABEL_36;
    }

    v33 = v2;
    v34 = v4;
    v19 = v14 + 8 * v15 + 32;
    v29 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      lazy protocol witness table accessor for type [SABaseCommand] and conformance [A]();
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v5, _sSaySo13SABaseCommandCGMR);
        v21 = specialized protocol witness for Collection.subscript.read in conformance [A](v35, i, v8);
        v23 = v5;
        v24 = *v22;
        (v21)(v35, 0);
        *(v19 + 8 * i) = v24;
        v5 = v23;
      }
    }

    else
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v33;
    v4 = v34;
    if (v36 >= 1)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v36);
      v27 = v25 + v36;
      if (v26)
      {
        goto LABEL_37;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v2 == v32)
    {
      return v4;
    }
  }

  v18 = v14;
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v36 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent();
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = &_sSaySo13SABaseCommandCGMd;
  while (1)
  {
    v5 = specialized static CommandFactory.makeCommands(forSayItComponent:)();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v8;
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *(&dword_18 + (v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      lazy protocol witness table accessor for type [SABaseCommand] and conformance [A]();
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, _sSaySo13SABaseCommandCGMR);
        v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v31, i, v6);
        v21 = v3;
        v22 = *v20;
        (v19)(v31, 0);
        *(v17 + 8 * i) = v22;
        v3 = v21;
      }
    }

    else
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v32);
      v25 = v23 + v32;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v16 = v12;
  result = _CocoaArrayWrapper.endIndex.getter();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized static CommandFactory.makeCommands(forSayItComponent:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.information);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "SayItComponent is deprecated - we expect a command builder with SayItBuilderParams instead. Translating.", v7, 2u);
  }

  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.init()();
  Apple_Parsec_Siri_V2alpha_SayItComponent.message.getter();
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.message.setter();
  Apple_Parsec_Siri_V2alpha_SayItComponent.dialogIdentifier.getter();
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.dialogIdentifier.setter();
  Apple_Parsec_Siri_V2alpha_SayItComponent.hasListenAfterSpeaking_p.getter();
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasListenAfterSpeaking_p.setter();
  Apple_Parsec_Siri_V2alpha_SayItComponent.isRepeatable.getter();
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.isRepeatable.setter();
  v8 = specialized static PegasusACEConverters.makeSayIt(params:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_B9BD0;
  *(v9 + 32) = v8;
  (*(v1 + 8))(v3, v0);
  return v9;
}

void *specialized static CommandFactory.makeCommands(forComponent:)(uint64_t a1)
{
  return specialized static CommandFactory.makeCommands(forComponent:)(a1, &Apple_Parsec_Siri_V2alpha_ButtonViewComponent.commands.getter);
}

{
  return specialized static CommandFactory.makeCommands(forComponent:)(a1, &Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.siriCommandBuilder.getter);
}

void *specialized static CommandFactory.makeCommands(forComponent:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2(v5);
  v34 = _swiftEmptyArrayStorage;
  v9 = *(v8 + 16);
  if (!v9)
  {

    return _swiftEmptyArrayStorage;
  }

  v12 = *(v4 + 16);
  v11 = v4 + 16;
  v10 = v12;
  v13 = *(v11 + 64);
  v28[1] = v8;
  v14 = v8 + ((v13 + 32) & ~v13);
  v31 = *(v11 + 56);
  v15 = (v11 - 8);
  v16 = _swiftEmptyArrayStorage;
  v29 = xmmword_B9BD0;
  v30 = v11;
  v12(v7, v14, v3);
  while (1)
  {
    v17 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
    if (!v17)
    {
      goto LABEL_4;
    }

    v18 = v17;
    v33 = &OBJC_PROTOCOL___SAClientBoundCommand;
    v19 = swift_dynamicCastObjCProtocolConditional();
    if (!v19)
    {
      v20 = v10;
      v32 = &OBJC_PROTOCOL___SAServerBoundCommand;
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (!v21)
      {

LABEL_4:
        (*v15)(v7, v3);
        goto LABEL_5;
      }

      v22 = v21;
      v19 = [objc_allocWithZone(SASendCommands) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = v29;
      *(v23 + 32) = v22;
      v24 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v19 setCommands:isa];

      v10 = v20;
    }

    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v26 = String._bridgeToObjectiveC()();

    [v19 setAceId:v26];

    (*v15)(v7, v3);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v16 = v34;
LABEL_5:
    v14 += v31;
    if (!--v9)
    {
      break;
    }

    v10(v7, v14, v3);
  }

  return v16;
}

void *partial apply for closure #18 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeSearchMarketplace(cmdBuilder:)();
  *a1 = result;
  return result;
}

id partial apply for closure #17 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeOpenLink(cmdBuilder:)();
  *a1 = result;
  return result;
}

void *partial apply for closure #16 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeUnlockDeviceWithWatch(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #15 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeUnlockDevice(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #14 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeSetSiriAuthorizationForApp(cmdBuilder:)();
  *a1 = result;
  return result;
}

id partial apply for closure #13 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeCancelCurrentTTS(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

id partial apply for closure #12 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeExtendCurrentTTS(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #11 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makePhoneCall(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #10 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeSwitchProfile(cmdBuilder:)();
  *a1 = result;
  return result;
}

void *partial apply for closure #8 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  result = specialized static PegasusACEConverters.makeRecordLocationActivity(cmdBuilder:)(*(v8 + 16), a1, a2, a3, a4, a5, a6, a7, v11);
  *a8 = result;
  return result;
}

id partial apply for closure #7 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeEndNavigation(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #6 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeStartRequest(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #5 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeShowLocalSearchResult(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #4 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  result = specialized static PegasusACEConverters.makeShowMapPoints(cmdBuilder:)(*(v8 + 16), a1, a2, a3, a4, a5, a6, a7, v11);
  *a8 = result;
  return result;
}

id partial apply for closure #3 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeShowPlaceDetails(cmdBuilder:)();
  *a1 = result;
  return result;
}

void *partial apply for closure #2 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeSayIt(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #1 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  result = specialized static PegasusACEConverters.makeAppPunchOut(cmdBuilder:)(*(v8 + 16), a1, a2, a3, a4, a5, a6, a7, v11);
  *a8 = result;
  return result;
}

uint64_t specialized static CommandFactory.makeCommands(forDirectExecution:)()
{
  v55 = type metadata accessor for UUID();
  v0 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Apple_Parsec_Siri_V2alpha_DirectExecutionComponent.siriCommandBuilder.getter();
  v59[0] = _swiftEmptyArrayStorage;
  v7 = *(v6 + 16);
  if (!v7)
  {

    v13 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_47;
    }

LABEL_15:
    v25 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (v25)
    {
      goto LABEL_16;
    }

LABEL_48:
    v42 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_49:
    if ((v42 & 0x4000000000000000) != 0)
    {
LABEL_58:
      v49 = _CocoaArrayWrapper.endIndex.getter();

      if (!v49)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v43 = *(v42 + 16);

      if (!v43)
      {
        goto LABEL_52;
      }
    }

    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    v44 = dispatch thunk of CurrentDevice.isCarPlay.getter();

    if ((v44 & 1) == 0)
    {
      static SiriEnvironment.default.getter();
      SiriEnvironment.currentDevice.getter();

      v46 = dispatch thunk of CurrentDevice.isEyesFree.getter();

      if (v46 & 1) != 0 || (static Device.current.getter(), __swift_project_boxed_opaque_existential_1(v59, v59[3]), v47 = dispatch thunk of DeviceState.isEyesFree.getter(), __swift_destroy_boxed_opaque_existential_0Tm(v59), (v47))
      {
        v45 = specialized static CommandFactory.wrapMapCommandsWithResultCallBack(clientBoundCommands:)(v13);
        goto LABEL_56;
      }
    }

LABEL_52:
    v45 = closure #2 in static CommandFactory.makeCommands(forDirectExecution:)();
LABEL_56:
    v48 = v45;

    return v48;
  }

  v50 = v0;
  v51 = v6;
  v10 = *(v3 + 16);
  v8 = v3 + 16;
  v9 = v10;
  v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v56 = *(v8 + 56);
  v12 = (v8 - 8);
  v13 = _swiftEmptyArrayStorage;
  v52 = xmmword_B9BD0;
  v53 = v8;
  v10(v5, v11, v2);
  while (1)
  {
    v14 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
    if (!v14)
    {
      goto LABEL_4;
    }

    v15 = v14;
    v58 = &OBJC_PROTOCOL___SAClientBoundCommand;
    v16 = swift_dynamicCastObjCProtocolConditional();
    if (!v16)
    {
      v17 = v9;
      v57 = &OBJC_PROTOCOL___SAServerBoundCommand;
      v18 = swift_dynamicCastObjCProtocolConditional();
      if (!v18)
      {

LABEL_4:
        (*v12)(v5, v2);
        goto LABEL_5;
      }

      v19 = v18;
      v16 = [objc_allocWithZone(SASendCommands) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = v52;
      *(v20 + 32) = v19;
      v21 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v16 setCommands:isa];

      v9 = v17;
    }

    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v23 = String._bridgeToObjectiveC()();

    [v16 setAceId:v23];

    (*v12)(v5, v2);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v59[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v59[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = v59[0];
LABEL_5:
    v11 += v56;
    if (!--v7)
    {
      break;
    }

    v9(v5, v11, v2);
  }

  v0 = v50;
  if (!(v13 >> 62))
  {
    goto LABEL_15;
  }

LABEL_47:
  result = _CocoaArrayWrapper.endIndex.getter();
  v25 = result;
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_16:
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v27)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v13 + 8 * v26 + 32);
        swift_unknownObjectRetain();
      }

      v31 = [v30 aceId];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = v33 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = 0;
        v35 = 0xE000000000000000;
      }

      v37 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v37 = v36;
      }

      if (v37)
      {
        v38 = [v30 aceId];
        if (!v38)
        {
          v29 = 0;
          goto LABEL_20;
        }

        v39 = v38;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v28 = v54;
        UUID.init()();
        UUID.uuidString.getter();
        (*(v0 + 8))(v28, v55);
      }

      v29 = String._bridgeToObjectiveC()();

LABEL_20:
      ++v26;
      [v30 setAceId:v29];
      swift_unknownObjectRelease();

      if (v25 == v26)
      {
        v40 = 0;
        v59[0] = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v27)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v40 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              goto LABEL_58;
            }

            swift_unknownObjectRetain();
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_43:
              __break(1u);
LABEL_44:
              v42 = v59[0];
              if ((v59[0] & 0x8000000000000000) == 0)
              {
                goto LABEL_49;
              }

              goto LABEL_58;
            }
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v40;
          if (v41 == v25)
          {
            goto LABEL_44;
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass()
{
  result = lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass;
  if (!lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass)
  {
    type metadata accessor for DeviceClass();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SABaseCommand] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A]);
  }

  return result;
}

unint64_t GenericResultSetParamBuilder.patternParameters(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[0] = v8;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a4, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, closure #1 in variable initialization expression of static GenericResultSetParamBuilder.duplicateHandler, 0);
  v15 = v8;
  v10 = specialized GenericResultSetParamBuilder.itemPatternParameters(items:)(a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  *&v12 = v10;
  specialized Dictionary._Variant.updateValue(_:forKey:)(&v12, a2, a3, v14);
  outlined destroy of Any?(v14);
  return v15;
}

InformationFlowPlugin::GenericResultSetParamBuilder __swiftcall GenericResultSetParamBuilder.init(parameters:items:itemsFieldName:)(Swift::OpaquePointer parameters, Swift::OpaquePointer items, Swift::String itemsFieldName)
{
  countAndFlagsBits = itemsFieldName._countAndFlagsBits;
  object = itemsFieldName._object;
  rawValue = parameters._rawValue;
  v8 = items._rawValue;
  result.items._rawValue = v8;
  result.parameters._rawValue = rawValue;
  result.itemsFieldName._object = object;
  result.itemsFieldName._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, void *, _OWORD *), uint64_t a6)
{
  v8 = v6;
  v51 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v44 = a1;
  v45 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v46 = v11;
  v47 = 0;
  v48 = v14 & v12;
  v49 = a2;
  v50 = a3;

  specialized LazyMapSequence.Iterator.next()(&v42);
  v15 = *(&v42 + 1);
  if (!*(&v42 + 1))
  {
LABEL_5:
    outlined consume of Set<String>.Iterator._Variant(v44);
  }

  while (1)
  {
    v17 = v42;
    v40 = v42;
    v41 = v15;
    outlined init with take of Any(&v43, v39);
    v18 = *v8;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v15);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a4)
    {
      if (v19)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v24)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v29 = *v8;
    *(*v8 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v30 = (v29[6] + 16 * v20);
    *v30 = v17;
    v30[1] = v15;
    outlined init with take of Any(v39, (v29[7] + 32 * v20));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v29[2] = v33;
LABEL_6:
    specialized LazyMapSequence.Iterator.next()(&v42);
    v15 = *(&v42 + 1);
    a4 = 1;
    if (!*(&v42 + 1))
    {
      goto LABEL_5;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a4 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v15);
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_23;
  }

  v20 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v27 = *v8;
  outlined init with copy of Any(*(*v8 + 56) + 32 * v20, v37);
  a5(v38, v37, v39);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);

    v28 = (v27[7] + 32 * v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    outlined init with take of Any(v38, v28);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  v37[0] = v7;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    outlined consume of Set<String>.Iterator._Variant(v44);
  }

LABEL_24:
  *&v38[0] = 0;
  *(&v38[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v34._object = 0x80000000000C1010;
  v34._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v34);
  _print_unlocked<A, B>(_:_:)();
  v35._countAndFlagsBits = 39;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static GenericResultSetParamBuilder.fieldName(for:)(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x80000000000C1030), (v3 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v15), (swift_dynamicCast() & 1) != 0))
  {
    v4 = v13;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.information);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
      v10 = "Found custom item field name set in Parameters %s";
LABEL_12:
      _os_log_impl(&dword_0, v6, v7, v10, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v4 = 0x736D657469;
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.information);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x736D657469, 0xE500000000000000, v15);
      v10 = "No Custom field name found. Defaulting to %s";
      goto LABEL_12;
    }
  }

  return v4;
}

uint64_t specialized GenericResultSetParamBuilder.init(parameters:)(uint64_t a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = v2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, closure #1 in variable initialization expression of static GenericResultSetParamBuilder.duplicateHandler, 0);
  v27 = v2;
  v4 = specialized static GenericResultSetParamBuilder.fieldName(for:)(a1);
  v6 = v5;
  v7 = v4;
  specialized Dictionary._Variant.removeValue(forKey:)(v4, v5, v25);
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    if (swift_dynamicCast())
    {

      v8 = *(v24 + 16);
      if (v8)
      {
        v25[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
        v9 = 32;
        v10 = v25[0];
        do
        {
          v11 = *(v24 + v9);
          v25[0] = v10;
          v12 = *(v10 + 16);
          v13 = *(v10 + 24);

          if (v12 >= v13 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 1, 1);
            v10 = v25[0];
          }

          *(v10 + 16) = v12 + 1;
          *(v10 + 8 * v12 + 32) = v11;
          v9 += 8;
          --v8;
        }

        while (v8);
      }

      return v7;
    }
  }

  else
  {
    outlined destroy of Any?(v25);
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.information);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v25);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v25);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_0, v15, v16, "GenericResultSet initialized with empty item list at %s, %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0x736D657469;
}

void *specialized GenericResultSetParamBuilder.itemPatternParameters(items:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];

      if (v5 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v4;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t _s21InformationFlowPlugin28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI026Apple_Parsec_Siri_V2alpha_pL8ResponseV0P11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA0dE6ActionO0kW0V_Tt2g5(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v77 = a1;
  v4 = type metadata accessor for SportsResolverMetrics();
  v80 = *(v4 - 8);
  v81 = v4;
  __chkstk_darwin(v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v8 = __chkstk_darwin(v7 - 8);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v86 = &v71 - v16;
  __chkstk_darwin(v15);
  v18 = &v71 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v74 = *(v19 - 8);
  v75 = v19;
  v20 = __chkstk_darwin(v19);
  v73 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v71 - v22;
  v24 = type metadata accessor for SportsResolverConfig();
  v82 = *(v24 - 8);
  v83 = v24;
  v25 = __chkstk_darwin(v24);
  v76 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v87 = &v71 - v27;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v18, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v31 = v30(v18, 1, v28);
  v79 = v6;
  if (v31 == 1)
  {
    outlined destroy of Any?(v18, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  }

  else
  {
    v32 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v29 + 8))(v18, v28);
    if (*(v32 + 16))
    {
      v72 = v14;
      v33 = a2;
      v34 = v74;
      v35 = v75;
      (*(v74 + 16))(v23, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v75);

      Apple_Parsec_Siri_Context_ResultEntity.name.getter();
      v36 = v34;
      a2 = v33;
      v14 = v72;
      (*(v36 + 8))(v23, v35);
    }

    else
    {
    }
  }

  SportsResolverConfig.init(intentTypeName:bundleId:)();
  v37 = v86;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v86, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v38, v39))
  {

    outlined destroy of Any?(v37, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v42 = v80;
    v41 = v81;
    v43 = v83;
    v44 = v84;
    v45 = v82;
    v46 = v77;
    goto LABEL_15;
  }

  v40 = swift_slowAlloc();
  v88[0] = swift_slowAlloc();
  *v40 = 136315394;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v37, v14, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  if (v30(v14, 1, v28) == 1)
  {
    outlined destroy of Any?(v14, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
LABEL_13:
    v53 = 0xE700000000000000;
    v42 = v80;
    v41 = v81;
    v45 = v82;
    v51 = 0x6E776F6E6B6E75;
    goto LABEL_14;
  }

  v47 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
  (*(v29 + 8))(v14, v28);
  if (!*(v47 + 16))
  {

    goto LABEL_13;
  }

  v49 = v73;
  v48 = v74;
  v50 = v75;
  (*(v74 + 16))(v73, v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v75);

  v51 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
  v53 = v52;
  (*(v48 + 8))(v49, v50);
  v42 = v80;
  v41 = v81;
  v45 = v82;
LABEL_14:
  outlined destroy of Any?(v86, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v88);

  *(v40 + 4) = v54;
  *(v40 + 12) = 2080;
  v46 = v77;
  v55 = specialized SportsPersonalizationSelection<A>.debugDescription.getter(v77);
  v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v88);

  *(v40 + 14) = v57;
  _os_log_impl(&dword_0, v38, v39, "Logging sports personalization metrics: intent=%s selection=%s", v40, 0x16u);
  swift_arrayDestroy();

  v43 = v83;
  v44 = v84;
LABEL_15:
  v58 = v78;
  v59 = v79;
  if (v46 == 2)
  {
    v60 = 1;
  }

  else
  {
    (*(v45 + 16))(v76, v87, v43);
    SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
    v60 = 0;
  }

  (*(v42 + 56))(v44, v60, 1, v41);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v44, v58, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  if ((*(v42 + 48))(v58, 1, v41) == 1)
  {
    outlined destroy of Any?(v44, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
    (*(v45 + 8))(v87, v43);
    return outlined destroy of Any?(v58, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  }

  else
  {
    (*(v42 + 32))(v59, v58, v41);
    SportsResolverMetrics.logSportsMetric()();
    if (v62)
    {
      v63 = v43;
      swift_errorRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v88[0] = v67;
        *v66 = 136315138;
        swift_getErrorValue();
        v68 = Error.localizedDescription.getter();
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v88);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_0, v64, v65, "Logging sports metrics failed with: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);

        (*(v42 + 8))(v59, v41);
        outlined destroy of Any?(v84, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
        return (*(v82 + 8))(v87, v83);
      }

      else
      {

        (*(v42 + 8))(v59, v41);
        outlined destroy of Any?(v44, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
        return (*(v45 + 8))(v87, v63);
      }
    }

    else
    {
      (*(v42 + 8))(v59, v41);
      outlined destroy of Any?(v44, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
      return (*(v45 + 8))(v87, v43);
    }
  }
}

uint64_t specialized SportsPersonalizationSelection<A>.debugDescription.getter(char a1)
{
  if (a1 == 2)
  {
    return 0x63696C7070616E69;
  }

  if (a1 == 3)
  {
    return 0x756769626D616E75;
  }

  _StringGuts.grow(_:)(33);

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0xD00000000000001ELL;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v13, v11, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      v15 = a1(v11);
      if (v3)
      {
        return outlined destroy of Any?(v11, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      }

      if (v15)
      {
        break;
      }

      outlined destroy of Any?(v11, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    outlined init with take of GenAIPartner?(v11, v20, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t SportsPersonalizationEntryPoint.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = type metadata accessor for SportsResolver();
  *(v0 + 48) = &protocol witness table for SportsResolver;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  SportsResolver.init()();
  *(v0 + 80) = &type metadata for Features;
  *(v0 + 88) = &protocol witness table for Features;
  *(v0 + 56) = 1;
  v1 = type metadata accessor for IntentDonator();
  v2 = swift_allocObject();
  *(v0 + 120) = v1;
  *(v0 + 128) = &protocol witness table for IntentDonator;
  *(v0 + 96) = v2;
  return v0;
}

uint64_t SportsPersonalizationEntryPoint.init()()
{
  v5 = type metadata accessor for SportsResolver();
  v6 = &protocol witness table for SportsResolver;
  __swift_allocate_boxed_opaque_existential_1(&v4);
  SportsResolver.init()();
  outlined init with take of SiriSuggestionsBroker(&v4, v0 + 16);
  *(v0 + 80) = &type metadata for Features;
  *(v0 + 88) = &protocol witness table for Features;
  *(v0 + 56) = 1;
  v1 = type metadata accessor for IntentDonator();
  v2 = swift_allocObject();
  *(v0 + 120) = v1;
  *(v0 + 128) = &protocol witness table for IntentDonator;
  *(v0 + 96) = v2;
  return v0;
}

uint64_t SportsPersonalizationEntryPoint.__allocating_init(inferenceApi:featureToggle:intentDonator:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(a1, v6 + 16);
  outlined init with take of SiriSuggestionsBroker(a2, v6 + 56);
  v7 = *(a3 + 16);
  *(v6 + 96) = *a3;
  *(v6 + 112) = v7;
  *(v6 + 128) = *(a3 + 32);
  return v6;
}

uint64_t SportsPersonalizationEntryPoint.init(inferenceApi:featureToggle:intentDonator:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  outlined init with take of SiriSuggestionsBroker(a1, v3 + 16);
  outlined init with take of SiriSuggestionsBroker(a2, v3 + 56);
  v6 = *(a3 + 16);
  *(v3 + 96) = *a3;
  *(v3 + 112) = v6;
  *(v3 + 128) = *(a3 + 32);
  return v3;
}

uint64_t SportsPersonalizationEntryPoint.flowFor(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse.PegasusResult();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  Input.parse.getter();
  v18 = (*(v12 + 88))(v17, v11);
  if (v18 == enum case for Parse.pegasusResults(_:))
  {
    v52 = v15;
    v54 = a1;
    v55 = v12;
    v19 = *(v12 + 96);
    v56 = v11;
    v19(v17, v11);
    v59 = v8;
    v60 = v7;
    (*(v8 + 32))(v10, v17, v7);
    type metadata accessor for PerformanceUtil();
    v20 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v20);
    v53 = v2;
    Date.init()();
    v49 = &v47;
    v50 = &type metadata for SportsPersonalizationResult;
    v48 = partial apply for closure #1 in SportsPersonalizationEntryPoint.flowFor(input:);
    LOBYTE(v47) = 2;
    v45 = "flowFor(input:)";
    v46 = 15;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    v21 = v62;
    v58 = *(v61 + 8);
    v58(v6, v62);
    v22 = v63;
    v23 = v64;
    v24 = static PerformanceUtil.shared.getter();
    v57 = &v51;
    __chkstk_darwin(v24);
    v61 = v22;
    v47 = v22;
    Date.init()();
    v49 = &v45;
    v50 = (&type metadata for () + 8);
    v48 = partial apply for closure #2 in SportsPersonalizationEntryPoint.flowFor(input:);
    LOBYTE(v47) = 2;
    v46 = 15;
    v45 = "flowFor(input:)";
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    v58(v6, v21);
    if (v23 != 3)
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.information);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      v28 = os_log_type_enabled(v26, v27);
      v30 = v55;
      v29 = v56;
      v31 = v53;
      if (v28)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v26, v27, "Donating pegasusResults parse in SportsPersonalizationEntryPoint", v32, 2u);
      }

      outlined init with copy of (String, Decodable & Encodable & Sendable)(v31 + 96, &v63, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
      if (v65)
      {
        v33 = v52;
        Input.parse.getter();
        SportsIntentDonator.donateIfNeeded(parse:)(v33);
        (*(v30 + 8))(v33, v29);
        outlined destroy of SportsIntentDonator(&v63);
      }

      else
      {
        outlined destroy of Any?(&v63, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
      }
    }

    (*(v59 + 8))(v10, v60);
    return v61;
  }

  else
  {
    if (v18 == enum case for Parse.pommesResponse(_:))
    {
      v34 = v15;
      v35 = *(v12 + 8);
      v35(v17, v11);
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.information);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "Donating pommesResponse parse in SportsPersonalizationEntryPoint", v39, 2u);
      }

      outlined init with copy of (String, Decodable & Encodable & Sendable)(v2 + 96, &v63, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
      if (v65)
      {
        Input.parse.getter();
        SportsIntentDonator.donateIfNeeded(parse:)(v34);
        v35(v34, v11);
        outlined destroy of SportsIntentDonator(&v63);
      }

      else
      {
        outlined destroy of Any?(&v63, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
      }
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.information);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "Parse not supported in SportsPersonalizationEntryPoint", v43, 2u);
      }

      (*(v12 + 8))(v17, v11);
    }

    return 0;
  }
}

uint64_t closure #2 in SportsPersonalizationEntryPoint.flowFor(input:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = v14 - v8;
  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v4 + 8))(v6, v3);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.information);
  _s21InformationFlowPlugin28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI026Apple_Parsec_Siri_V2alpha_pL8ResponseV0P11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA0dE6ActionO0kW0V_Tt2g5(0x1000302u >> (8 * a2), v9, v12);
  return outlined destroy of Any?(v9, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
}

uint64_t SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(void (*a1)(char *, char *, char *))
{
  v278 = a1;
  v276 = *v1;
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v274 = *(v2 - 8);
  v275 = v2;
  __chkstk_darwin(v2);
  v262 = &v215 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v271 = (&v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v272 = &v215 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  __chkstk_darwin(v8 - 8);
  v273 = &v215 - v9;
  v231 = type metadata accessor for PluginAction();
  v230 = *(v231 - 8);
  v10 = __chkstk_darwin(v231);
  v224 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v229 = &v215 - v12;
  v233 = type metadata accessor for Input();
  v228 = *(v233 - 8);
  v13 = __chkstk_darwin(v233);
  v223 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v226 = &v215 - v15;
  v227 = type metadata accessor for Parse();
  v225 = *(v227 - 8);
  v16 = __chkstk_darwin(v227);
  v222 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v232 = &v215 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v20 = __chkstk_darwin(v19 - 8);
  v234 = &v215 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v250 = &v215 - v22;
  v246 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v215 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = &v215 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  v26 = __chkstk_darwin(v25 - 8);
  v221 = &v215 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v247 = &v215 - v29;
  __chkstk_darwin(v28);
  v258 = &v215 - v30;
  v249 = type metadata accessor for Parse.PegasusResult();
  v248 = *(v249 - 8);
  v31 = __chkstk_darwin(v249);
  v238 = &v215 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v259 = &v215 - v33;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v241 = &v215 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtSgMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtSgMR);
  v36 = __chkstk_darwin(v35 - 8);
  v253 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v252 = &v215 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v40 = __chkstk_darwin(v39 - 8);
  v256 = &v215 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v261 = &v215 - v42;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  __chkstk_darwin(v263);
  v264 = &v215 - v43;
  v266 = type metadata accessor for SportsItem();
  v268 = *(v266 - 8);
  v44 = __chkstk_darwin(v266);
  v239 = &v215 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v251 = &v215 - v47;
  __chkstk_darwin(v46);
  v267 = &v215 - v48;
  v49 = type metadata accessor for Date();
  v269 = *(v49 - 8);
  v270 = v49;
  __chkstk_darwin(v49);
  v277 = &v215 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v52 = *(v51 - 8);
  v53 = __chkstk_darwin(v51);
  v257 = &v215 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = &v215 - v55;
  v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v58 = *(v57 - 8);
  v59 = __chkstk_darwin(v57);
  v61 = &v215 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v59);
  v243 = &v215 - v63;
  v64 = __chkstk_darwin(v62);
  v242 = &v215 - v65;
  v66 = __chkstk_darwin(v64);
  v240 = &v215 - v67;
  v68 = __chkstk_darwin(v66);
  v260 = &v215 - v69;
  __chkstk_darwin(v68);
  v71 = &v215 - v70;
  v72 = v1[10];
  v73 = v1[11];
  v265 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 7, v72);
  if ((*(v73 + 8))(v72, v73))
  {
    Parse.PegasusResult.response.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    v216 = v52;
    v74 = *(v52 + 8);
    v217 = v56;
    v219 = v52 + 8;
    v218 = v74;
    v74(v56, v51);
    v75 = specialized static SportsPersonalizationEntryPoint.isSupportedPersonalizationInstruction(instruction:)(v71);
    v76 = *(v58 + 1);
    v215 = v71;
    v220 = v76;
    v76(v71, v57);
    if (v75)
    {
      v77 = v58;
      v274 = v58 + 8;
      v275 = v57;
      v273 = v51;
      type metadata accessor for PerformanceUtil();
      v78 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v78);
      v79 = v277;
      Date.init()();
      v213 = &v211;
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtGSgMd, &_sSay13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtGSgMR);
      v212 = partial apply for closure #2 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:);
      LOBYTE(v211) = 2;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      v80 = *(v269 + 8);
      v81 = v79;
      v82 = v270;
      v80(v81, v270);
      v83 = v279;
      if (!v279)
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v112 = type metadata accessor for Logger();
        __swift_project_value_buffer(v112, static Logger.information);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_0, v113, v114, "Request doesn't have a supported (SportsEntity -> Instruction) mapping. Not performing sports personalization...", v115, 2u);

          return 0;
        }

        return 0;
      }

      v272 = v80;
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      v276 = __swift_project_value_buffer(v84, static Logger.information);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_0, v85, v86, "Got a request that is applicable for sports personalization via alternative selection. Will attempt to select an alternative", v87, 2u);
      }

      v88 = static PerformanceUtil.shared.getter();
      v271 = &v215;
      __chkstk_darwin(v88);
      v89 = v277;
      Date.init()();
      v213 = &v211;
      v214 = v263;
      v212 = partial apply for closure #3 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:);
      LOBYTE(v211) = 2;
      v90 = v264;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (v272)(v89, v82);
      v91 = v268;
      v92 = v266;
      if ((*(v268 + 48))(v90, 1, v266) == 1)
      {

        outlined destroy of Any?(v90, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_0, v93, v94, "Inference was unable to recommend an alternative. Will use original instruction", v95, 2u);

          return 0;
        }

        return 0;
      }

      v272 = v83;
      v121 = v267;
      (*(v91 + 32))(v267, v90, v92);
      v122 = *(v91 + 16);
      v123 = v251;
      v122(v251, v121, v92);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v277 = v77;
        v271 = 0;
        v128 = v127;
        v279 = v127;
        *v126 = 136315138;
        v122(v239, v123, v92);
        v129 = String.init<A>(describing:)();
        v131 = v130;
        v132 = *(v91 + 8);
        v132(v123, v92);
        v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, &v279);

        *(v126 + 4) = v133;
        _os_log_impl(&dword_0, v124, v125, "Got a recommended alternative entity: %s", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v128);
        v77 = v277;
      }

      else
      {

        v132 = *(v91 + 8);
        v134 = (v132)(v123, v92);
      }

      v135 = v261;
      v136 = v275;
      v137 = v256;
      v138 = v272;
      __chkstk_darwin(v134);
      v213 = v267;
      v139 = v252;
      specialized Sequence.first(where:)(partial apply for closure #4 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:), v138, v252);

      v140 = v139;
      v141 = v253;
      outlined init with take of GenAIPartner?(v140, v253, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtSgMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtSgMR);
      v142 = 1;
      v143 = v255;
      if ((*(v254 + 48))(v141, 1, v255) != 1)
      {
        v144 = v241;
        outlined init with take of GenAIPartner?(v141, v241, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
        (*(v77 + 4))(v135, v144 + *(v143 + 48), v136);
        v145 = type metadata accessor for SportsPersonalizationEntity();
        (*(*(v145 - 8) + 8))(v144, v145);
        v142 = 0;
      }

      (*(v77 + 7))(v135, v142, 1, v136);
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v135, v137, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      if ((*(v77 + 6))(v137, 1, v136) == 1)
      {
        outlined destroy of Any?(v137, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&dword_0, v146, v147, "Unable to map the recommended sports item back to an alternative. This is unexpected. Will continue with original instruction", v148, 2u);
        }

        outlined destroy of Any?(v135, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
        v132(v267, v92);
        return 0;
      }

      v272 = v132;
      v149 = v260;
      (*(v77 + 4))(v260, v137, v136);
      v150 = v240;
      v271 = *(v77 + 2);
      (v271)(v240, v149, v136);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.debug.getter();
      v153 = os_log_type_enabled(v151, v152);
      v277 = v77 + 16;
      if (v153)
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v279 = v155;
        *v154 = 136315138;
        lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);
        v156 = Message.debugDescription.getter();
        v158 = v157;
        v220(v150, v275);
        v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, &v279);
        v136 = v275;

        *(v154 + 4) = v159;
        _os_log_impl(&dword_0, v151, v152, "Reforming intent to use alternative instruction: %s", v154, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v155);
      }

      else
      {

        v220(v150, v136);
      }

      v160 = v273;
      v161 = v216;
      v162 = v215;
      v163 = v217;
      Parse.PegasusResult.response.getter();
      v278 = *(v161 + 16);
      v164 = v257;
      v278(v257, v163, v160);
      v165 = v271;
      (v271)(v162, v260, v136);
      v166 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.modify();
      *v167 = _swiftEmptyArrayStorage;

      v166(&v279, 0);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.setter();
      (v165)(v242, v162, v136);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.setter();
      v168 = v162;
      v169 = v220;
      v220(v168, v136);
      v218(v163, v160);
      v278(v163, v164, v160);
      Parse.PegasusResult.init(pegasusResponse:)();
      v170 = v243;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
      v171 = v244;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
      v169(v170, v136);
      v172 = Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.components.getter();
      (*(v245 + 8))(v171, v246);
      if (*(v172 + 16))
      {
        v173 = v236;
        v174 = v235;
        v175 = v237;
        (*(v236 + 16))(v235, v172 + ((*(v173 + 80) + 32) & ~*(v173 + 80)), v237);

        v176 = v258;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v173 + 8))(v174, v175);
        v177 = 0;
      }

      else
      {

        v177 = 1;
        v176 = v258;
      }

      v178 = v250;
      v179 = v272;
      v180 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
      v181 = *(v180 - 8);
      (*(v181 + 56))(v176, v177, 1, v180);
      v182 = v247;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v176, v247, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      v183 = *(v181 + 48);
      if (v183(v182, 1, v180) == 1)
      {
        outlined destroy of Any?(v182, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
        v184 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
        (*(*(v184 - 8) + 56))(v178, 1, 1, v184);
LABEL_57:
        v202 = v248;
        v203 = v238;
        v204 = v259;
        v205 = v249;
        (*(v248 + 16))(v238, v259, v249);
        type metadata accessor for InformationPassthroughFlow(0);
        v206 = swift_allocObject();
        (*(v202 + 32))(v206 + OBJC_IVAR____TtC21InformationFlowPluginP33_65CFA3A7C2969752B966336CF3E7884326InformationPassthroughFlow_result, v203, v205);
        v279 = v206;
        lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type InformationPassthroughFlow and conformance InformationPassthroughFlow, type metadata accessor for InformationPassthroughFlow, &protocol conformance descriptor for InformationPassthroughFlow);
        v199 = Flow.eraseToAnyFlow()();

        outlined destroy of Any?(v258, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
        (*(v202 + 8))(v204, v205);
        v218(v257, v273);
        v169(v260, v275);
        outlined destroy of Any?(v261, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
        outlined destroy of Any?(v178, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
        (v179)(v267, v266);
        return v199;
      }

      Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
      v178 = v250;
      v185 = *(v181 + 8);
      v185(v182, v180);
      v186 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
      v187 = *(v186 - 8);
      if ((*(v187 + 48))(v178, 1, v186) == 1)
      {
        goto LABEL_57;
      }

      v188 = v234;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v178, v234, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      if ((*(v187 + 88))(v188, v186) == enum case for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent.videoClientComponent(_:))
      {
LABEL_53:
        (*(v187 + 8))(v234, v186);
        outlined destroy of Any?(v178, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
        v189 = v232;
        (*(v248 + 16))(v232, v259, v249);
        v190 = v225;
        v191 = v227;
        (*(v225 + 104))(v189, enum case for Parse.pegasusResults(_:), v227);
        (*(v190 + 16))(v222, v189, v191);
        v192 = v226;
        Input.init(parse:)();
        v193 = v228;
        (*(v228 + 16))(v223, v192, v233);
        v194 = v229;
        PluginAction.init(flowHandlerId:input:)();
        v195 = v230;
        v196 = v224;
        v197 = v231;
        (*(v230 + 16))(v224, v194, v231);
        type metadata accessor for ReformerFlow(0);
        v198 = swift_allocObject();
        (*(v195 + 32))(v198 + OBJC_IVAR____TtC21InformationFlowPluginP33_65CFA3A7C2969752B966336CF3E7884312ReformerFlow_pluginAction, v196, v197);
        v279 = v198;
        lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type ReformerFlow and conformance ReformerFlow, type metadata accessor for ReformerFlow, &protocol conformance descriptor for ReformerFlow);
        v199 = Flow.eraseToAnyFlow()();

        (*(v195 + 8))(v194, v197);
        (*(v193 + 8))(v192, v233);
        (*(v190 + 8))(v232, v191);
        outlined destroy of Any?(v258, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
        (*(v248 + 8))(v259, v249);
        v218(v257, v273);
        v220(v260, v275);
        outlined destroy of Any?(v261, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
        (v272)(v267, v266);
        return v199;
      }

      v200 = v185;
      v201 = v221;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v258, v221, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      if (v183(v201, 1, v180) == 1)
      {
        outlined destroy of Any?(v201, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      }

      else
      {
        v207 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v209 = v208;
        v200(v201, v180);
        if (v207 == 0xD000000000000029 && 0x80000000000C12D0 == v209)
        {

          v178 = v250;
          goto LABEL_53;
        }

        v210 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v178 = v250;
        if (v210)
        {
          goto LABEL_53;
        }
      }

      (*(v187 + 8))(v234, v186);
      v169 = v220;
      goto LABEL_57;
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    __swift_project_value_buffer(v101, static Logger.information);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.debug.getter();
    v104 = os_log_type_enabled(v102, v103);
    v105 = v217;
    if (v104)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v102, v103, "Primary instruction is unambiguous, not performing any sports personalization...", v106, 2u);
    }

    Parse.PegasusResult.response.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    v218(v105, v51);
    v107 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    v220(v61, v57);
    v108 = v275;
    if (*(v107 + 16))
    {
      v109 = v274;
      v110 = v272;
      (*(v274 + 2))(v272, v107 + ((v274[80] + 32) & ~v274[80]), v275);
      v111 = 0;
    }

    else
    {
      v111 = 1;
      v109 = v274;
      v110 = v272;
    }

    (*(v109 + 7))(v110, v111, 1, v108);
    v116 = v271;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v110, v271, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
    if ((*(v109 + 6))(v116, 1, v108) == 1)
    {
      outlined destroy of Any?(v110, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      v117 = type metadata accessor for SportsPersonalizationEntity();
      v118 = v273;
      (*(*(v117 - 8) + 56))(v273, 1, 1, v117);
    }

    else
    {
      v119 = v262;
      (*(v109 + 4))(v262, v116, v108);
      v118 = v273;
      closure #1 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(v119, v276);
      (*(v109 + 1))(v119, v108);
      outlined destroy of Any?(v110, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
    }

    v120 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v120 - 8) + 48))(v118, 1, v120);
    outlined destroy of Any?(v118, &_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
    return 0;
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Logger.information);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_0, v98, v99, "Sports personalization feature is disabled, will not try to choose an alternative instruction...", v100, 2u);
    }

    return 0;
  }
}

uint64_t closure #1 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v10 = a1;
  v11 = a2;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t static SportsPersonalizationEntryPoint.makeSportsEntity(entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for SportsItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  if (one-time initialization token for information != -1)
  {
LABEL_37:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.information);
  v21 = specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(a1, v20);
  if (v21)
  {
    v41 = v21;
    v42 = v16;
    v22 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
    if (v22)
    {
      v23 = v22;
      SportsItem.init(sport:league:team:athlete:sportQId:leagueQId:teamQId:athleteQId:)();
      v16 = (v23 & 0xFFFFFFFFFFFFFF8);
      v39 = v9;
      v40 = a2;
      v37 = v18;
      v38 = v7;
      v35 = v11;
      v36 = v10;
      if (v23 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
        v18 = (v23 & 0xFFFFFFFFFFFFFF8);
        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        a1 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
        v18 = (v23 & 0xFFFFFFFFFFFFFF8);
        if (a1)
        {
LABEL_6:
          v11 = 0;
          v44 = v23 & 0xC000000000000001;
          do
          {
            if (v44)
            {
              v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v24 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            else
            {
              if (v11 >= *(v18 + 2))
              {
                __break(1u);
                goto LABEL_37;
              }

              v9 = *(v23 + 8 * v11 + 32);

              v24 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_31;
              }
            }

            dispatch thunk of CodeGenListEntry.entry.getter();
            v16 = v45;
            if (!v45)
            {
              goto LABEL_7;
            }

            v10 = specialized static SportsProperty.from(entity:)(v25);
            v7 = v26;
            a2 = v27;

            if (a2 <= 3u)
            {
              if (a2 > 1u)
              {
                if (a2 == 2)
                {
                  outlined copy of SportsProperty(v10, v7, 2u);
                  v16 = v43;
                  SportsItem.league.setter();

                  outlined consume of SportsProperty?(v10, v7, 2u);
                }

                else
                {
                  outlined copy of SportsProperty(v10, v7, 3u);
                  v16 = v43;
                  SportsItem.leagueQId.setter();

                  outlined consume of SportsProperty?(v10, v7, 3u);
                }
              }

              else if (a2)
              {
                outlined copy of SportsProperty(v10, v7, 1u);
                v16 = v43;
                SportsItem.teamQId.setter();

                outlined consume of SportsProperty?(v10, v7, 1u);
              }

              else
              {
                outlined copy of SportsProperty(v10, v7, 0);
                v16 = v43;
                SportsItem.team.setter();

                outlined consume of SportsProperty?(v10, v7, 0);
              }

              goto LABEL_8;
            }

            if (a2 <= 5u)
            {
              if (a2 == 4)
              {
                outlined copy of SportsProperty(v10, v7, 4u);
                v16 = v43;
                SportsItem.sport.setter();

                outlined consume of SportsProperty?(v10, v7, 4u);
              }

              else
              {
                outlined copy of SportsProperty(v10, v7, 5u);
                v16 = v43;
                SportsItem.sportQId.setter();

                outlined consume of SportsProperty?(v10, v7, 5u);
              }

              goto LABEL_8;
            }

            if (a2 == 6)
            {
              outlined copy of SportsProperty(v10, v7, 6u);
              v16 = v43;
              SportsItem.athlete.setter();

              outlined consume of SportsProperty?(v10, v7, 6u);
              goto LABEL_8;
            }

            if (a2 == 7)
            {
              outlined copy of SportsProperty(v10, v7, 7u);
              v16 = v43;
              SportsItem.athleteQId.setter();

              outlined consume of SportsProperty?(v10, v7, 7u);
            }

            else
            {
LABEL_7:
            }

LABEL_8:
            ++v11;
          }

          while (v24 != a1);
        }
      }

      v32 = v35;
      v31 = v36;
      v18 = v37;
      (*(v35 + 32))(v37, v43, v36);
      (*(v32 + 56))(v18, 0, 1, v31);
      v9 = v39;
      a2 = v40;
      v7 = v38;
    }

    else
    {
      (*(v11 + 56))(v18, 1, 1, v10);
    }

    static PersonalizationLevel.from(uso:)(v9);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v18, v42, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v9, v7, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
    SportsPersonalizationEntity.init(sportsItem:personalizationLevel:)();

    outlined destroy of Any?(v9, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
    outlined destroy of Any?(v18, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    v33 = type metadata accessor for SportsPersonalizationEntity();
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  else
  {
LABEL_32:
    v28 = type metadata accessor for SportsPersonalizationEntity();
    v29 = *(*(v28 - 8) + 56);

    return v29(a2, 1, 1, v28);
  }
}

uint64_t closure #2 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Parse.PegasusResult.response.getter();
  v6 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  (*(v3 + 8))(v5, v2);
  v7 = static SportsPersonalizationEntryPoint.makeEntityInstructionMapping(alternatives:)(v6);

  *a1 = v7;
  return result;
}

void *static SportsPersonalizationEntryPoint.makeEntityInstructionMapping(alternatives:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v66 = *(v2 - 8);
  __chkstk_darwin(v2);
  v64 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v75 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  __chkstk_darwin(v9 - 8);
  v73 = &v51 - v10;
  v11 = type metadata accessor for SportsPersonalizationEntity();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v63 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = __chkstk_darwin(v14);
  v60 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = &v51 - v17;
  v78 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  __chkstk_darwin(v78);
  v20 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v51 = v21;
  if (v21)
  {
    v23 = *(v19 + 16);
    v22 = v19 + 16;
    v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v65 = v66 + 16;
    v70 = (v66 + 56);
    v71 = v23;
    v25 = *(v22 + 56);
    v68 = (v66 + 48);
    v69 = v25;
    v57 = (v66 + 32);
    v56 = (v66 + 8);
    v55 = (v12 + 56);
    v67 = (v12 + 48);
    v54 = (v12 + 32);
    v53 = (v22 + 16);
    v76 = _swiftEmptyArrayStorage;
    v52 = (v22 - 8);
    v72 = v11;
    v59 = v2;
    v77 = v22;
    v58 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23(v20, v24, v78);
    while (1)
    {
      v26 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      if (*(v26 + 16))
      {
        (*(v66 + 16))(v8, v26 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v2);
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      (*v70)(v8, v27, 1, v2);
      v28 = v75;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v8, v75, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      if ((*v68)(v28, 1, v2) == 1)
      {
        outlined destroy of Any?(v8, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
        v29 = v73;
        (*v55)(v73, 1, 1, v11);
      }

      else
      {
        v30 = v64;
        (*v57)(v64, v28, v2);
        v31 = v8;
        v32 = v2;
        v33 = v73;
        static SportsPersonalizationEntryPoint.makeSportsEntity(entity:)(v30, v73);
        v29 = v33;
        v2 = v32;
        v8 = v31;
        v34 = v30;
        v11 = v72;
        (*v56)(v34, v2);
        outlined destroy of Any?(v31, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      }

      if ((*v67)(v29, 1, v11) == 1)
      {
        (*v52)(v20, v78);
        outlined destroy of Any?(v29, &_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
      }

      else
      {
        v35 = v20;
        v36 = v8;
        v37 = v29;
        v38 = *v54;
        v39 = v63;
        (*v54)(v63, v37, v11);
        v40 = *(v62 + 48);
        v41 = v60;
        v38(v60, v39, v11);
        (*v53)(v41 + v40, v35, v78);
        outlined init with take of GenAIPartner?(v41, v74, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
        v42 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
        }

        v44 = v42[2];
        v43 = v42[3];
        v8 = v36;
        if (v44 >= v43 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
        }

        v42[2] = v44 + 1;
        v45 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v76 = v42;
        outlined init with take of GenAIPartner?(v74, v42 + v45 + *(v61 + 72) * v44, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
        v11 = v72;
        v2 = v59;
        v20 = v58;
      }

      v24 += v69;
      if (!--v21)
      {
        break;
      }

      v71(v20, v24, v78);
    }
  }

  else
  {
    v76 = _swiftEmptyArrayStorage;
  }

  result = v76;
  if (v76[2] != v51)
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.information);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "One or more alternative instruction did not have a single sports entity. Will ignore alternatives...", v50, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t closure #3 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  v8 = __chkstk_darwin(v6);
  v31 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v32 = v28 - v10;
  v11 = type metadata accessor for SportsPersonalizationEntity();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OutputPublisherAsync(a1 + 16, v36);
  v15 = v37;
  v16 = v38;
  v17 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v18 = *(a2 + 16);
  if (v18)
  {
    v28[1] = v17;
    v28[2] = v16;
    v28[3] = v15;
    v28[4] = a3;
    v39 = _swiftEmptyArrayStorage;
    v35 = v18;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v39;
    v20 = a2 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v29 = *(v34 + 72);
    v30 = v12;
    do
    {
      v21 = v32;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v20, v32, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      v22 = v31;
      outlined init with take of GenAIPartner?(v21, v31, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      v23 = *(v33 + 48);
      v34 = *(v12 + 32);
      (v34)(v14, v22, v11);
      v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
      (*(*(v24 - 8) + 8))(v22 + v23, v24);
      v39 = v19;
      v26 = v19[2];
      v25 = v19[3];
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v19 = v39;
      }

      v19[2] = v26 + 1;
      (v34)(v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v14, v11);
      v20 += v29;
      --v35;
    }

    while (v35);
  }

  dispatch thunk of SportsInferenceQuerying.makeRecommendation(entities:)();

  return __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

uint64_t closure #4 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = type metadata accessor for SportsItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, v9, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v14 = *(v7 + 56);
  SportsPersonalizationEntity.sportsItem.getter();
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of Any?(v5, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    v15 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v15 - 8) + 8))(v9, v15);
    v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
    (*(*(v16 - 8) + 8))(&v9[v14], v16);
    v17 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
    v18 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v18 - 8) + 8))(v9, v18);
    v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
    (*(*(v19 - 8) + 8))(&v9[v14], v19);
    v17 = static SportsItem.partiallyEqual(lhs:rhs:)();
    (*(v11 + 8))(v13, v10);
  }

  return v17 & 1;
}

uint64_t SportsPersonalizationEntryPoint.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  outlined destroy of Any?(v0 + 96, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
  return v0;
}

uint64_t SportsPersonalizationEntryPoint.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  outlined destroy of Any?(v0 + 96, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FlowEntryPoint.flowFor(input:) in conformance SportsPersonalizationEntryPoint()
{
  v2 = (*(**v0 + 120))();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t ReformerFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(ReformerFlow.execute(), 0, 0);
}

uint64_t ReformerFlow.execute()()
{
  v12 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for PluginAction();
    lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Redirecting parse: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  static ExecuteResponse.redirect(nextPluginAction:)();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t protocol witness for Flow.execute() in conformance ReformerFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return ReformerFlow.execute()(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ReformerFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ReformerFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t InformationPassthroughFlow.execute()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for KnowledgeFallbackHelper(0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for Parse.PegasusResult();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(InformationPassthroughFlow.execute(), 0, 0);
}

uint64_t InformationPassthroughFlow.execute()()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  (*(v0[9] + 16))(v1, v0[4] + OBJC_IVAR____TtC21InformationFlowPluginP33_65CFA3A7C2969752B966336CF3E7884326InformationPassthroughFlow_result, v0[8]);
  v5 = [objc_opt_self() isSiriLocationServicesPromptingEnabled];
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  v6 = v4[5];
  v7 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + v4[6]) = xmmword_B86A0;
  *(v2 + v4[7]) = xmmword_B86A0;
  outlined init with copy of KnowledgeFallbackHelper(v2, v3, type metadata accessor for KnowledgeFallbackHelper);
  v8 = _s21InformationFlowPlugin0a7RoutingB0C6result38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperAC0g3KitB05ParseO13PegasusResultV_SbAA09KnowledgemN9Providing_ptcfCTf4nnen_nAA0smN0V_Tt2g5(v1, v5, v3);
  _s21InformationFlowPlugin23KnowledgeFallbackHelperVWOhTm_0(v2, type metadata accessor for KnowledgeFallbackHelper);
  v0[2] = v8;
  type metadata accessor for InformationRoutingFlow(0);
  lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type InformationRoutingFlow and conformance InformationRoutingFlow, type metadata accessor for InformationRoutingFlow, &protocol conformance descriptor for InformationRoutingFlow);
  static ExecuteResponse.complete<A>(next:)();

  v9 = v0[1];

  return v9();
}

uint64_t ReformerFlow.__deallocating_deinit(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = a2(0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance InformationPassthroughFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance InformationPassthroughFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance InformationPassthroughFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return InformationPassthroughFlow.execute()(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance InformationPassthroughFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InformationPassthroughFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t partial apply for closure #1 in SportsPersonalizationEntryPoint.flowFor(input:)@<X0>(uint64_t a1@<X8>)
{
  result = SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(*(v1 + 24));
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type SportsInactionReason and conformance SportsInactionReason()
{
  result = lazy protocol witness table cache variable for type SportsInactionReason and conformance SportsInactionReason;
  if (!lazy protocol witness table cache variable for type SportsInactionReason and conformance SportsInactionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SportsInactionReason and conformance SportsInactionReason);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SportsPersonalizationAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for SportsPersonalizationAction(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for SportsPersonalizationAction(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationAction.SelectionMetric(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for SportsPersonalizationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for ReformerFlow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s21InformationFlowPlugin0a7RoutingB0C6result38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperAC0g3KitB05ParseO13PegasusResultV_SbAA09KnowledgemN9Providing_ptcfCTf4nnen_nAA0smN0V_Tt2g5(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v28[3] = type metadata accessor for KnowledgeFallbackHelper(0);
  v28[4] = &protocol witness table for KnowledgeFallbackHelper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  outlined init with take of KnowledgeFallbackHelper(a3, boxed_opaque_existential_1);
  v11 = type metadata accessor for Parse.PegasusResult();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a1, v11);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of OutputPublisherAsync(v28, v27);
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v14 = swift_allocObject();
  v15 = [objc_opt_self() sharedPreferences];
  v16 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v17 = PommesServerFallbackPreferences.init(_:)();
  v14[11] = v16;
  v14[12] = &protocol witness table for PommesServerFallbackPreferences;
  v14[8] = v17;
  outlined init with take of SiriSuggestionsBroker(v24, (v14 + 3));
  v14[2] = v13;
  type metadata accessor for ExperienceSelector();
  v18 = swift_allocObject();
  type metadata accessor for PommesResponse();
  static PommesResponse.makeDefaultInteractionStream()();
  type metadata accessor for InformationRoutingFlow(0);
  v19 = swift_allocObject();
  v20 = v19 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  outlined init with copy of KnowledgeFallbackHelper(v9, v19 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
  outlined init with copy of OutputPublisherAsync(v26, v19 + 56);
  outlined init with copy of OutputPublisherAsync(v25, v19 + 16);
  *(v19 + 96) = v14;
  *(v19 + 104) = v18;
  swift_beginAccess();
  outlined assign with copy of CurareInteractionStream?(v24, v20);
  swift_endAccess();
  *(v19 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = a2;
  outlined init with copy of OutputPublisherAsync(v27, v19 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
  UtteranceNormalizer.init(locale:)();
  type metadata accessor for AnalyticsComponentIdGenerator();
  swift_allocObject();
  AnalyticsComponentIdGenerator.init()();
  type metadata accessor for KnowledgeFallbackInstrumentationUtil();
  swift_allocObject();
  v21 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
  (*(v12 + 8))(a1, v11);
  outlined destroy of Any?(v24, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  _s21InformationFlowPlugin23KnowledgeFallbackHelperVWOhTm_0(v9, type metadata accessor for InformationRoutingFlow.State);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  *(v19 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v21;
  return v19;
}

uint64_t _s21InformationFlowPlugin23KnowledgeFallbackHelperVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static SportsPersonalizationEntryPoint.isSupportedPersonalizationInstruction(instruction:)(uint64_t a1)
{
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v39 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent();
  v37 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v33 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  result = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v16 = (v9 + 8);
  do
  {
    v36 = v15 != v14;
    if (v15 == v14)
    {
      break;
    }

    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v9 + 16))(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v8);
    if (Apple_Parsec_Siri_Context_ResultEntity.name.getter() == 0x6769626D61736944 && v18 == 0xEE006E6F69746175)
    {

      (*v16)(v11, v8);
      break;
    }

    ++v14;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v16)(v11, v8);
  }

  while ((v17 & 1) == 0);

  v19 = v31;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v20 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.components.getter();
  v33[1](v19, v38);
  result = v20;
  v21 = 0;
  v42 = *(v20 + 16);
  v22 = v43;
  ++v37;
  v38 = v44 + 16;
  v33 = v39 + 1;
  v39 = (v44 + 8);
  v23 = v32;
  while (1)
  {
    if (v42 == v21)
    {

      return v36;
    }

    if (v21 >= *(result + 16))
    {
      goto LABEL_19;
    }

    v24 = result;
    (*(v44 + 16))(v23, result + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v21, v22);
    v25 = v40;
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.catDialog.getter();
    Apple_Parsec_Siri_V2alpha_CatDialogComponent.catID.getter();
    (*v37)(v25, v41);
    v26 = String.lowercased()();

    v46 = v26;
    strcpy(v45, "disambiguation");
    v45[15] = -18;
    lazy protocol witness table accessor for type String and conformance String();
    v27 = StringProtocol.contains<A>(_:)();

    if (v27)
    {
      break;
    }

    ++v21;
    v28 = v34;
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
    Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
    (*v33)(v28, v35);
    v29 = String.lowercased()();

    v46 = v29;
    strcpy(v45, "disambiguation");
    v45[15] = -18;
    v30 = StringProtocol.contains<A>(_:)();
    v22 = v43;

    (*v39)(v23, v22);
    result = v24;
    if (v30)
    {

      return 1;
    }
  }

  (*v39)(v23, v22);
  return 1;
}

uint64_t outlined copy of SportsProperty(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t RegionUnavailabilityOutputGenerator.generateOutput()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  type metadata accessor for DialogPhase();
  v3[25] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for CATOption();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v6 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();

  return _swift_task_switch(RegionUnavailabilityOutputGenerator.generateOutput(), 0, 0);
}

uint64_t RegionUnavailabilityOutputGenerator.generateOutput()()
{
  v1 = objc_allocWithZone(NSBundle);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithPath:v2];
  *(v0 + 280) = v3;

  if (v3)
  {
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 256);
    type metadata accessor for GenerativeAssistantSettingsProvider();
    static GenerativeAssistantSettingsProvider.shared.getter();
    dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

    v7 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
    (*(v5 + 8))(v4, v6);
    type metadata accessor for CATDialog();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B8690;
    *(inited + 32) = 0xD000000000000013;
    v9 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000000000BF9A0;
    *(inited + 48) = v7;
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    *(v0 + 288) = v10;
    swift_setDeallocating();
    outlined destroy of Any?(v9, &_sSS_yptMd, &_sSS_yptMR);
    type metadata accessor for CATGlobals();
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    v11 = CATGlobals.__allocating_init()();
    *(v0 + 296) = v11;
    static CATOption.defaultMode.getter();
    v12 = swift_task_alloc();
    *(v0 + 304) = v12;
    *v12 = v0;
    v12[1] = RegionUnavailabilityOutputGenerator.generateOutput();
    v13 = *(v0 + 248);

    return static CATDialog.execute(bundle:catId:parameters:globals:callback:options:)(v3, 0xD00000000000003ALL, 0x80000000000C13C0, v10, v11, v0 + 96, v13);
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.information);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "GenerativeAssistantActions framework is not available", v17, 2u);
    }

    lazy protocol witness table accessor for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

{
  v1 = v0[40];
  v2 = type metadata accessor for GenerativeResultModels();
  v0[41] = v2;
  v3 = *(v2 - 8);
  v0[42] = v3;
  v4 = swift_task_alloc();
  v0[43] = v4;

  GenerativeSearchWebButtonSnippetModel.init(query:)();
  (*(v3 + 104))(v4, enum case for GenerativeResultModels.GenerativeSearchWebButtonSnippet(_:), v2);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.setRegionUnavailablityDialogShown(_:)();
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[44] = ResponseFactory.init()();
  v0[20] = v2;
  v0[21] = lazy protocol witness table accessor for type GenerativeResultModels and conformance GenerativeResultModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(v3 + 16))(boxed_opaque_existential_1, v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v0[45] = v6;
  *(v6 + 16) = xmmword_B9BD0;
  *(v6 + 32) = v1;
  v12 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v7 = v1;
  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = RegionUnavailabilityOutputGenerator.generateOutput();
  v9 = v0[28];
  v10 = v0[22];

  return v12(v10, v0 + 17, v6, v9);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 136));

  return _swift_task_switch(RegionUnavailabilityOutputGenerator.generateOutput(), 0, 0);
}

{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);

  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RegionUnavailabilityOutputGenerator.generateOutput()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  *(v4 + 312) = v1;

  v6 = (v5 + 8);
  v7 = *(v4 + 248);
  v8 = *(v4 + 232);

  if (v1)
  {
    (*v6)(v7, v8);
    outlined destroy of Any?(v4 + 96, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
    v9 = RegionUnavailabilityOutputGenerator.generateOutput();
  }

  else
  {
    *(v4 + 320) = a1;
    (*v6)(v7, v8);
    outlined destroy of Any?(v4 + 96, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
    v9 = RegionUnavailabilityOutputGenerator.generateOutput();
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t closure #1 in RegionUnavailabilityOutputGenerator.generateOutput()()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  return OutputGenerationManifest.responseViewId.setter();
}

unint64_t lazy protocol witness table accessor for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError()
{
  result = lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError;
  if (!lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError;
  if (!lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenerativeResultModels and conformance GenerativeResultModels()
{
  result = lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels;
  if (!lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels)
  {
    type metadata accessor for GenerativeResultModels();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels);
  }

  return result;
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:) in conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:) in conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:), 0, 0);
}

uint64_t OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(uint64_t a1)
{
  v2 = dispatch thunk of PommesResponse.experiences.getter();
  if (!(v2 >> 62))
  {
    if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v13 = v2;
  v14 = _CocoaArrayWrapper.endIndex.getter();
  v2 = v13;
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(v2, v3, v4, v5, v6);
    }

    v7 = *(v2 + 32);
  }

  v8 = v7;

  type metadata accessor for GenericExperience();
  v9 = swift_dynamicCastClass();

  if (!v9)
  {
LABEL_12:
    v15 = swift_task_alloc();
    *(v1 + 40) = v15;
    v6 = lazy protocol witness table accessor for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy();
    *v15 = v1;
    v15[1] = OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:);
    v4 = *(v1 + 56);
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    v5 = &type metadata for OverrideGuardFlowStrategy.DefaultGuardFlowStrategy;

    return SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(v2, v3, v4, v5, v6);
  }

  v10 = *(v1 + 16);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = *(v1 + 8);

  return v11();
}

uint64_t OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t lazy protocol witness table accessor for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy()
{
  result = lazy protocol witness table cache variable for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy;
  if (!lazy protocol witness table cache variable for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy);
  }

  return result;
}

uint64_t OverrideGuardFlowStrategy.makeErrorResponse(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(OverrideGuardFlowStrategy.makeErrorResponse(error:), 0, 0);
}

uint64_t OverrideGuardFlowStrategy.makeErrorResponse(error:)(uint64_t a1)
{
  v2 = dispatch thunk of PommesResponse.experiences.getter();
  if (!(v2 >> 62))
  {
    if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = v2;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  v2 = v12;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(v2, v3, v4, v5);
    }

    v6 = *(v2 + 32);
  }

  v7 = v6;

  type metadata accessor for GenericExperience();
  v8 = swift_dynamicCastClass();

  if (!v8)
  {
LABEL_12:
    v14 = swift_task_alloc();
    v1[5] = v14;
    v5 = lazy protocol witness table accessor for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy();
    *v14 = v1;
    v14[1] = OverrideGuardFlowStrategy.makeErrorResponse(error:);
    v2 = v1[2];
    v3 = v1[3];
    v4 = &type metadata for OverrideGuardFlowStrategy.DefaultGuardFlowStrategy;

    return SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(v2, v3, v4, v5);
  }

  v9 = v1[2];
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = v1[1];

  return v10();
}

uint64_t OverrideGuardFlowStrategy.makeErrorResponse(error:)()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(OverrideGuardFlowStrategy.makeErrorResponse(error:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:) in conformance OverrideGuardFlowStrategy(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(a1, a2, a3, v8);
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:) in conformance OverrideGuardFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return OverrideGuardFlowStrategy.makeErrorResponse(error:)(a1, a2, v6);
}

uint64_t getEnumTagSinglePayload for OverrideGuardFlowStrategy(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OverrideGuardFlowStrategy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RenderPegasusFlow.__allocating_init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v26 = a7;
  v30 = a6;
  v29 = a5;
  v25 = a4;
  v28 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PegasusExperience(0);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v31 = a4;
  v32 = a1;
  v17 = a1;
  Date.init()();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v11 + 8))(v13, v10);
  outlined init with copy of OutputPublisherAsync(a2, v35);
  static SiriKitEventSender.current.getter();
  type metadata accessor for PegasusFlowEventLogger();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  outlined init with take of SiriSuggestionsBroker(v34, v18 + 24);
  *(v18 + 64) = 0x54746E6572727543;
  *(v18 + 72) = 0xEB000000006B7361;
  *(v18 + 80) = 2;
  v19 = v26;
  outlined init with copy of OutputPublisherAsync(v26, v34);
  v20 = default argument 7 of RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)();
  v33[3] = type metadata accessor for PommesSystemAppChecking();
  v33[4] = &protocol witness table for PommesSystemAppChecking;
  __swift_allocate_boxed_opaque_existential_1(v33);
  PommesSystemAppChecking.init()();
  v21 = type metadata accessor for AppResolutionStrategyHelpers();
  v22 = (*(v27 + 224))(v16, 0, v35, v28, v29, v18, v34, v20, v33, v21, &protocol witness table for AppResolutionStrategyHelpers);

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  v23 = type metadata accessor for Parse.PegasusResult();
  (*(*(v23 - 8) + 8))(v17, v23);
  return v22;
}

void *RenderPegasusFlow.__allocating_init(pommesResponse:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:appChecking:responseProducerType:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, unint64_t a9, void *a10)
{
  v68 = a8;
  v69 = a7;
  v62 = a6;
  v67 = a5;
  v66 = a3;
  v70 = a9;
  v65 = a10;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PegasusExperience(0);
  __chkstk_darwin(v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v61 = a4;
  v71 = a4;
  v72 = a1;
  Date.init()();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  v60 = 0;

  (*(v14 + 8))(v16, v13);
  v63 = a2;
  outlined init with copy of OutputPublisherAsync(a2, v75);
  v20 = a1;
  static SiriKitEventSender.current.getter();
  type metadata accessor for PegasusFlowEventLogger();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  outlined init with copy of OutputPublisherAsync(v74, v21 + 24);
  v22 = v20;
  v23 = PommesResponse.metadataDomainName.getter();
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  *(v21 + 64) = v23;
  *(v21 + 72) = v25;
  *(v21 + 80) = 1;
  outlined init with copy of OutputPublisherAsync(v69, v74);
  outlined init with copy of OutputPublisherAsync(v68, v73);
  v26 = default argument 7 of RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)();
  v27 = v64[28];
  v28 = v66;

  v29 = v67;

  v30 = v27(v19, a1, v75, v28, v29, v21, v74, v26, v73, v70, v65);

  v65 = v22;
  v31 = dispatch thunk of PommesResponse.experiences.getter();
  v32 = v31;
  if (v31 >> 62)
  {
    goto LABEL_40;
  }

  v33 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v64 = v30;
  if (v33)
  {
    v34 = 0;
    v70 = v32 & 0xC000000000000001;
    v30 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v70)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v33 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v38 = dispatch thunk of Experience.associatedEntities.getter();

      v39 = *(v38 + 16);
      v40 = v30[2];
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v41 <= v30[3] >> 1)
      {
        if (*(v38 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v40 <= v41)
        {
          v43 = v40 + v39;
        }

        else
        {
          v43 = v40;
        }

        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v43, 1, v30, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, _ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, &type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity);
        if (*(v38 + 16))
        {
LABEL_20:
          v44 = (v30[3] >> 1) - v30[2];
          type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
          if (v44 < v39)
          {
            goto LABEL_38;
          }

          swift_arrayInitWithCopy();

          if (v39)
          {
            v45 = v30[2];
            v46 = __OFADD__(v45, v39);
            v47 = v45 + v39;
            if (v46)
            {
              goto LABEL_39;
            }

            v30[2] = v47;
          }

          goto LABEL_6;
        }
      }

      if (v39)
      {
        goto LABEL_37;
      }

LABEL_6:
      ++v34;
      if (v37 == v33)
      {
        goto LABEL_26;
      }
    }
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_26:

  v48 = v64;
  v49 = v60;
  RenderPegasusFlow.addReferenceResolutionEntities(from:)(v30);
  if (v49)
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.information);
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v75[0] = v54;
      *v53 = 136315138;
      v74[0] = v49;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v55 = String.init<A>(describing:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v75);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_0, v51, v52, "Could not add RR entities from POMMES response: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
  return v48;
}

uint64_t protocol witness for static AppResolutionUnsuccessfulResponseProducing.makeAppNotFoundOnDeviceResponse(appNameSearchTerm:) in conformance AppResolutionStrategyHelpers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return static AppResolutionStrategyHelpers.makeAppNotFoundOnDeviceResponse(appNameSearchTerm:)(a1, a2, a3);
}

uint64_t RenderPegasusFlow.__allocating_init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a1;
  v27 = a3;
  v25 = a11;
  v15 = swift_allocObject();
  v16 = a9[3];
  v17 = a9[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a9, v16);
  __chkstk_darwin(v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(v26, a2, v27, a4, a5, a6, v28, v29, v20, a10, v25, v15, v16, v17);

  __swift_destroy_boxed_opaque_existential_0Tm(a9);
  return v22;
}

uint64_t RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v26 = a3;
  v27 = a7;
  v28 = a8;
  v24 = a1;
  v16 = a9[3];
  v15 = a9[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a9, v16);
  __chkstk_darwin(v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = specialized RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(v24, a2, v26, a4, a5, a6, v27, v28, v19, a10, a11, v25, v16, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(a9);
  return v21;
}

uint64_t RenderPegasusFlow.addReferenceResolutionEntities(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for RREntity();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v39 = &v35 - v11;
  v40 = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity() - 8);
    v14 = (v7 + 48);
    v38 = v7;
    v41 = (v7 + 32);
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v16 = _swiftEmptyArrayStorage;
    v17 = *(v13 + 72);
    v36 = v17;
    v37 = v5;
    while (1)
    {
      closure #1 in RenderPegasusFlow.addReferenceResolutionEntities(from:)(v5);
      if (v1)
      {
      }

      if ((*v14)(v5, 1, v6) == 1)
      {
        outlined destroy of Any?(v5, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      }

      else
      {
        v18 = *v41;
        v19 = v39;
        (*v41)(v39, v5, v6);
        v18(v43, v19, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, &type metadata accessor for RREntity);
        }

        v21 = v16[2];
        v20 = v16[3];
        v22 = v16;
        if (v21 >= v20 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v16, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, &type metadata accessor for RREntity);
        }

        v5 = v37;
        v23 = v38;
        v22[2] = v21 + 1;
        v16 = v22;
        v24 = v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21;
        v6 = v40;
        v18(v24, v43, v40);
        v17 = v36;
      }

      v15 += v17;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_13:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.information);

    v26 = Logger.logObject.getter();
    v27 = v16;
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42[0] = v30;
      *v29 = 136315138;
      v31 = Array.description.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_0, v26, v28, "Adding RR entities: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    swift_beginAccess();
    specialized Array.append<A>(contentsOf:)(v27);
    return swift_endAccess();
  }
}

uint64_t closure #1 in RenderPegasusFlow.addReferenceResolutionEntities(from:)@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  __chkstk_darwin(v1 - 8);
  v36 = v30 - v2;
  v38 = type metadata accessor for Typespb_Domain();
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GroupIdentifier();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type RenderPegasusFlow and conformance RenderPegasusFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, &type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  v12 = v43;
  result = Message.init(serializedData:extensions:partial:options:)();
  if (!v12)
  {
    v14 = v38;
    v33 = v5;
    static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    v43 = 0;
    v15 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();
    v32 = v9;
    if (v15)
    {
      v30[2] = v15;
      Apple_Parsec_Siri_Context_ResultEntity.groupID.getter();
      v31 = v11;
      Apple_Parsec_Siri_Context_ResultEntity.groupSequenceNumber.getter();
      GroupIdentifier.init(id:seq:)();
      v16 = Apple_Parsec_Siri_Context_ResultEntity.id.getter();
      v30[0] = v17;
      v30[1] = v16;
      *&v40 = 0;
      *(&v40 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v18._object = 0x80000000000BEBF0;
      v18._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v18);
      Apple_Parsec_Siri_Context_ResultEntity.domain.getter();
      _print_unlocked<A, B>(_:_:)();
      (*(v34 + 8))(v4, v14);
      v20 = v35;
      v19 = v36;
      v21 = v33;
      (*(v35 + 16))(v36, v7, v33);
      (*(v20 + 56))(v19, 0, 1, v21);
      v22 = v37;
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      (*(v20 + 8))(v7, v21);
      v11 = v31;
      v23 = 0;
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.information);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v22 = v37;
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v25, v26, "Unable to extract entity from USO graph for RR donation", v28, 2u);
      }

      v23 = 1;
    }

    (*(v39 + 8))(v11, v32);
    v29 = type metadata accessor for RREntity();
    return (*(*(v29 - 8) + 56))(v22, v23, 1, v29);
  }

  return result;
}

uint64_t RenderPegasusFlow.on(input:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.information);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "RenderPegasusFlow does not expect input", v3, 2u);
  }

  return 0;
}

uint64_t RenderPegasusFlow.execute()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for PommesContext();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for ExecuteResponse();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for Parse.DirectInvocation();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for PerformanceUtil.Ticket();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for PegasusExperience(0);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(RenderPegasusFlow.execute(), 0, 0);
}

{
  *(*v1 + 368) = a1;

  return _swift_task_switch(RenderPegasusFlow.execute(), 0, 0);
}

{
  *(*v1 + 408) = a1;

  return _swift_task_switch(RenderPegasusFlow.execute(), 0, 0);
}

{
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "RenderPegasusFlow pushing render pattern flow", v4, 2u);
  }

  v6 = v1[47];
  v5 = v1[48];
  v7 = v1[28];
  v8 = v1[26];
  v9 = v1[27];
  v10 = v1[12];
  v16 = v1[13];
  v14 = v1[29];
  v15 = v1[11];

  static ExecuteResponse.complete(next:)();

  outlined consume of Data?(v6, v5);
  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v14, v8);
  (*(v10 + 8))(v16, v15);

  v12 = v1[1];

  return v12();
}

uint64_t RenderPegasusFlow.execute()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "RenderPegasusFlow.execute", v4, 2u);
  }

  v5 = v0[33];
  v6 = v0[7];

  outlined init with copy of PegasusExperience(v6 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = v0[22];
      v17 = v0[19];
      v18 = v0[7];
      (*(v0[21] + 32))(v16, v0[33], v0[20]);
      specialized FlowTrampolining.makeResponse(for:)(v16, v17);
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v19 = v0[15];
      if (*(v18 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse))
      {
        PommesResponse.requestId.getter();
        PommesResponse.pommesCandidateId.getter();
      }

      else
      {
        v35 = type metadata accessor for PommesCandidateId();
        (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
      }

      v37 = v0[21];
      v36 = v0[22];
      v38 = v0[20];
      v39 = v0[17];
      v51 = v0[16];
      v53 = v0[19];
      v40 = v0[15];
      v41 = v0[6];
      dispatch thunk of PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:)();

      outlined destroy of Any?(v40, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      (*(v37 + 8))(v36, v38);
      (*(v39 + 32))(v41, v53, v51);
    }

    else
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "RenderPegasusFlow no valid pegasus experience. Sending error flow.", v29, 2u);
      }

      v31 = v0[24];
      v30 = v0[25];
      v52 = v0[23];
      v32 = v0[7];

      v0[5] = v32;
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v33 = swift_task_alloc();
      v33[2] = v0 + 5;
      v33[3] = 0xD00000000000002DLL;
      v33[4] = 0x80000000000C1400;
      Date.init()();
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v31 + 8))(v30, v52);

      static PerformanceUtil.shared.getter();
      v34 = v0[14];
      if (*(v32 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse))
      {
        PommesResponse.requestId.getter();
        PommesResponse.pommesCandidateId.getter();
      }

      else
      {
        v44 = type metadata accessor for PommesCandidateId();
        (*(*(v44 - 8) + 56))(v34, 1, 1, v44);
      }

      v46 = v0[17];
      v45 = v0[18];
      v47 = v0[16];
      v48 = v0[14];
      v49 = v0[6];
      dispatch thunk of PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:)();

      outlined destroy of Any?(v48, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      (*(v46 + 32))(v49, v45, v47);
    }

    v50 = v0[1];

    return v50();
  }

  else if (EnumCaseMultiPayload)
  {
    v20 = v0[7];
    (*(v0[12] + 32))(v0[13], v0[33], v0[11]);
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v21 = *(v20 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse);
    if (v21)
    {
      v23 = v0[9];
      v22 = v0[10];
      v24 = v0[8];
      PommesResponse.pommesContext.getter();
      v21 = PommesContext.exportPegasusConversationContext()();
      v26 = v25;
      (*(v23 + 8))(v22, v24);
    }

    else
    {
      v26 = 0xF000000000000000;
    }

    v0[47] = v21;
    v0[48] = v26;
    v0[49] = type metadata accessor for PerformanceUtil();
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v42 = swift_task_alloc();
    v0[50] = v42;
    *v42 = v0;
    v42[1] = RenderPegasusFlow.execute();
    v43 = v0[13];

    return specialized PegasusPatternFlowFactory.makeRenderPatternFlow(patternModel:pegasusConversationContext:)(v43);
  }

  else
  {
    v8 = v0[33];
    v9 = v0[31];
    v0[35] = *v8;
    v0[36] = v8[1];
    v0[37] = v8[2];
    v10 = v8[3];
    v0[38] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMR);
    v12 = v11[24];
    v0[39] = *(v8 + v11[28]);
    v13 = *(v8 + v11[32]);
    v0[40] = v13;
    v0[41] = *(v8 + v11[36]);
    v0[42] = *(v8 + v11[40]);
    outlined init with take of Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?(v8 + v12, v9);
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v14 = swift_task_alloc();
    v0[43] = v14;
    *v14 = v0;
    v14[1] = RenderPegasusFlow.execute();

    return RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)(v10, v13);
  }
}

{
  if (*(v0 + 416) != 1)
  {
    v5 = *(v0 + 56);
    v6 = *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_renderComponentFlowFactory);
    v7 = OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_rrEntities;
    swift_beginAccess();
    *(v0 + 352) = *(v5 + v7);
    v8 = *(*v6 + 112);

    v12 = v8 + *v8;
    v9 = swift_task_alloc();
    *(v0 + 360) = v9;
    *v9 = v0;
    v9[1] = RenderPegasusFlow.execute();

    __asm { BRAA            X8, X16 }
  }

  v11 = *(v0 + 336);
  v1 = *(v0 + 240);
  v14 = *(v0 + 248);
  v2 = *(v0 + 216);
  v10 = *(v0 + 208);

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  static ExecuteResponse.complete()();

  (*(v2 + 8))(v1, v10);
  outlined destroy of Any?(v14, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);

  v3 = *(v0 + 8);

  return v3();
}

{
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "RenderPegasusFlow pushing render component flow", v3, 2u);
  }

  v4 = v0[42];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[26];
  v8 = v0[27];

  static ExecuteResponse.complete(next:)();

  (*(v8 + 8))(v6, v7);
  outlined destroy of Any?(v5, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);

  v9 = v0[1];

  return v9();
}

uint64_t RenderPegasusFlow.execute()(char a1)
{
  *(*v1 + 416) = a1;

  return _swift_task_switch(RenderPegasusFlow.execute(), 0, 0);
}

uint64_t RenderPegasusFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RenderPegasusFlow(0);
  lazy protocol witness table accessor for type RenderPegasusFlow and conformance RenderPegasusFlow(&lazy protocol witness table cache variable for type RenderPegasusFlow and conformance RenderPegasusFlow, type metadata accessor for RenderPegasusFlow, &protocol conformance descriptor for RenderPegasusFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for PommesAppStatus();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:), 0, 0);
}

void *RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)()
{
  v133 = v0;
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v1 = dispatch thunk of CurrentDevice.isCarPlay.getter();
  v2 = v0;

  if ((v1 & 1) == 0)
  {
    goto LABEL_76;
  }

  v112 = v0[19];
  v3 = *(v0[12] + 16);
  v4 = (v0[28] + 8);

  v126 = v0;
  v127 = v4;
  v122 = v3;
  if (v3)
  {
    v5 = 0;
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
    while (1)
    {
      v6 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = 0;
        v124 = v6;
        v9 = v6 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
        v10 = *(v112 + 72);
        while (1)
        {
          v11 = v2[33];
          v12 = v2[27];
          Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
          v13 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
          v15 = v14;
          v16 = *v127;
          (*v127)(v11, v12);

          v17 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v17 = v13 & 0xFFFFFFFFFFFFLL;
          }

          if (v17)
          {
            break;
          }

          ++v8;
          v9 += v10;
          v2 = v126;
          if (v7 == v8)
          {
            v8 = v7;
            goto LABEL_13;
          }
        }

        v19 = v126[31];
        v18 = v126[32];
        v20 = v126[27];
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
        v16(v18, v20);
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
        v16(v19, v20);
        v2 = v126;

LABEL_13:
        v6 = v124;
      }

      else
      {
        v8 = 0;
      }

      v21 = *(v6 + 16);
      if (v8 != v21)
      {
        break;
      }

      if (++v5 == v122)
      {
        v4 = v127;
        goto LABEL_17;
      }
    }

    if (v8 >= v21)
    {
      __break(1u);
    }

    else
    {
      v66 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v67 = *(v112 + 72);
      closure #1 in closure #1 in RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)(&v129);
      v68 = v130;
      if (!v130)
      {
LABEL_81:
        __break(1u);
LABEL_82:

        __break(1u);
        goto LABEL_83;
      }

      v69 = v129;
      v70 = v131;
      v71 = v132;

      outlined consume of (displayName: String, bundleId: String)?(v69, v68, v70, v71);

      v72 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
      v73 = *(v72 + 16);
      v74 = v72 + v66;
      v75 = v72;
      if (v73)
      {
        v111 = v72;
        v76 = 0;
        v77 = v74;
        while (1)
        {
          v78 = v126[30];
          v79 = v126[27];
          Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
          v80 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
          v82 = v81;
          v83 = *v127;
          (*v127)(v78, v79);

          v84 = HIBYTE(v82) & 0xF;
          if ((v82 & 0x2000000000000000) == 0)
          {
            v84 = v80 & 0xFFFFFFFFFFFFLL;
          }

          if (v84)
          {
            break;
          }

          ++v76;
          v77 += v67;
          if (v73 == v76)
          {
            v76 = v73;
            goto LABEL_60;
          }
        }

        v88 = v126[31];
        v87 = v126[32];
        v89 = v126[27];
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
        v83(v87, v89);
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
        v83(v88, v89);

LABEL_60:
        v75 = v111;
      }

      else
      {
        v76 = 0;
      }

      v90 = *(v75 + 16);
      if (v76 == v90)
      {
        goto LABEL_82;
      }

      if (v76 < v90)
      {
        result = closure #1 in closure #1 in RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)(&v129);
        v85 = v130;
        if (v130)
        {
          v86 = v129;
          v92 = v131;
          v93 = v132;
          v2 = v126;

          outlined consume of (displayName: String, bundleId: String)?(v86, v85, v92, v93);

LABEL_65:
          v2[34] = v85;
          v94 = v126[14];

          __swift_project_boxed_opaque_existential_1((v94 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking), *(v94 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking + 24));
          v2 = v126;
          dispatch thunk of PommesAppChecking.appStatus(bundleID:)();
          if (PommesAppStatus.isHidden.getter() & 1) != 0 || (PommesAppStatus.isLocked.getter())
          {
            if (one-time initialization token for information != -1)
            {
              swift_once();
            }

            v95 = type metadata accessor for Logger();
            v126[35] = __swift_project_value_buffer(v95, static Logger.information);

            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v129 = v99;
              *v98 = 136315138;

              v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v85, &v129);

              *(v98 + 4) = v100;
              _os_log_impl(&dword_0, v96, v97, "RenderPegasusFlow: app punchout app is restricted for %s, publishing no app found response on CarPlay", v98, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v99);
            }

            v101 = v126[14];
            outlined init with copy of OutputPublisherAsync(v101 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher, (v126 + 2));
            v102 = *(v126 + 5);
            *(v126 + 18) = v102;
            v126[38] = __swift_project_boxed_opaque_existential_1(v126 + 2, v102);
            v103 = v101 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType;
            v105 = *(v101 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType);
            v104 = *(v103 + 8);

            v128 = (*(v104 + 8) + **(v104 + 8));
            v106 = swift_task_alloc();
            v126[39] = v106;
            *v106 = v126;
            v106[1] = RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:);

            return v128(v126 + 7, v86, v85, v105, v104);
          }

          (*(v126[16] + 8))(v126[17], v126[15]);

          goto LABEL_75;
        }

LABEL_83:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_81;
  }

LABEL_17:
  v22 = v2[13];

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v2[25];
    v26 = v2[19];
    v116 = *(v25 + 16);
    v115 = v2[13] + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v109 = v2[22];
    v121 = (v26 + 16);
    v118 = (v26 + 8);
    v113 = (v25 + 8);
    v114 = *(v25 + 72);
    v27 = _swiftEmptyArrayStorage;
    v108 = *(v22 + 16);
    v116(v2[26], v115, v2[24]);
    while (1)
    {
      v28 = Apple_Parsec_Siri_V2alpha_DisambiguationListComponent.items.getter();
      if (*(v28 + 16))
      {
        v117 = v24;
        v29 = v2[23];
        v30 = v2[21];
        (*(v109 + 16))(v29, v28 + ((*(v109 + 80) + 32) & ~*(v109 + 80)), v30);

        v31 = Apple_Parsec_Siri_V2alpha_DisambiguationListItem.commands.getter();
        (*(v109 + 8))(v29, v30);
        v32 = *(v31 + 16);
        if (v32)
        {
          v110 = v27;
          v33 = v31 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
          v119 = *v121;
          v120 = *(v112 + 72);
          v34 = _swiftEmptyArrayStorage;
          do
          {
            v35 = v2[29];
            v36 = v2[27];
            v119(v2[20], v33, v2[18]);
            Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
            v37 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
            v39 = v38;
            v40 = *v4;
            (*v4)(v35, v36);

            v41 = HIBYTE(v39) & 0xF;
            if ((v39 & 0x2000000000000000) == 0)
            {
              v41 = v37 & 0xFFFFFFFFFFFFLL;
            }

            if (v41)
            {
              v43 = v2[31];
              v42 = v2[32];
              v44 = v2;
              v45 = v2[27];
              v46 = v34;
              v47 = v44[20];
              v48 = v44[18];
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
              v125 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
              v123 = v49;
              v40(v42, v45);
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
              v50 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
              v52 = v51;
              v40(v43, v45);
              v53 = v47;
              v34 = v46;
              (*v118)(v53, v48);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
              }

              v55 = v34[2];
              v54 = v34[3];
              if (v55 >= v54 >> 1)
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v34);
              }

              v34[2] = v55 + 1;
              v56 = &v34[4 * v55];
              v2 = v126;
              v56[4] = v125;
              v56[5] = v123;
              v56[6] = v50;
              v56[7] = v52;
              v4 = v127;
            }

            else
            {
              (*v118)(v2[20], v2[18]);
            }

            v33 += v120;
            --v32;
          }

          while (v32);

          v27 = v110;
          v23 = v108;
        }

        else
        {

          v34 = _swiftEmptyArrayStorage;
        }

        v57 = v2[26];
        v58 = v2[24];
        if (v34[2])
        {
          v60 = v34[4];
          v59 = v34[5];
          v61 = v34[6];
          v62 = v34[7];

          (*v113)(v57, v58);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
          }

          v64 = v27[2];
          v63 = v27[3];
          if (v64 >= v63 >> 1)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v27);
          }

          v27[2] = v64 + 1;
          v65 = &v27[4 * v64];
          v65[4] = v60;
          v65[5] = v59;
          v65[6] = v61;
          v65[7] = v62;
          v2 = v126;
        }

        else
        {
          (*v113)(v2[26], v2[24]);
        }

        v24 = v117;
      }

      else
      {
        (*v113)(v2[26], v2[24]);
      }

      if (++v24 == v23)
      {
        break;
      }

      v116(v2[26], v115 + v24 * v114, v2[24]);
    }
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  if (v27[2])
  {
    v86 = v27[4];
    v85 = v27[5];

    goto LABEL_65;
  }

LABEL_75:

LABEL_76:

  v107 = v2[1];

  return v107(0);
}

uint64_t RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {

    return _swift_task_switch(RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:), 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[41] = v3;
    *v3 = v2;
    v3[1] = RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:);
    v4 = v2[37];
    v5 = v2[36];

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v2 + 7, v5, v4);
  }
}

{
  v2 = *v1;
  *(v2 + 336) = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  if (v0)
  {
    v3 = RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:);
  }

  else
  {
    v3 = RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v1 = v0[1];

  return v1(1);
}

{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v1, v2, "RenderPegasusFlow: app not found publish failed", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(1);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v1, v2, "RenderPegasusFlow: app not found publish failed", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(1);
}

uint64_t closure #1 in closure #1 in RenderPegasusFlow.publishNoAppFoundOnCarPlayIfAppRestricted(delayedActions:disambiguationList:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - v8;
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
  v12 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
  v14 = v13;
  v15 = *(v3 + 8);
  v15(v11, v2);

  v17 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v17 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
    v18 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
    v20 = v19;
    v15(v9, v2);
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
    v21 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
    v23 = v22;
    result = (v15)(v6, v2);
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v23 = 0;
  }

  *a1 = v18;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v23;
  return result;
}

uint64_t RenderPegasusFlow.deinit()
{
  outlined destroy of PegasusExperience(v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking));

  return v0;
}

uint64_t RenderPegasusFlow.__deallocating_deinit()
{
  RenderPegasusFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance RenderPegasusFlow(uint64_t a1)
{
  v6 = (*(**v1 + 248) + **(**v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, &type metadata accessor for RREntity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, _ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, &type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR, &type metadata accessor for URLQueryItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI53Apple_Parsec_Siri_V2alpha_DisambiguationListComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI53Apple_Parsec_Siri_V2alpha_DisambiguationListComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ButtonViewComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_ButtonViewComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_SayItComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_SayItComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_CatDialogComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_CatDialogComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI21Searchfoundation_CardVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI21Searchfoundation_CardVGMR, &type metadata accessor for Searchfoundation_Card);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10PegasusAPI28Searchfoundation_CardSectionVGGMd, &_ss23_ContiguousArrayStorageCySay10PegasusAPI28Searchfoundation_CardSectionVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI28Searchfoundation_CardSectionVGMd, &_sSay10PegasusAPI28Searchfoundation_CardSectionVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_d9_V2alpha_dI8ResponseV0D11InstructionVtGMd, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_d9_V2alpha_dI8ResponseV0D11InstructionVtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS11displayName_SS8bundleIdtGMd, &_ss23_ContiguousArrayStorageCySS11displayName_SS8bundleIdtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11displayName_SS8bundleIdtMd, &_sSS11displayName_SS8bundleIdtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v66 = a8;
  v67 = a7;
  v58 = a6;
  v61 = a3;
  v63 = a1;
  v68 = a10;
  v69 = a11;
  v55 = a9;
  v56 = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  __chkstk_darwin(v18 - 8);
  v20 = &v52 - v19;
  v21 = type metadata accessor for ActivityType();
  v59 = *(v21 - 8);
  v60 = v21;
  __chkstk_darwin(v21);
  v57 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  __chkstk_darwin(v23 - 8);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PerformanceUtil.Ticket();
  v64 = *(v26 - 8);
  v65 = v26;
  v27 = __chkstk_darwin(v26);
  v62 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v53 = &v52 - v29;
  v71 = a13;
  v72 = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, v55, a13);
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_rrEntities) = _swiftEmptyArrayStorage;
  outlined init with copy of PegasusExperience(a1, a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience);
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse) = a2;
  outlined init with copy of OutputPublisherAsync(a3, a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher);
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_informationViewFactory) = a4;
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_renderComponentFlowFactory) = v56;
  v31 = OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger;
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger) = v58;
  v32 = v31;
  v55 = v31;
  v33 = a2;

  v54 = v25;
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v34 = *(a12 + v32);
  v35 = v59;
  v36 = v60;
  v37 = v57;
  (*(v59 + 104))(v57, enum case for ActivityType.start(_:), v60);
  v38 = enum case for SiriKitReliabilityCodes.normal(_:);
  v39 = type metadata accessor for SiriKitReliabilityCodes();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v20, v38, v39);
  (*(v40 + 56))(v20, 0, 1, v39);
  v41 = *(*v34 + 120);

  v41(v37, 0x6C7070615F746F6ELL, 0xEE00656C62616369, v20, 0xD000000000000018, 0x80000000000BDE10, 0x54746E6572727543, 0xEB000000006B7361);

  outlined destroy of Any?(v20, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(v35 + 8))(v37, v36);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v42 = v53;
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  Date.init()();
  v43 = v62;
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v44 = *(**(a12 + v55) + 152);

  v44(v45);

  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  __swift_destroy_boxed_opaque_existential_0Tm(v61);
  outlined destroy of PegasusExperience(v63);
  v46 = v65;
  v47 = *(v64 + 8);
  v47(v43, v65);
  v47(v42, v46);
  v48 = v67;
  *(a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pegasusPatternFlowFactory) = v66;
  outlined init with take of SiriSuggestionsBroker(v48, a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_aceServiceInvoker);
  outlined init with take of SiriSuggestionsBroker(&v70, a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking);
  v49 = (a12 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType);
  v50 = v69;
  *v49 = v68;
  v49[1] = v50;
  return a12;
}

uint64_t outlined init with copy of PegasusExperience(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PegasusExperience(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RenderPegasusFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for RenderPegasusFlow;
  if (!type metadata singleton initialization cache for RenderPegasusFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of PegasusExperience(uint64_t a1)
{
  v2 = type metadata accessor for PegasusExperience(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for RenderPegasusFlow(uint64_t a1)
{
  result = type metadata accessor for PegasusExperience(319);
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

void outlined consume of (displayName: String, bundleId: String)?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t lazy protocol witness table accessor for type RenderPegasusFlow and conformance RenderPegasusFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ErrorFlowFactory.__allocating_init(outputPublisher:informationViewFactory:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t ErrorFlowFactory.init(outputPublisher:informationViewFactory:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of SiriSuggestionsBroker(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t ErrorFlowFactory.makeErrorFlow(message:)(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = type metadata accessor for ActivityType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Date();
  __chkstk_darwin(v13 - 8);
  v35 = type metadata accessor for PerformanceUtil.Ticket();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.information);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "InformationFlowPlugin: making error flow", v19, 2u);
  }

  static SiriKitEventSender.current.getter();
  outlined init with take of SiriSuggestionsBroker(v39, v38);
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  (*(v8 + 104))(v12, enum case for ActivityType.failed(_:), v7);
  v20 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v21 = type metadata accessor for SiriKitReliabilityCodes();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v6, v20, v21);
  (*(v22 + 56))(v6, 0, 1, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Logging generic SELF FlowStep event", v25, 2u);
  }

  type metadata accessor for SiriKitEvent();
  (*(v8 + 16))(v30, v12, v7);
  outlined init with copy of SiriKitReliabilityCodes?(v6, v31);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_BCF80;
  *(v26 + 32) = xmmword_BCF90;
  *(v26 + 48) = v32;
  *(v26 + 56) = v33;

  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  dispatch thunk of SiriKitEventSending.send(_:)();

  outlined destroy of SiriKitReliabilityCodes?(v6);
  (*(v8 + 8))(v12, v7);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  outlined init with copy of OutputPublisherAsync(v36 + 16, v37);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v37[0] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v27 = Flow.eraseToAnyFlow()();
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  (*(v34 + 8))(v15, v35);

  return v27;
}

uint64_t closure #1 in ErrorFlowFactory.makeErrorFlow(message:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AceOutput();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for Date();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for PerformanceUtil.Ticket();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ErrorFlowFactory.makeErrorFlow(message:), 0, 0);
}

uint64_t closure #1 in ErrorFlowFactory.makeErrorFlow(message:)(uint64_t a1)
{
  v2 = v1[3];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v6 = (*(**(v2 + 56) + 136) + **(**(v2 + 56) + 136));
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = closure #1 in ErrorFlowFactory.makeErrorFlow(message:);
  v4 = v1[6];

  return v6(v4);
}