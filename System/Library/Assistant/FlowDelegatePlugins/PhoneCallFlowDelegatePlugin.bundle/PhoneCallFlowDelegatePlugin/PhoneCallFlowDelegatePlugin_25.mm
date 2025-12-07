uint64_t closure #2 in static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CATOption();
  __chkstk_darwin(v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v12 = IntentResolutionRecord.intent.getter();
  v13 = outlined bridged method (ob) of @objc INStartCallIntent.faceTimeLink.getter(v12);
  v15 = specialized Optional<A>.isNilOrEmpty.getter(v13, v14);

  if (!v15)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#PhoneCallFlowFactory Received FaceTime request and has FaceTimeLink set", v26, 2u);
    }

    v27 = IntentResolutionRecord.app.getter();
    v28 = IntentResolutionRecord.intent.getter();
    v29 = IntentResolutionRecord.intentResponse.getter();
    outlined init with copy of SignalProviding(a3, v41);
    type metadata accessor for StartCallCATsSimple(0);
    static CATOption.defaultMode.getter();
    v30 = CATWrapperSimple.__allocating_init(options:globals:)();
    v31 = type metadata accessor for FlowFinder();
    v32 = swift_allocObject();
    static SiriKitEventSender.current.getter();
    type metadata accessor for FaceTimeMessageControllerFlow();
    v33 = swift_allocObject();
    *(v33 + 112) = v31;
    *(v33 + 120) = &protocol witness table for FlowFinder;
    *(v33 + 88) = v32;
    *(v33 + 169) = 5;
    *(v33 + 16) = v27;
    *(v33 + 24) = v28;
    *(v33 + 32) = v29;
    outlined init with take of SPHConversation(v41, v33 + 40);
    *(v33 + 168) = 0;
    *(v33 + 80) = v30;
    outlined init with take of SPHConversation(&v40, v33 + 128);
    *&v41[0] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
    swift_allocObject();
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type FaceTimeMessageControllerFlow and conformance FaceTimeMessageControllerFlow, type metadata accessor for FaceTimeMessageControllerFlow);
    *&v41[0] = AnyConfirmIntentFlow.init<A>(_:)();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyConfirmIntentFlow<INStartCallIntent> and conformance AnyConfirmIntentFlow<A>, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
    v22 = Flow.eraseToAnyValueFlow()();
    goto LABEL_14;
  }

  if (a4)
  {
    v16 = one-time initialization token for siriPhone;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#PhoneCallFlowFactory using default confirmIntentFlowCompletion", v20, 2u);
    }

    v21 = a4(a6, a2);
    if (!v21)
    {
      outlined consume of (@escaping @callee_guaranteed (@guaranteed RCHChildFlowFactory<INStartCallIntent, INStartCallIntentResponse>, @in_guaranteed IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>) -> (@owned AnyValueFlow<PromptResult<ConfirmIntentAnswer<INStartCallIntent>>>?))?(a4, a5);
      return 0;
    }

    *&v41[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallI0CGGGMd, &_s11SiriKitFlow08AnyValueC0CyAA12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallI0CGGGMR);
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyValueFlow<PromptResult<ConfirmIntentAnswer<INStartCallIntent>>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallI0CGGGMd, &_s11SiriKitFlow08AnyValueC0CyAA12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallI0CGGGMR);
    v22 = Flow.eraseToAnyValueFlow()();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed RCHChildFlowFactory<INStartCallIntent, INStartCallIntentResponse>, @in_guaranteed IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>) -> (@owned AnyValueFlow<PromptResult<ConfirmIntentAnswer<INStartCallIntent>>>?))?(a4, a5);
LABEL_14:

    return v22;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.siriPhone);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v41[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x800000000045E570, v41);
    _os_log_impl(&dword_0, v36, v37, "%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  type metadata accessor for CATOption();
  v4[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:), 0, 0);
}

uint64_t closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v14 = *(v0 + 104);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntentResponse, INAddCallParticipantIntentResponse_ptr);

  v6 = v5;
  v7 = v4;
  IntentResolutionRecord.init(app:intent:intentResponse:)();
  outlined init with copy of SignalProviding(v3, v0 + 16);
  v8 = type metadata accessor for AddCallParticipantCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow(0);
  OUTLINED_FUNCTION_12_8();
  v10 = swift_allocObject();
  v11 = (v10 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns);
  v11[3] = v8;
  v11[4] = &protocol witness table for AddCallParticipantCATPatternsExecutor;
  *v11 = v9;
  (*(v2 + 32))(v10 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_rchRecord, v1, v14);
  outlined init with take of SPHConversation((v0 + 16), v10 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals);
  *(v0 + 56) = v10;
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow, type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow);
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_64();

  v12 = *(v0 + 8);

  return v12(v0 + 56);
}

uint64_t closure #2 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CATOption();
  __chkstk_darwin(v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMR);
  v9 = ParameterResolutionRecord.result.getter();
  v10 = [v9 unsupportedReason];

  if ((v10 - 5) > 1)
  {
    if (specialized ParameterResolutionRecord<>.isUnsetRelationship.getter())
    {
      outlined init with copy of SignalProviding(a3, &v19);
      [objc_allocWithZone(CNContactStore) init];
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
      v18 = swift_allocObject();
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      type metadata accessor for UnsetRelationshipTemplatesWrapper();
      swift_allocObject();
      type metadata accessor for PhoneCallDisplayTextCATs(0);
      static CATOption.defaultMode.getter();
      CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for PhoneCallCommonCATs(0);
      static CATOption.defaultMode.getter();
      CATWrapper.__allocating_init(options:globals:)();
      _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm();
      v13 = &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMd;
      v14 = &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMR);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntentResponse, INAddCallParticipantIntentResponse_ptr);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsetRelationshipFlowStrategy<INAddCallParticipantIntent> and conformance ContactUnsetRelationshipFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMR);
      v15 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
    }

    else
    {
      outlined init with copy of SignalProviding(a3, v20 + 8);
      *&v20[0] = a4;

      v13 = &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMd;
      v14 = &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMd, &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMR);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsupportedFlowStrategy<ParticipantOutputProvider> and conformance ContactUnsupportedFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMd, &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMR);
      v15 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    }

    v12 = v15;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, v13, v14);
  }

  else
  {
    outlined init with copy of SignalProviding(a3, v20);
    v11 = swift_allocObject();
    outlined init with take of SPHConversation(v20, v11 + 16);
    v12 = partial apply for specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:);
  }

  v16 = v12(a1, a2);

  return v16;
}

uint64_t specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (specialized Sequence<>.contains(_:)(a6, a9))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_65_0();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#PhoneCallFlowFactory makeAppResolutionFlowBeforeNextResolveFlowProducer: resolutionResultCode is needsDisambiguation or needsConfirmation, don't start app resolution again", v19, 2u);
      OUTLINED_FUNCTION_26_0(v19);
    }

    return 0;
  }

  else
  {
    v36 = a4;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);

    v21 = a3;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v35 = a8;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v38[0] = v25;
      *v24 = 136315906;
      *&v37[0] = a2;
      type metadata accessor for App();
      lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v38);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = a6;
      *(v24 + 22) = 2080;
      v29 = INIntent.debugDescriptionLite.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v38);

      *(v24 + 24) = v31;
      *(v24 + 32) = 2080;
      *(v24 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, a5, v38);
      _os_log_impl(&dword_0, v22, v23, "#PhoneCallFlowFactory makeAppResolutionFlowBeforeNextResolveFlowProducer: app:%s resolutionResultCode:%ld intent:%s parameterName: %s ", v24, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v25);
      v32 = v24;
      a8 = v35;
      OUTLINED_FUNCTION_26_0(v32);
    }

    outlined init with copy of SignalProviding(a8, v38);
    default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v37);
    type metadata accessor for AppResolutionBeforeResolveFlow(0);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    *&v38[0] = AppResolutionBeforeResolveFlow.init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(v21, a7, v38, v37);
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow, type metadata accessor for AppResolutionBeforeResolveFlow);
    v33 = v21;

    Flow.eraseToAnyValueFlow()();
    OUTLINED_FUNCTION_48_16();
  }

  return a7;
}

uint64_t closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (specialized Sequence<>.contains(_:)(a6, &outlined read-only object #0 of closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#PhoneCallFlowFactory makeAppResolutionFlowBeforeNextResolveFlowProducer: resolutionResultCode is needsDisambiguation or needsConfirmation, don't start app resolution again", v18, 2u);
    }

    return 0;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);

    v21 = a3;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v33 = a8;
      v24 = swift_slowAlloc();
      *&v35[0] = swift_slowAlloc();
      *v24 = 136315906;
      *&v34[0] = a2;
      type metadata accessor for App();
      lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v35);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2048;
      *(v24 + 14) = a6;
      *(v24 + 22) = 2080;
      v28 = INIntent.debugDescriptionLite.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v35);

      *(v24 + 24) = v30;
      *(v24 + 32) = 2080;
      *(v24 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v35);
      _os_log_impl(&dword_0, v22, v23, "#PhoneCallFlowFactory makeAppResolutionFlowBeforeNextResolveFlowProducer: app:%s resolutionResultCode:%ld intent:%s parameterName: %s ", v24, 0x2Au);
      swift_arrayDestroy();

      a8 = v33;
    }

    outlined init with copy of SignalProviding(a8, v35);
    default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v34);
    type metadata accessor for AppResolutionBeforeResolveFlow(0);
    swift_allocObject();
    *&v35[0] = AppResolutionBeforeResolveFlow.init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(v21, a7, v35, v34);
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow, type metadata accessor for AppResolutionBeforeResolveFlow);
    v31 = v21;

    v19 = Flow.eraseToAnyValueFlow()();
  }

  return v19;
}

uint64_t outlined bridged method (ob) of @objc PBCodable.dictionaryRepresentation()(void *a1)
{
  v2 = [a1 dictionaryRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INStartCallIntent.faceTimeLink.getter(void *a1)
{
  v2 = [a1 faceTimeLink];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13[3] = &type metadata for BiomeEventSender;
  v13[4] = &protocol witness table for BiomeEventSender;
  v13[0] = a3;
  outlined init with copy of SignalProviding(a1, a4 + *a5);
  *(a4 + *a6) = a2;
  outlined init with copy of SignalProviding(v13, a4 + *a7);
  BaseRCHFlowDelegate.init()();
  v11 = OUTLINED_FUNCTION_48_16();
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return a7;
}

void _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo08INAnswerB6IntentC_So08INAnswerB14IntentResponseCTt3g5Tf4ennn_nAA06AnswerbtU0V_Tg5()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v59 = v0;
  v3 = v2;
  v67 = v4;
  v6 = v5;
  v7 = type metadata accessor for CATOption();
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_94_5();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo18INAnswerCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo18INAnswerCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v65 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_16_2();
  v64 = v11;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v12);
  v62 = &v58 - v13;
  v82[3] = &type metadata for AnswerCallOutputStrategy;
  v82[4] = &protocol witness table for AnswerCallOutputStrategy;
  v82[0] = swift_allocObject();
  outlined init with copy of AnswerCallOutputStrategy(v6, v82[0] + 16);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
  v63 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntentResponse, INAnswerCallIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  v66 = v3;
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(v1, &v79);
  v14 = type metadata accessor for PhoneCallCommonCATs(0);
  OUTLINED_FUNCTION_47_5(v14);
  OUTLINED_FUNCTION_38_2();
  v60 = CATWrapper.__allocating_init(options:globals:)();
  v58 = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_38_2();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v16 = type metadata accessor for AppInfoBuilder();
  v17 = OUTLINED_FUNCTION_79(v16);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INAnswerB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INAnswerB6IntentCSo0hbI8ResponseCGMR);
  v18 = swift_allocObject();
  v77 = v17;
  v78 = v15;
  v75 = &type metadata for LabelTemplatesProvider;
  v76 = &protocol witness table for LabelTemplatesProvider;
  OUTLINED_FUNCTION_68_0();
  v19 = swift_allocObject();
  *&v74 = v19;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  v73[3] = &type metadata for TCCTemplatesProvider;
  v73[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(&v79, v18 + 272);
  outlined init with copy of SignalProviding(&v74, v18 + 192);
  outlined init with copy of SignalProviding(v73, v18 + 232);
  v20 = v80;
  v21 = v81;
  OUTLINED_FUNCTION_28_0(&v79, v80);
  v22 = *(v21 + 136);

  v22(v70, v20, v21);
  v23 = v71;
  v24 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v25 = v81;
  __swift_project_boxed_opaque_existential_1(&v79, v80);
  v26 = OUTLINED_FUNCTION_19_7();
  v27(v26, v25);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_4();
  v30 = OUTLINED_FUNCTION_65_10(v29);
  v31 = v59;
  v32(v30);
  v33 = v17;
  v34 = v62;
  v35 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v60, &v78, v33, &v77, v69, v18, v23, v58, v16, *(v24 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder);

  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  *&v79 = v35;
  OUTLINED_FUNCTION_27_21();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v36, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INAnswerB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INAnswerB6IntentCSo0hbI8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  OUTLINED_FUNCTION_72();
  v37 = v34;
  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  outlined init with copy of SignalProviding(v82, &v79);
  outlined init with copy of SignalProviding(v31, &v74);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v38 = static CallStateNotificationManager.instance;
  v39 = OUTLINED_FUNCTION_69_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  v41 = swift_allocObject();
  v41[10] = type metadata accessor for CallStateNotificationManager();
  v41[11] = &protocol witness table for CallStateNotificationManager;
  v41[7] = v38;
  v41[20] = &type metadata for AudioSessionManager;
  v41[21] = &protocol witness table for AudioSessionManager;
  v41[25] = &type metadata for SpringBoardServicesManager;
  v41[26] = &protocol witness table for SpringBoardServicesManager;
  outlined init with take of SPHConversation(&v79, (v41 + 2));
  outlined init with take of SPHConversation(&v74, (v41 + 12));
  *&v79 = v41;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallActionHandleIntentFlowStrategy<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance IncomingCallActionHandleIntentFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo08INAnswerbI0CSo0kbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo08INAnswerbI0CSo0kbI8ResponseCGMR);

  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_29_18();

  OUTLINED_FUNCTION_43_3();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v42 = OUTLINED_FUNCTION_43_3();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  *&v79 = OUTLINED_FUNCTION_79(v44);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallActionContinueInAppStrategy<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance IncomingCallActionContinueInAppStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo08INAnswerB6IntentCSo0lbM8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo08INAnswerB6IntentCSo0lbM8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  OUTLINED_FUNCTION_29_18();

  OUTLINED_FUNCTION_43_3();
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  outlined init with copy of SignalProviding(v31, &v79);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo08INAnswerbF0CSo0ibF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo08INAnswerbF0CSo0ibF8ResponseCGMR);
  OUTLINED_FUNCTION_102_0();
  v45 = swift_allocObject();
  outlined init with take of SPHConversation(&v79, v45 + 16);
  v46 = v66;
  *(v45 + 56) = v66;
  v47 = v31[3];
  v48 = v31[4];
  OUTLINED_FUNCTION_28_0(v31, v47);
  v49 = *(v48 + 104);

  v49(&v79, v47, v48);
  v50 = v81;
  v61 = v80;
  v60 = __swift_project_boxed_opaque_existential_1(&v79, v80);
  *&v74 = v45;
  v51 = v65;
  v52 = OUTLINED_FUNCTION_69_8();
  v53(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo18INAnswerCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo18INAnswerCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  v54 = RCHChildFlowFactory.init(producers:)();
  v55 = *(v50 + 8);
  OUTLINED_FUNCTION_24_25();
  v57 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v56, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo08INAnswerbF0CSo0ibF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo08INAnswerbF0CSo0ibF8ResponseCGMR);
  v55(&v74, v54, v46, v67, v63, v57, v61, v50);
  OUTLINED_FUNCTION_19_7();

  (*(v51 + 8))(v37, v68);

  __swift_destroy_boxed_opaque_existential_1(&v79);
  __swift_destroy_boxed_opaque_existential_1(v82);
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo08INAnswerB6IntentC_So0xbY8ResponseCTt3g5Tf4nnen_nAA06AnswerbtU0V_Tg5()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v19 - v12);
  v22[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INAnswerCallIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INAnswerCallIntentCSo0hiJ8ResponseCGGMR);
  OUTLINED_FUNCTION_3_68();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v14, v15, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INAnswerCallIntentCSo0hiJ8ResponseCGGMR);
  *v13 = Flow.eraseToAnyValueFlow()();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(v1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  OUTLINED_FUNCTION_12_8();
  v16 = swift_allocObject();
  v21[3] = &type metadata for AnswerCallOutputStrategy;
  v21[4] = &protocol witness table for AnswerCallOutputStrategy;
  v21[0] = swift_allocObject();
  memcpy((v21[0] + 16), v3, 0xB0uLL);
  OUTLINED_FUNCTION_2_0();
  outlined init with copy of SignalProviding(v21, v16 + *(v17 + 288));
  OUTLINED_FUNCTION_2_0();
  *(v16 + *(v18 + 296)) = v5;
  outlined init with copy of ButtonConfigurationModel?(v13, v10, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  outlined init with copy of SignalProviding(v22, v20);
  specialized PhoneFlow.init(state:sharedGlobals:)(v10, v20);
  OUTLINED_FUNCTION_48_16();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v22);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_65();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo010INIdentifyH12CallerIntentC_So010INIdentifyH20CallerIntentResponseCTt3g5Tf4ennn_nAA08Identifyh6CallertU0V_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v62 = a2;
  v7 = type metadata accessor for CATOption();
  __chkstk_darwin(v7 - 8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v53 - v10;
  v77[3] = &type metadata for IdentifyIncomingCallerOutputStrategy;
  v77[4] = &protocol witness table for IdentifyIncomingCallerOutputStrategy;
  v77[0] = swift_allocObject();
  outlined init with copy of IdentifyIncomingCallerOutputStrategy(a1, v77[0] + 16);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
  v58 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntentResponse, INIdentifyIncomingCallerIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  v61 = a3;
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(a4, &v74);
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v55 = CATWrapper.__allocating_init(options:globals:)();
  v53 = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  v12 = type metadata accessor for AppInfoBuilder();
  v13 = swift_allocObject();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGMR);
  v14 = swift_allocObject();
  v72 = v13;
  v73 = v11;
  v70 = &type metadata for LabelTemplatesProvider;
  v71 = &protocol witness table for LabelTemplatesProvider;
  v15 = swift_allocObject();
  *&v69 = v15;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  v68[3] = &type metadata for TCCTemplatesProvider;
  v68[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(&v74, v14 + 272);
  outlined init with copy of SignalProviding(&v69, v14 + 192);
  outlined init with copy of SignalProviding(v68, v14 + 232);
  v16 = v75;
  v17 = v76;
  __swift_project_boxed_opaque_existential_1(&v74, v75);
  v18 = *(v17 + 136);

  v18(v65, v16, v17);
  v19 = v66;
  v20 = v67;
  v21 = __swift_project_boxed_opaque_existential_1(v65, v66);
  v22 = v75;
  v23 = v76;
  __swift_project_boxed_opaque_existential_1(&v74, v75);
  v24 = v22;
  v25 = v63;
  v26 = (*(v23 + 8))(v64, v24, v23);
  v27 = __chkstk_darwin(v26);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v21;
  v32 = v54;
  (*(v30 + 16))(v29, v31, v19, v27);
  v33 = v29;
  v34 = v57;
  v35 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v55, &v73, v33, &v72, v64, v14, v19, v53, v12, *(v20 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder);

  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(&v69);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  *&v74 = v35;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneTCCFlowStrategy<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneTCCFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  v36 = v34;
  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  outlined init with copy of SignalProviding(v77, &v74);
  outlined init with copy of SignalProviding(v32, &v69);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v37 = static CallStateNotificationManager.instance;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo010INIdentifyf6CallerI0CSo0kflI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo010INIdentifyf6CallerI0CSo0kflI8ResponseCGMR);
  v38 = swift_allocObject();
  v38[10] = type metadata accessor for CallStateNotificationManager();
  v38[11] = &protocol witness table for CallStateNotificationManager;
  v38[7] = v37;
  v38[20] = &type metadata for AudioSessionManager;
  v38[21] = &protocol witness table for AudioSessionManager;
  v38[25] = &type metadata for SpringBoardServicesManager;
  v38[26] = &protocol witness table for SpringBoardServicesManager;
  outlined init with take of SPHConversation(&v74, (v38 + 2));
  outlined init with take of SPHConversation(&v69, (v38 + 12));
  *&v74 = v38;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallActionHandleIntentFlowStrategy<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallActionHandleIntentFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo010INIdentifyf6CallerI0CSo0kflI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo010INIdentifyf6CallerI0CSo0kflI8ResponseCGMR);

  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  v39 = v36;
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo010INIdentifyF12CallerIntentCSo0lfmN8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo010INIdentifyF12CallerIntentCSo0lfmN8ResponseCGMR);
  *&v74 = swift_allocObject();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallActionContinueInAppStrategy<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallActionContinueInAppStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo010INIdentifyF12CallerIntentCSo0lfmN8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo010INIdentifyF12CallerIntentCSo0lfmN8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  outlined init with copy of SignalProviding(v32, &v74);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo024INIdentifyIncomingCallerF0CSo0ijkF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo024INIdentifyIncomingCallerF0CSo0ijkF8ResponseCGMR);
  v40 = swift_allocObject();
  outlined init with take of SPHConversation(&v74, v40 + 16);
  v41 = v61;
  *(v40 + 56) = v61;
  v42 = v25;
  v43 = v32[3];
  v44 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v43);
  v45 = *(v44 + 104);

  v45(&v74, v43, v44);
  v46 = v76;
  v56 = v75;
  v55 = __swift_project_boxed_opaque_existential_1(&v74, v75);
  *&v69 = v40;
  v47 = v60;
  (*(v60 + 16))(v59, v39, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo30INIdentifyIncomingCallerIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo30INIdentifyIncomingCallerIntentCSo0fghI8ResponseCGMR);
  swift_allocObject();
  v48 = RCHChildFlowFactory.init(producers:)();
  v49 = *(v46 + 8);
  v50 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneIntentRCHFlowStrategy<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneIntentRCHFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo024INIdentifyIncomingCallerF0CSo0ijkF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo024INIdentifyIncomingCallerF0CSo0ijkF8ResponseCGMR);
  v51 = v49(&v69, v48, v41, v62, v58, v50, v56, v46);

  (*(v47 + 8))(v39, v63);

  __swift_destroy_boxed_opaque_existential_1(&v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return v51;
}

void *_s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo010INIdentifyF12CallerIntentC_So0xfyZ8ResponseCTt3g5Tf4nnen_nAA08IdentifyfytU0V_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v19 - v12);
  v22[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGGMR);
  *v13 = Flow.eraseToAnyValueFlow()();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a4, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMR);
  v14 = swift_allocObject();
  v21[3] = &type metadata for IdentifyIncomingCallerOutputStrategy;
  v21[4] = &protocol witness table for IdentifyIncomingCallerOutputStrategy;
  v15 = swift_allocObject();
  v21[0] = v15;
  v16 = *(a3 + 16);
  *(v15 + 16) = *a3;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a3 + 32);
  *(v15 + 64) = *(a3 + 48);
  outlined init with copy of SignalProviding(v21, v14 + *(*v14 + 288));
  *(v14 + *(*v14 + 296)) = a2;
  outlined init with copy of ButtonConfigurationModel?(v13, v10, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  outlined init with copy of SignalProviding(v22, v20);
  v17 = specialized PhoneFlow.init(state:sharedGlobals:)(v10, v20);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v22);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v17;
}

uint64_t partial apply for closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:);

  return closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(a1, a2, v6, v2 + 24);
}

uint64_t partial apply for closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t type metadata completion function for PhoneCallFlowFactory.PhoneRCHFlowProducers(uint64_t a1)
{
  result = type metadata accessor for RCHChildFlowProducers();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RCHChildFlowProducersAsync();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  return specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(a1, a2, a3, a4, a5, a6, *(v6 + 16), v6 + 24, &outlined read-only object #0 of specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:));
}

{
  return specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(a1, a2, a3, a4, a5, a6, *(v6 + 16), v6 + 24, &outlined read-only object #0 of specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:));
}

{
  return specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(a1, a2, a3, a4, a5, a6, *(v6 + 16), v6 + 24, &outlined read-only object #0 of specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:));
}

uint64_t partial apply for specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, v2);
}

{
  return specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, v2);
}

{
  return specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_47_17()
{
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_53_16()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_74_5()
{
  v3 = *(v0 + 200);
  *(v1 + 16) = v3;
  v4 = v3 + *(v0 + 184);

  return outlined init with copy of SignalProviding(v4, v1 + 24);
}

uint64_t OUTLINED_FUNCTION_77_8(uint64_t a1)
{

  return static DialogPhase.completion.getter();
}

uint64_t OUTLINED_FUNCTION_78_7()
{

  return outlined init with copy of SignalProviding(v1 - 248, v0 + 328);
}

uint64_t OUTLINED_FUNCTION_79_5()
{

  return outlined init with copy of SignalProviding(v1 - 168, v0 + 448);
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return outlined init with copy of SignalProviding(v1 - 208, v0 + 408);
}

uint64_t OUTLINED_FUNCTION_81_4(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 200);
  *(a1 + 24) = *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_84_5(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;

  return type metadata accessor for DialogPhase();
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_86_5()
{
}

uint64_t OUTLINED_FUNCTION_88_4()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_97_2()
{
  *(v1 + 176) = *(v0 + 128);

  return outlined init with copy of SignalProviding(v0 + 288, v1 + 184);
}

uint64_t OUTLINED_FUNCTION_99_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_100_3(uint64_t a1)
{
  *(a1 + 16) = v1;

  return outlined init with take of SPHConversation((v2 - 128), a1 + 24);
}

uint64_t OUTLINED_FUNCTION_101_2()
{

  return RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_105_3()
{

  return outlined init with copy of SignalProviding(v0 + 368, v1 + 224);
}

uint64_t OUTLINED_FUNCTION_107_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_108_2(uint64_t a1)
{
  *(v1 + 136) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1)
{
  *(v1 + 144) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_111_3(uint64_t a1)
{
  *(v1 + 160) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_112_3()
{

  return outlined init with copy of SignalProviding(v0, v1 - 128);
}

uint64_t PhoneCallFlowState.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RCHFlowResult();
  OUTLINED_FUNCTION_9_1();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Input();
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9_1();
  v17 = __chkstk_darwin(v16);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v2, a1, v17);
  v21 = 0x6C616974696E692ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v28 = *(v19 + *(v27 + 48));
      v29 = *(v27 + 64);
      v30 = OUTLINED_FUNCTION_3_69();
      v31(v30);
      outlined init with take of PhoneCallFeatureFlagProviding((v19 + v29), &v46);
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      OUTLINED_FUNCTION_5_12(".runIntentConversion(");
      v43 = v28;
      type metadata accessor for App();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v32);

      v33._countAndFlagsBits = 8236;
      v33._object = 0xE200000000000000;
      String.append(_:)(v33);
      OUTLINED_FUNCTION_0_79();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(v34, v35, &protocol conformance descriptor for Input);
      v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v36);

      v37._countAndFlagsBits = 8236;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pMd, &_s11SiriKitFlow11DeviceState_pMR);
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_6_5();

      v21 = v44;
      __swift_destroy_boxed_opaque_existential_1(&v46);
      goto LABEL_5;
    case 2u:
      v38 = *v19;
      v46 = 0;
      v47 = 0xE000000000000000;
      v39._countAndFlagsBits = 0x284843526E75722ELL;
      v39._object = 0xE800000000000000;
      String.append(_:)(v39);
      v44 = v38;
      type metadata accessor for AnyValueFlow();
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      goto LABEL_9;
    case 3u:
      (*(v6 + 32))(v9, v19, v4);
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(24);
      OUTLINED_FUNCTION_5_12(".offerFollowUpAction(");
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      OUTLINED_FUNCTION_6_5();
      v21 = v46;
      (*(v6 + 8))(v9, v4);
      return v21;
    case 4u:
      v40 = *v19;
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(16);
      v41._countAndFlagsBits = 0x6F707075736E752ELL;
      v41._object = 0xED00002864657472;
      String.append(_:)(v41);
      v44 = v40;
      type metadata accessor for SimpleOutputFlowAsync();
      _print_unlocked<A, B>(_:_:)();
LABEL_9:
      OUTLINED_FUNCTION_6_5();

      v21 = v46;
      break;
    case 5u:
      return v21;
    case 6u:
      v21 = 0x7373696D7369642ELL;
      break;
    case 7u:
      v21 = 0x706F74732ELL;
      break;
    default:
      v22 = OUTLINED_FUNCTION_3_69();
      v23(v22);
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(21);

      v46 = 0xD000000000000012;
      v47 = 0x80000000004572D0;
      OUTLINED_FUNCTION_0_79();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(v24, v25, &protocol conformance descriptor for Input);
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      OUTLINED_FUNCTION_6_5();
      v21 = v46;
LABEL_5:
      (*(v12 + 8))(v15, v10);
      break;
  }

  return v21;
}

void type metadata completion function for PhoneCallFlowState(uint64_t a1)
{
  type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (Input, App, DeviceState)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RCHFlowResult();
      v4 = v3;
      type metadata accessor for AnyValueFlow();
      if (v5 <= 0x3F && v4 <= 0x3F)
      {
        type metadata accessor for SimpleOutputFlowAsync();
        if (v6 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (Input, App, DeviceState)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Input, App, DeviceState))
  {
    type metadata accessor for Input();
    type metadata accessor for App();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow11DeviceState_pMd, &_s11SiriKitFlow11DeviceState_pMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Input, App, DeviceState));
    }
  }
}

uint64_t key path setter for PhoneCallGroup.Builder.groupName : PhoneCallGroup.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 104))(v6);
}

uint64_t outlined init with copy of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for PhoneCallGroup.Builder.groupId : PhoneCallGroup.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 128))(v6);
}

uint64_t PhoneCallGroup.Builder.groupName.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of SpeakableString?(v2 + v4, a2);
}

uint64_t PhoneCallGroup.Builder.groupName.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_17_3(v2 + *a2, v6);
  outlined assign with take of SpeakableString?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t PhoneCallGroup.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  return v0;
}

uint64_t PhoneCallGroup.Builder.init()()
{
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  return v0;
}

uint64_t PhoneCallGroup.Builder.__allocating_init(groupName:groupId:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_7();
  v4 = swift_allocObject();
  PhoneCallGroup.Builder.init(groupName:groupId:)(a1, a2);
  return v4;
}

uint64_t PhoneCallGroup.Builder.init(groupName:groupId:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v27[-v7 - 8];
  v9 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupName;
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupId;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  v18 = *(*(v10 - 8) + 32);
  v18(v8, a1, v10);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v10);
  OUTLINED_FUNCTION_17_3(v2 + v9, v27);
  outlined assign with take of SpeakableString?(v8, v2 + v9);
  swift_endAccess();
  v18(v8, a2, v10);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v10);
  OUTLINED_FUNCTION_17_3(v2 + v14, v27);
  outlined assign with take of SpeakableString?(v8, v2 + v14);
  swift_endAccess();
  return v2;
}

uint64_t PhoneCallGroup.Builder.withGroupName(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 104))(v0);
}

uint64_t PhoneCallGroup.Builder.withGroupName(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 104))(v0);
}

uint64_t PhoneCallGroup.Builder.withGroupId(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 128))(v0);
}

uint64_t PhoneCallGroup.Builder.withGroupId(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 128))(v0);
}

uint64_t PhoneCallGroup.Builder.build()()
{
  type metadata accessor for PhoneCallGroup(0);
  v0 = swift_allocObject();

  PhoneCallGroup.init(builder:)(v1);
  return v0;
}

uint64_t PhoneCallGroup.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallGroup.init(builder:)(a1);
  return v2;
}

uint64_t PhoneCallGroup.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupId);
  return v0;
}

uint64_t PhoneCallGroup.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupId);

  return swift_deallocClassInstance();
}

uint64_t key path setter for PhoneCallGroup.mockGlobals : PhoneCallGroup(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

const char **PhoneCallGroup.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  v6 = __chkstk_darwin(v5);
  v8 = v17 - v7;
  v1[2] = 0;
  (*(*a1 + 96))(v6);
  v9 = outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName);
  (*(*a1 + 120))(v9);
  v10 = outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId);
  if (((*(*v1 + 19))(v10) & 1) == 0)
  {
    v11 = static Log.siriDialogEngine.getter();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_424FD0;
    v17[1] = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB5GroupCmMd, &_s27PhoneCallFlowDelegatePlugin0aB5GroupCmMR);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:type:_:)("Building an instance of %s without all required inputs", v17[0]);
  }

  return v2;
}

uint64_t PhoneCallGroup.__allocating_init(groupName:groupId:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhoneCallGroup.Builder(0);
  swift_allocObject();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  PhoneCallGroup.Builder.withGroupName(_:)();

  OUTLINED_FUNCTION_2_0();
  v13 = (*(v12 + 176))(a2);

  v14 = (*(v2 + 144))(v13);
  outlined destroy of SpeakableString?(a2);
  outlined destroy of SpeakableString?(a1);
  return v14;
}

Swift::Bool __swiftcall PhoneCallGroup.allRequiredInputsHaveValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName, &v13 - v7);
  v9 = type metadata accessor for SpeakableString();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  outlined destroy of SpeakableString?(v8);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId, v5);
  v11 = __swift_getEnumTagSinglePayload(v5, 1, v9) != 1;
  outlined destroy of SpeakableString?(v5);
  return v11;
}

uint64_t PhoneCallGroup.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName, v14);
    v16 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
    {
      v17 = v14;
LABEL_8:
      result = outlined destroy of SpeakableString?(v17);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v16 - 8) + 32))(boxed_opaque_existential_1, v14, v16);
  }

  else
  {
    if (a1 != 0x644970756F7267 || a2 != 0xE700000000000000)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId, v11);
    v21 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v11, 1, v21) == 1)
    {
      v17 = v11;
      goto LABEL_8;
    }

    *(a3 + 24) = v21;
    v22 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v21 - 8) + 32))(v22, v11, v21);
  }
}

uint64_t PhoneCallGroup.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallGroup.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t PhoneCallGroup.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x644970756F7267;
  }

  else
  {
    return 0x6D614E70756F7267;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallGroup::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallGroup.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallGroup::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallGroup.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallGroup.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallGroup.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallGroup::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhoneCallGroup.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallGroup::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallGroup.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallGroup.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId);
  return v0;
}

uint64_t PhoneCallGroup.__deallocating_deinit()
{
  PhoneCallGroup.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE5GroupC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE5GroupC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName;
  v17 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_80();
  lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(v12, v13, &protocol conformance descriptor for SpeakableString);
  OUTLINED_FUNCTION_11_9(v3 + v11, &v17);
  if (!v2)
  {
    v16 = 1;
    OUTLINED_FUNCTION_11_9(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys);
  }

  return result;
}

uint64_t PhoneCallGroup.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallGroup.init(from:)(a1);
  return v2;
}

id *PhoneCallGroup.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v22 = v21 - v10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE5GroupC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE5GroupC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v12 = v11;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneCallGroup(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21[1] = v12;
    v14 = type metadata accessor for SpeakableString();
    v25 = 0;
    OUTLINED_FUNCTION_0_80();
    lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(v15, v16, &protocol conformance descriptor for SpeakableString);
    v17 = v22;
    OUTLINED_FUNCTION_17_32(v14, &v25, v23);
    outlined init with take of SpeakableString?(v17, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName);
    v24 = 1;
    OUTLINED_FUNCTION_17_32(v14, &v24, v23);
    v19 = OUTLINED_FUNCTION_1_79();
    v20(v19);
    outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallGroup(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 136))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallGroup@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneCallGroup(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for SpeakableString?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SpeakableString?)
  {
    type metadata accessor for SpeakableString();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SpeakableString?);
    }
  }
}

void type metadata completion function for PhoneCallGroup.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneCallGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void specialized SiriPhoneContact.asSiriInferenceContact.getter()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, &_s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = v95 - v6;
  v8 = type metadata accessor for ContactHandle.HandleType();
  OUTLINED_FUNCTION_7();
  v104 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v103 = v11 - v12;
  __chkstk_darwin(v13);
  v15 = v95 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_21(v16);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  v19 = v95 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  OUTLINED_FUNCTION_21(v20);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v21);
  ContactQuery.init()();
  specialized SiriPhoneContact.getFullName(filteredAlternatives:)();
  if (v22)
  {
    ContactQuery.fullName.setter();
  }

  specialized SiriPhoneContact.getPrefixName()();
  if (v23)
  {
    ContactQuery.namePrefix.setter();
  }

  specialized SiriPhoneContact.getFirstName(filteredAlternatives:)();
  if (v24)
  {
    ContactQuery.givenName.setter();
  }

  specialized SiriPhoneContact.getMiddleName(filteredAlternatives:)();
  if (v25)
  {
    ContactQuery.middleName.setter();
  }

  specialized SiriPhoneContact.getLastName(filteredAlternatives:)();
  if (v26)
  {
    ContactQuery.familyName.setter();
  }

  specialized SiriPhoneContact.getPostfixName()();
  if (v27)
  {
    ContactQuery.nameSuffix.setter();
  }

  v105 = v8;
  specialized SiriPhoneContact.getNickName()();
  if (v28)
  {
    ContactQuery.nickname.setter();
  }

  OUTLINED_FUNCTION_26_5();
  (*(v29 + 376))();
  if (v30)
  {
    v31 = type metadata accessor for ContactQuery();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v31);
    ContactRelationshipQuery.init(label:fromContact:)();
    type metadata accessor for ContactRelationshipQuery();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    ContactQuery.relationship.setter();
  }

  OUTLINED_FUNCTION_26_5();
  (*(v36 + 328))();
  if (v37)
  {
    ContactQuery.organizationName.setter();
  }

  v102 = v15;
  OUTLINED_FUNCTION_26_5();
  v39 = (*(v38 + 280))();
  v40 = v104;
  if (v39)
  {
    ContactQuery.isMe.setter();
  }

  OUTLINED_FUNCTION_26_5();
  (*(v41 + 256))();
  if (v42)
  {
    ContactQuery.givenName.getter();
    OUTLINED_FUNCTION_34_12();

    OUTLINED_FUNCTION_16_37();
    if (v43 || (ContactQuery.middleName.getter(), OUTLINED_FUNCTION_34_12(), , OUTLINED_FUNCTION_16_37(), v44) || (ContactQuery.familyName.getter(), OUTLINED_FUNCTION_34_12(), , OUTLINED_FUNCTION_16_37(), v45))
    {
    }

    else
    {
      ContactQuery.givenName.setter();
    }
  }

  OUTLINED_FUNCTION_26_5();
  v47 = (*(v46 + 400))();
  if (v48)
  {
    v98 = v0;
    v99 = v7;
    v100 = v3;
    v96 = v47;
    v97 = v48;
    v110 = v47;
    v111 = v48;
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_49_14();
    v95[1] = v49;
    v50 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
    v51 = 0;
    v52 = *(v50 + 16);
    v53 = v50 + 56;
    v101 = _swiftEmptyArrayStorage;
    v95[0] = v50 + 56;
LABEL_28:
    v54 = (v53 + 32 * v51);
    while (v52 != v51)
    {
      if (v51 >= *(v50 + 16))
      {
        __break(1u);
LABEL_71:
        OUTLINED_FUNCTION_0_6();
        swift_once();
LABEL_60:
        v78 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v78, static Logger.siriPhone);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_0, v79, v80, "#ContactResolution received AmbiguousHandle. Setting handleType as unknown", v81, 2u);
          OUTLINED_FUNCTION_8();
        }

        v73 = v104;
        v76 = v105;
        v75 = v102;
        v82 = OUTLINED_FUNCTION_13_17();
        v83(v82);
        (v1)(v75, enum case for ContactHandle.HandleType.unknown(_:), v76);
        goto LABEL_63;
      }

      v55 = *(v54 - 3);
      v1 = *(v54 - 2);
      v57 = *(v54 - 1);
      v56 = *v54;
      v58 = v55 >> 16;
      v59 = v1 >> 16;
      if (v57 != 0x656E6F6870 || v56 != 0xE500000000000000 || v58 != 0 || v59 != 5)
      {
        OUTLINED_FUNCTION_38_16();
        if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
        {
          v63 = v57 == 0x6C69616D65 && v56 == 0xE500000000000000;
          if (!v63 || v58 || v59 != 5)
          {
            OUTLINED_FUNCTION_38_16();
            if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
            {

              v64 = v101;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v110 = v64;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1);
                v64 = v110;
              }

              v67 = v64[2];
              v66 = v64[3];
              if (v67 >= v66 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1);
                v64 = v110;
              }

              ++v51;
              v64[2] = v67 + 1;
              v101 = v64;
              v68 = &v64[4 * v67];
              v68[4] = v55;
              v68[5] = v1;
              v68[6] = v57;
              v68[7] = v56;
              v53 = v95[0];
              goto LABEL_28;
            }
          }
        }
      }

      v54 += 4;
      ++v51;
    }

    v110 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    OUTLINED_FUNCTION_49_14();
    v69 = Sequence<>.joined(separator:)();
    v71 = v70;

    v110 = v69;
    v111 = v71;
    v108 = 0x6C616E6F73726570;
    v109 = 0xE800000000000000;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v72;
    OUTLINED_FUNCTION_19_3();
    v101 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v110 = v96;
    v111 = v97;
    v108 = 0x6C69616D65;
    v109 = 0xE500000000000000;
    LOBYTE(v69) = StringProtocol.contains<A>(_:)();

    v73 = v104;
    v1 = *(v104 + 104);
    v74 = &enum case for ContactHandle.HandleType.email(_:);
    if ((v69 & 1) == 0)
    {
      v74 = &enum case for ContactHandle.HandleType.phone(_:);
    }

    v75 = v102;
    v76 = v105;
    v77 = (v1)(v102, *v74, v105);
    if ((*(*v98 + 472))(v77))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        goto LABEL_71;
      }

      goto LABEL_60;
    }

LABEL_63:
    (*(v73 + 16))(v103, v75, v76);
    ContactHandleQuery.init(type:label:value:)();
    v84 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_20_29(v84);
    v85 = OUTLINED_FUNCTION_13_17();
    v86(v85);
    v40 = v73;
  }

  OUTLINED_FUNCTION_26_5();
  (*(v87 + 352))(v88);
  if (v89)
  {
    (*(v40 + 104))(v103, enum case for ContactHandle.HandleType.phone(_:), v105);
    OUTLINED_FUNCTION_32_16();
    v90 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_20_29(v90);
  }

  OUTLINED_FUNCTION_26_5();
  (*(v91 + 232))(v92);
  if (v93)
  {
    (*(v40 + 104))(v103, enum case for ContactHandle.HandleType.email(_:), v105);
    OUTLINED_FUNCTION_32_16();
    v94 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_20_29(v94);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t specialized SiriPhoneContact.getFullName(filteredAlternatives:)()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[8];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getPrefixName()()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[10];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getFirstName(filteredAlternatives:)()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[0];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getMiddleName(filteredAlternatives:)()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[2];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getLastName(filteredAlternatives:)()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[4];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getPostfixName()()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[12];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getNickName()()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[6];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t static PhoneCallIFIntent.from(clientAction:contactStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v52 = (v9 - v8);
  v50 = type metadata accessor for MessagePayload.ClientAction();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  if (MessagePayload.ClientAction.toolId.getter() == 0x61635F7472617473 && v16 == 0xEA00000000006C6CLL)
  {

LABEL_11:
    v32 = MessagePayload.ClientAction.app.getter();
    MessagePayload.ClientAction.destinations.getter();
    v34 = v33;
    __chkstk_darwin(v33);
    *(&v49 - 2) = v32;
    *(&v49 - 1) = a2;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay27PhoneCallFlowDelegatePlugin04SiriD7Contact_pG_AfG_psAE_pTg5(partial apply for closure #1 in static PhoneCallIFIntent.preprocess(app:resolvedDestinations:contactStore:), (&v49 - 4), v34, v35, v36, v37, v38, v39, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v56[2], v56[3], v56[4]);
    v41 = v40;

    if (v3)
    {
    }

    if (v32)
    {
      v43 = type metadata accessor for App();
      v44 = &protocol witness table for App;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    if (MessagePayload.ClientAction.speakerphone.getter())
    {
      v48 = 0;
    }

    else
    {
      v48 = 4;
    }

    *a3 = v32;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v43;
    *(a3 + 32) = v44;
    *(a3 + 40) = v41;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = v48;
    *(a3 + 65) = 0x600230309050502;
    *(a3 + 73) = 2;

    *(a3 + 80) = _swiftEmptyArrayStorage;
    *(a3 + 88) = _swiftEmptyArrayStorage;
    return result;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriPhone);
  v20 = v11;
  v21 = *(v11 + 16);
  v22 = v50;
  v21(v15, a1, v50);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_21_21();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_19();
    v49 = swift_slowAlloc();
    v56[0] = v49;
    *v25 = 136315394;
    v53 = 0;
    v54 = 0xE000000000000000;
    OUTLINED_FUNCTION_19_3();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v26, v27, v28, v29);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v56);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    MessagePayload.ClientAction.toolId.getter();
    OUTLINED_FUNCTION_34_12();
    (*(v20 + 8))(v15, v22);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v30, v56);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_0, v23, v24, "%s Unrecognized toolId %s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {

    (*(v20 + 8))(v15, v50);
  }

  v45 = v52;
  *v52 = MessagePayload.ClientAction.toolId.getter();
  v45[1] = v46;
  *(v45 + 16) = 1;
  OUTLINED_FUNCTION_0();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  swift_allocError();
  PhoneError.logged()(v47);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_5(v45, type metadata accessor for PhoneError);
  return swift_willThrow();
}

void specialized SiriPhoneContact.update(person:)()
{
  OUTLINED_FUNCTION_66();
  v187 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v195 = (&v183 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v17);
  v19 = &v183 - v18;
  __chkstk_darwin(v20);
  v22 = &v183 - v21;
  __chkstk_darwin(v23);
  v25 = &v183 - v24;
  __chkstk_darwin(v26);
  v28 = &v183 - v27;
  __chkstk_darwin(v29);
  v31 = &v183 - v30;
  __chkstk_darwin(v32);
  v34 = &v183 - v33;
  __chkstk_darwin(v35);
  v37 = &v183 - v36;
  *&v39 = __chkstk_darwin(v38).n128_u64[0];
  v41 = &v183 - v40;
  v42 = [v2 nameComponents];
  if (v42)
  {
    v43 = v42;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  outlined init with take of PersonNameComponents?(v37, v41);
  type metadata accessor for PersonNameComponents();
  if (OUTLINED_FUNCTION_21_27())
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    OUTLINED_FUNCTION_47_18();
    goto LABEL_22;
  }

  v184 = v19;
  v48 = PersonNameComponents.givenName.getter();
  v50 = v49;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (!v50)
  {
    goto LABEL_20;
  }

  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    goto LABEL_19;
  }

  v52 = [v2 nameComponents];
  if (v52)
  {
    v53 = v52;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  outlined init with take of PersonNameComponents?(v31, v34);
  if (!OUTLINED_FUNCTION_31_18(v34))
  {
    v58 = PersonNameComponents.familyName.getter();
    v60 = v59;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v60)
    {
      v61 = HIBYTE(v60) & 0xF;
      if ((v60 & 0x2000000000000000) == 0)
      {
        v61 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v61)
      {
        v183 = v58;
        v185 = v60;
        v62 = [v2 nameComponents];
        if (v62)
        {
          v63 = v62;
          v64 = v50;
          v65 = v186;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v66 = v196;
        }

        else
        {
          v64 = v50;
          v66 = v196;
          v65 = v186;
        }

        OUTLINED_FUNCTION_10_51();
        __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
        outlined init with take of PersonNameComponents?(v65, v66);
        if (OUTLINED_FUNCTION_21_27())
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v66, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        }

        else
        {
          v177 = PersonNameComponents.middleName.getter();
          v179 = v178;
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v66, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          if (v179)
          {
            v180 = HIBYTE(v179) & 0xF;
            if ((v179 & 0x2000000000000000) == 0)
            {
              v180 = v177 & 0xFFFFFFFFFFFFLL;
            }

            if (v180)
            {
              v199 = v48;
              v200 = v64;
              v181._countAndFlagsBits = OUTLINED_FUNCTION_49_14();
              String.append(_:)(v181);
              v182._countAndFlagsBits = v177;
              v182._object = v179;
              String.append(_:)(v182);

              goto LABEL_85;
            }
          }
        }

        v199 = v48;
        v200 = v64;
LABEL_85:
        v175._countAndFlagsBits = OUTLINED_FUNCTION_49_14();
        String.append(_:)(v175);
        v176._countAndFlagsBits = v183;
        v176._object = v185;
        String.append(_:)(v176);

        v185 = v199;
        v196 = v200;
        goto LABEL_21;
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_20:
  OUTLINED_FUNCTION_47_18();
LABEL_21:
  v19 = v184;
LABEL_22:
  [v2 isMe];
  v67 = *v187;
  OUTLINED_FUNCTION_72_0();
  (*(v68 + 232))();
  v69 = [v2 contactIdentifier];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  v74 = v193;
  OUTLINED_FUNCTION_72_0();
  (*(v75 + 256))(v71, v73);
  v76 = OUTLINED_FUNCTION_50_16();
  if (v76)
  {
    v77 = v76;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  outlined init with take of PersonNameComponents?(v25, v28);
  if (OUTLINED_FUNCTION_31_18(v28))
  {
    v193 = 0;
    v187 = 0;
  }

  else
  {
    v193 = PersonNameComponents.givenName.getter();
    v187 = v82;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v83 = OUTLINED_FUNCTION_50_16();
  if (v83)
  {
    v84 = v83;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v85 = v190;
  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  outlined init with take of PersonNameComponents?(v19, v22);
  if (OUTLINED_FUNCTION_31_18(v22))
  {
    v190 = 0;
    v186 = 0;
  }

  else
  {
    v190 = PersonNameComponents.middleName.getter();
    v186 = v90;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v91 = OUTLINED_FUNCTION_50_16();
  if (v91)
  {
    v92 = v91;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v93 = v189;
  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v98 = OUTLINED_FUNCTION_35_17();
  outlined init with take of PersonNameComponents?(v98, v99);
  if (OUTLINED_FUNCTION_21_27())
  {
    v189 = 0;
    v188 = 0;
  }

  else
  {
    v189 = PersonNameComponents.familyName.getter();
    v188 = v100;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v101 = OUTLINED_FUNCTION_50_16();
  if (v101)
  {
    v102 = v101;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v103 = v191;
  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
  outlined init with take of PersonNameComponents?(v85, v103);
  if (OUTLINED_FUNCTION_21_27())
  {
    v191 = 0;
    v108 = 0;
  }

  else
  {
    v191 = PersonNameComponents.nickname.getter();
    v108 = v109;
  }

  v110 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v103, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*v67 + 320))(v198, v110);
  v112 = v198[8];
  v111 = v198[9];
  if (v198[1] == 1)
  {
    OUTLINED_FUNCTION_12_45(v198[0]);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v199, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_12_45(v198[0]);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v199, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
    if (v111)
    {
      goto LABEL_49;
    }
  }

  v111 = v196;

  v112 = v185;
LABEL_49:
  v113 = [v2 nameComponents];
  v114 = v192;
  if (v113)
  {
    v115 = v113;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
  v120 = v197;
  outlined init with take of PersonNameComponents?(v114, v197);
  if (OUTLINED_FUNCTION_21_27())
  {
    v121 = 0;
    v122 = 0;
  }

  else
  {
    v123 = PersonNameComponents.namePrefix.getter();
    v120 = v197;
    v121 = v123;
    v122 = v124;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v120, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v125 = [v2 nameComponents];
  if (v125)
  {
    v126 = v125;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
  v131 = v194;
  outlined init with take of PersonNameComponents?(v74, v194);
  if (OUTLINED_FUNCTION_21_27())
  {
    v132 = 0;
    v133 = 0;
  }

  else
  {
    v132 = PersonNameComponents.nameSuffix.getter();
    v133 = v134;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v131, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v199 = v193;
  v200 = v187;
  v201 = v190;
  v202 = v186;
  v203 = v189;
  v204 = v188;
  v205 = v191;
  v206 = v108;
  v207 = v112;
  v208 = v111;
  v209 = v121;
  v210 = v122;
  v211 = v132;
  v212 = v133;
  (*(*v67 + 328))(&v199);
  v135 = [v2 relationship];
  if (v135)
  {
    v136 = v135;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_29_18();
  }

  OUTLINED_FUNCTION_72_0();
  v137 = OUTLINED_FUNCTION_22_21();
  v138(v137);
  v139 = OUTLINED_FUNCTION_40_18();
  if (v139)
  {
    v140 = v139;
    v141 = [v139 type];

    if (v141 == &dword_0 + 2)
    {
      v142 = OUTLINED_FUNCTION_40_18();
      v143 = v142;
      if (!v142)
      {
        goto LABEL_71;
      }

      v144 = [v142 value];

      if (!v144)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  v145 = OUTLINED_FUNCTION_40_18();
  if (v145)
  {
    v146 = v145;
    v147 = [v145 type];

    if (v147 == &dword_0 + 1)
    {
      v148 = OUTLINED_FUNCTION_40_18();
      v149 = v148;
      if (!v148)
      {
        goto LABEL_71;
      }

      v144 = [v148 value];

      if (!v144)
      {
        goto LABEL_71;
      }

LABEL_70:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_29_18();

LABEL_71:
      OUTLINED_FUNCTION_72_0();
      v150 = OUTLINED_FUNCTION_22_21();
      v151(v150);
      OUTLINED_FUNCTION_72_0();
      (*(v152 + 448))();
    }
  }

  v153 = OUTLINED_FUNCTION_40_18();
  v154 = v153;
  if (v153)
  {
    v155 = [v153 label];

    if (v155)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_29_18();
    }
  }

  OUTLINED_FUNCTION_72_0();
  v156 = OUTLINED_FUNCTION_22_21();
  v157(v156);
  v158 = OUTLINED_FUNCTION_40_18();
  if (!v158 || (v159 = v158, v160 = [v158 emergencyType], v159, v160 != &dword_0 + 1))
  {
    v161 = OUTLINED_FUNCTION_40_18();
    if (v161)
    {
      v162 = v161;
      [v161 emergencyType];
    }
  }

  OUTLINED_FUNCTION_72_0();
  (*(v163 + 520))();
  v164 = v195;
  *v195 = v2;
  v165 = type metadata accessor for BackingContact(0);
  OUTLINED_FUNCTION_35_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v166, v167, v168, v165);
  v169 = *(*v67 + 640);
  v170 = v2;
  v169(v164);

  OUTLINED_FUNCTION_65();
}

void PhoneCallIFIntent.contactQueries.getter()
{
  OUTLINED_FUNCTION_66();
  v33 = type metadata accessor for BackingContact(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v32 = (v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_21(v8);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v31 = (v16 - v15);
  v17 = *(v0 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    v30 = v14;
    v20 = (v14 + 32);
    v21 = _swiftEmptyArrayStorage;
    do
    {
      outlined init with copy of SignalProviding(v19, v35);
      v22 = v36;
      v23 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      (*(v23 + 384))(v22, v23);
      if (__swift_getEnumTagSinglePayload(v7, 1, v33) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
        v24 = 1;
      }

      else
      {
        outlined init with copy of BackingContact(v7, v32);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            specialized SiriPhoneContact.asSiriInferenceContact.getter();

            break;
          case 2u:
            outlined init with take of SPHConversation(v32, v34);
            __swift_project_boxed_opaque_existential_1(v34, v34[3]);
            dispatch thunk of ToContactQuery.toContactQuery()();
            __swift_destroy_boxed_opaque_existential_1(v34);
            break;
          case 3u:
            (*v20)(v11, v32, v12);
            break;
          default:
            v25 = *v32;
            INPerson.toContactQuery()();

            break;
        }

        _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_5(v7, type metadata accessor for BackingContact);
        v24 = 0;
      }

      __swift_storeEnumTagSinglePayload(v11, v24, 1, v12);
      __swift_destroy_boxed_opaque_existential_1(v35);
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
      }

      else
      {
        v26 = *v20;
        (*v20)(v31, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_51();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v28;
        }

        v27 = *(v21 + 2);
        if (v27 >= *(v21 + 3) >> 1)
        {
          OUTLINED_FUNCTION_10_51();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v29;
        }

        *(v21 + 2) = v27 + 1;
        v26(&v21[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27], v31, v12);
      }

      v19 += 40;
      --v18;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t MessagePayload.ClientAction.app.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMR);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v1);
  v3 = &v9 - v2;
  v4 = MessagePayload.ClientAction.shimParameters.getter();
  Dictionary<>.single(name:)(7368801, 0xE300000000000000, v4, v3);

  v5 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMR);
    return 0;
  }

  else
  {
    MessagePayload.ClientAction.ShimParameter.toApp.getter();
    v6 = v7;
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  return v6;
}

void MessagePayload.ClientAction.destinations.getter()
{
  OUTLINED_FUNCTION_66();
  v27 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  OUTLINED_FUNCTION_7();
  v1 = v0;
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  v6 = MessagePayload.ClientAction.shimParameters.getter();
  v7 = OUTLINED_FUNCTION_43_18();
  v9 = Dictionary<>.multicardinal(name:)(v7, v8, v6);

  v10 = v9[2];
  if (v10)
  {
    v12 = *(v1 + 16);
    v11 = v1 + 16;
    v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v25 = *(v11 + 56);
    v26 = v12;
    v14 = (v11 - 8);
    v15 = _swiftEmptyArrayStorage;
    v24 = v11;
    do
    {
      v26(v5, v13, v27);
      MessagePayload.ClientAction.ShimParameter.toSiriPhoneContact.getter();
      v28 = v31;
      v29 = v32;
      v30 = v33;
      (*v14)(v5, v27);
      if (*(&v29 + 1))
      {
        outlined init with take of SPHConversation(&v28, &v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v22;
          v34 = v22;
        }

        v17 = v15[2];
        if (v17 >= v15[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v23;
          v34 = v23;
        }

        v18 = *(&v32 + 1);
        v19 = v33;
        v20 = __swift_mutable_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
        __chkstk_darwin(v20);
        OUTLINED_FUNCTION_2_79();
        (*(v21 + 16))(v11);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v17, v11, &v34, v18, v19);
        __swift_destroy_boxed_opaque_existential_1(&v31);
        v11 = v24;
      }

      else
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v28, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
      }

      v13 += v25;
      --v10;
    }

    while (v10);
  }

  else
  {
  }

  OUTLINED_FUNCTION_65();
}

uint64_t MessagePayload.ClientAction.speakerphone.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMR);
  OUTLINED_FUNCTION_21(v0);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v1);
  v3 = &v10 - v2;
  v4 = MessagePayload.ClientAction.shimParameters.getter();
  v5 = OUTLINED_FUNCTION_42_16();
  Dictionary<>.single(name:)(v5, v6, v4, v3);

  v7 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMR);
    v8 = 0;
  }

  else
  {
    v8 = MessagePayload.ClientAction.ShimParameter.toBool.getter();
    (*(*(v7 - 8) + 8))(v3, v7);
  }

  return v8 & 1;
}

double PhoneCallIFIntent.init(app:contacts:phoneCallAVMode:phoneCallAudioRoute:phoneCallVerb:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = 0;
  *(a6 + 64) = a4;
  *&result = 151323906;
  *(a6 + 65) = 151323906;
  *(a6 + 69) = 8963;
  *(a6 + 71) = a5;
  *(a6 + 72) = 518;
  *(a6 + 80) = _swiftEmptyArrayStorage;
  *(a6 + 88) = _swiftEmptyArrayStorage;
  return result;
}

void closure #1 in static PhoneCallIFIntent.preprocess(app:resolvedDestinations:contactStore:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = (&v42 - v11);
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v13 + 384))(v14, v13);
  v15 = type metadata accessor for BackingContact(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
LABEL_5:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315138;
      v48 = 0;
      v49 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v50);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_0, v17, v18, "%s Skip preprocessing when backingContact is not an INPerson", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    goto LABEL_9;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_5(v12, type metadata accessor for BackingContact);
    goto LABEL_5;
  }

  v17 = *v12;
  if (!a2)
  {
LABEL_14:
    v24 = [v17 personHandle];
    if (v24)
    {
      v25 = v24;
      v46 = outlined bridged method (pb) of @objc INPersonHandle.value.getter(v24);
      if (v26)
      {
        v27 = v26;
        if ([v25 type] == &dword_0 + 1)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, static Logger.siriPhone);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v44 = v31;
            v45 = swift_slowAlloc();
            v50 = v45;
            *v31 = 136315138;
            v48 = 0;
            v49 = 0xE000000000000000;
            v43 = v29;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v50);

            v33 = v44;
            *(v44 + 1) = v32;
            v29 = v43;
            _os_log_impl(&dword_0, v43, v30, "%s Preprocessing: Telephony call to email address", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
          }

          v34 = v47;
          static PhoneCallIFIntent.mapEmailHandleToPerson(personRepresentation:emailAddress:contactStore:)(v17, v46, v27, a3, a5);

          if (v34)
          {
            *a4 = v34;
          }

          return;
        }
      }

      else
      {
      }
    }

LABEL_9:

    outlined init with copy of SignalProviding(a1, a5);
    return;
  }

  v22 = App.isFirstParty()();
  v23 = App.isFaceTime()();
  if (v22)
  {
    if (v23)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v35 = [v17 personHandle];
  if (!v35)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.siriPhone);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v50 = v40;
    *v39 = 136315138;
    v48 = 0;
    v49 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v50);

    *(v39 + 4) = v41;
    _os_log_impl(&dword_0, v37, v38, "%s Preprocessing: 3P call", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  static PhoneCallIFIntent.removeHandleForThirdPartyCall(person:)(v17, a5);
}

uint64_t static PhoneCallIFIntent.removeHandleForThirdPartyCall(person:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 setPersonHandle:0];
  v3 = type metadata accessor for SiriPhoneContactImpl(0);
  swift_allocObject();
  v5 = SiriPhoneContactImpl.init()();

  specialized SiriPhoneContact.update(person:)();
  a2[3] = v3;
  a2[4] = &protocol witness table for SiriPhoneContactImpl;

  *a2 = v5;
  return result;
}

void static PhoneCallIFIntent.mapEmailHandleToPerson(personRepresentation:emailAddress:contactStore:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10.super.isa = INPerson.mutableCopyPerson()().super.isa;
  if (v11)
  {
    return;
  }

  isa = v10.super.isa;
  [(objc_class *)v10.super.isa setPersonHandle:0];
  v49 = type metadata accessor for SiriPhoneContactImpl(0);
  swift_allocObject();
  v50 = SiriPhoneContactImpl.init()();
  v51 = isa;
  v53[2] = v50;
  specialized SiriPhoneContact.update(person:)();
  v13 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a1);
  LOBYTE(isa) = specialized Optional<A>.isNilOrEmpty.getter(v13, v14);

  if ((isa & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315138;
      v53[0] = v28;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v53);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_0, v25, v26, "%s INPerson has an email address but also has a 1P contactIdentifier. Return destination w/o email address", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    a5[3] = v49;
    a5[4] = &protocol witness table for SiriPhoneContactImpl;

    goto LABEL_24;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v48 = a5;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v18 = 136315138;
    v53[0] = v47;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v53);

    *(v18 + 4) = v19;
    _os_log_impl(&dword_0, v16, v17, "%s Received a fully-resolved INPerson with an email address", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v20 = a4[3];
  v21 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v20);
  v22 = outlined bridged method (pb) of @objc INPerson._displayName()(a1);
  v30 = (*(v21 + 16))(a2, a3, v22, v23, v20, v21);

  if (specialized Array.count.getter(v30) != 1 || !specialized Array.count.getter(v30))
  {

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 136315394;
      v53[0] = v44;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v53);

      *(v43 + 4) = v45;
      *(v43 + 12) = 2048;
      v46 = specialized Array.count.getter(v30);

      *(v43 + 14) = v46;

      _os_log_impl(&dword_0, v41, v42, "%s Reverse handle lookup for email address handle found %ld matches. Remove email address and return as-is", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v44);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    a5 = v48;
    v48[3] = v49;
    v48[4] = &protocol witness table for SiriPhoneContactImpl;

LABEL_24:
    *a5 = v50;
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v30 & 0xC000000000000001) == 0, v30);
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v31 = *(v30 + 32);
  }

  v32 = v31;

  v33 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v36 = 136315394;
    v53[0] = v38;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v53);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v33;
    *v37 = v33;
    v40 = v33;
    _os_log_impl(&dword_0, v34, v35, "%s Reverse handle lookup for email address handle found person %@", v36, 0x16u);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_allocObject();
  v52 = SiriPhoneContactImpl.init()();

  specialized SiriPhoneContact.update(person:)();
  v48[3] = v49;
  v48[4] = &protocol witness table for SiriPhoneContactImpl;

  *v48 = v52;
}

void *Dictionary<>.multicardinal(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

void MessagePayload.ClientAction.ShimParameter.toSiriPhoneContact.getter()
{
  OUTLINED_FUNCTION_66();
  v103 = v1;
  v2 = type metadata accessor for MessagePayload.ClientAction.StringQuery();
  OUTLINED_FUNCTION_7();
  v101 = v3;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_12_5();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = (&v97 - v9);
  v102 = type metadata accessor for MessagePayload.ClientAction.PersonQuery();
  OUTLINED_FUNCTION_7();
  v98 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v99 = v13 - v14;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_13_5();
  v97 = v16;
  __chkstk_darwin(v17);
  v100 = &v97 - v18;
  v19 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_7();
  v21 = v20;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v25 = (v24 - v23);
  type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_2_79();
  v27 = OUTLINED_FUNCTION_3_1();
  v28(v27);
  v29 = OUTLINED_FUNCTION_8_2();
  v31 = v30(v29);
  if (v31 == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    v32 = OUTLINED_FUNCTION_8_2();
    v33(v32);
    OUTLINED_FUNCTION_45_13();
    v34(v25, v0, v19);
    TypedValue.toPerson.getter();
    if (v35)
    {
      v36 = v35;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);
      v38 = v36;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        OUTLINED_FUNCTION_21_21();
        v41 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v42 = OUTLINED_FUNCTION_36();
        v102 = v42;
        *v41 = 136315394;
        v43 = OUTLINED_FUNCTION_5_8(v42);
        OUTLINED_FUNCTION_15_37(v43, _swiftEmptyArrayStorage);
        v44 = OUTLINED_FUNCTION_11_40();

        *(v41 + 4) = v44;
        *(v41 + 12) = 2112;
        *(v41 + 14) = v38;
        v45 = v101;
        *v101 = v36;
        v46 = v38;
        _os_log_impl(&dword_0, v39, v40, "%s Received resolved value for SiriPhoneContact: %@", v41, 0x16u);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_8();

        __swift_destroy_boxed_opaque_existential_1(v102);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      v47 = type metadata accessor for SiriPhoneContactImpl(0);
      swift_allocObject();
      v48 = SiriPhoneContactImpl.init()();
      v104 = v48;

      specialized SiriPhoneContact.update(person:)();
      v49 = v103;
      v103[3] = v47;
      v49[4] = &protocol witness table for SiriPhoneContactImpl;

      *v49 = v48;
      (*(v21 + 8))(v25, v19);
      goto LABEL_26;
    }

    (*(v21 + 8))(v25, v19);
LABEL_25:
    v91 = v103;
    v103[4] = 0;
    *v91 = 0u;
    *(v91 + 1) = 0u;
    goto LABEL_26;
  }

  if (v31 == enum case for MessagePayload.ClientAction.ShimParameter.stringQuery(_:))
  {
    v50 = OUTLINED_FUNCTION_8_2();
    v51(v50);
    v52 = v101;
    OUTLINED_FUNCTION_45_13();
    v53(v10, v0, v2);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v54, static Logger.siriPhone);
    (v52[2])(v7, v10, v2);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_21_21();
      v57 = swift_slowAlloc();
      v102 = v10;
      v58 = v57;
      OUTLINED_FUNCTION_24_19();
      v59 = swift_slowAlloc();
      *v58 = 136315394;
      v60 = OUTLINED_FUNCTION_5_8(v59);
      OUTLINED_FUNCTION_15_37(v60, _swiftEmptyArrayStorage);
      v61 = OUTLINED_FUNCTION_11_40();

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      MessagePayload.ClientAction.StringQuery.text.getter();
      OUTLINED_FUNCTION_29_18();
      v62 = v52[1];
      v62(v7, v2);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v61, &v106);

      *(v58 + 14) = v63;
      _os_log_impl(&dword_0, v55, v56, "%s Received unresolved stringQuery %s for SiriPhoneContact. This is not expected!", v58, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();

      v62(v102, v2);
    }

    else
    {

      v81 = v52[1];
      v81(v7, v2);
      v81(v10, v2);
    }

    goto LABEL_25;
  }

  if (v31 != enum case for MessagePayload.ClientAction.ShimParameter.personQuery(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v82, static Logger.siriPhone);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = OUTLINED_FUNCTION_36();
      *v85 = 136315138;
      v87 = OUTLINED_FUNCTION_5_8(v86);
      OUTLINED_FUNCTION_15_37(v87, _swiftEmptyArrayStorage);
      v88 = OUTLINED_FUNCTION_11_40();

      *(v85 + 4) = v88;
      _os_log_impl(&dword_0, v83, v84, "%s Received unknown ShimParameterResolution case", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v89 = OUTLINED_FUNCTION_8_2();
    v90(v89);
    goto LABEL_25;
  }

  v64 = OUTLINED_FUNCTION_8_2();
  v65(v64);
  v66 = v98;
  v67 = v100;
  v68 = v0;
  v69 = v102;
  (*(v98 + 32))(v100, v68, v102);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v70, static Logger.siriPhone);
  v71 = v97;
  v101 = *(v66 + 16);
  (v101)(v97, v67, v69);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    OUTLINED_FUNCTION_21_21();
    v74 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_19();
    v75 = swift_slowAlloc();
    *v74 = 136315394;
    v76 = OUTLINED_FUNCTION_5_8(v75);
    OUTLINED_FUNCTION_15_37(v76, _swiftEmptyArrayStorage);
    v77 = OUTLINED_FUNCTION_11_40();

    *(v74 + 4) = v77;
    *(v74 + 12) = 2080;
    v104 = MessagePayload.ClientAction.PersonQuery.name.getter();
    v105 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_29_18();
    v79 = OUTLINED_FUNCTION_44_13();
    v25(v79, v102);
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v77, &v106);

    *(v74 + 14) = v80;
    _os_log_impl(&dword_0, v72, v73, "%s Received unresolved personQuery for SiriPhoneContact: %s", v74, 0x16u);
    swift_arrayDestroy();
    v67 = v100;
    OUTLINED_FUNCTION_8();

    v69 = v102;
    OUTLINED_FUNCTION_8();
  }

  else
  {

    v92 = OUTLINED_FUNCTION_44_13();
    v25(v92, v69);
  }

  v93 = type metadata accessor for SiriPhoneContactImpl(0);
  v94 = v99;
  (v101)(v99, v67, v69);
  v95 = SiriPhoneContactImpl.__allocating_init(ifPersonQuery:)(v94);
  v96 = v103;
  v103[3] = v93;
  v96[4] = &protocol witness table for SiriPhoneContactImpl;
  *v96 = v95;
  v25(v67, v69);
LABEL_26:
  OUTLINED_FUNCTION_65();
}

uint64_t Dictionary<>.single(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0) && (v8 = *(*(a3 + 56) + 8 * v6), *(v8 + 16) == 1))
  {
    v9 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
    OUTLINED_FUNCTION_23_1();
    (*(v10 + 16))(a4, v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
    OUTLINED_FUNCTION_23_3();
    v14 = v9;
  }

  else
  {
    v14 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
    v11 = a4;
    v12 = 1;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t MessagePayload.ClientAction.ShimParameter.toBool.getter()
{
  v1 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_41_19();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_2_79();
  (*(v3 + 16))(v0, v0, v1);
  v6 = OUTLINED_FUNCTION_0();
  if (v7(v6) == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    v8 = OUTLINED_FUNCTION_0();
    v9(v8);
    v10 = OUTLINED_FUNCTION_3_1();
    v11(v10);
    v12 = TypedValue.toBool.getter();
    v13 = OUTLINED_FUNCTION_8_2();
    v14(v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_0();
    v16(v15);
    v12 = 0;
  }

  return v12 & 1;
}

void MessagePayload.ClientAction.ShimParameter.toApp.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for TypedValue();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_2_79();
  type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_35_17();
  v10(v9);
  v11 = OUTLINED_FUNCTION_13_17();
  if (v12(v11) == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    v13 = OUTLINED_FUNCTION_13_17();
    v14(v13);
    (*(v3 + 32))(v0, v8, v1);
    TypedValue.toApp.getter();
    if (v15)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v16, static Logger.siriPhone);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        OUTLINED_FUNCTION_21_21();
        v19 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_19();
        v20 = swift_slowAlloc();
        *v19 = 136315394;
        OUTLINED_FUNCTION_5_8(v20);
        OUTLINED_FUNCTION_19_3();
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v21, v22, v23, v24);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v45);

        *(v19 + 4) = v25;
        *(v19 + 12) = 2080;
        App.appIdentifier.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v45);

        *(v19 + 14) = v28;
        _os_log_impl(&dword_0, v17, v18, "%s Received resolved value for App: %s", v19, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }
    }

    v29 = OUTLINED_FUNCTION_8_2();
    v30(v29);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = OUTLINED_FUNCTION_36();
      *v34 = 136315138;
      OUTLINED_FUNCTION_5_8(v35);
      OUTLINED_FUNCTION_19_3();
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v36, v37, v38, v39);
      v40 = OUTLINED_FUNCTION_11_40();

      *(v34 + 4) = v40;
      _os_log_impl(&dword_0, v32, v33, "%s Received unknown ShimParameterResolution case for App", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v41 = OUTLINED_FUNCTION_13_17();
    v42(v41);
  }

  OUTLINED_FUNCTION_65();
}

void TypedValue.toPerson.getter()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_41_19();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  type metadata accessor for TypedValue.PrimitiveValue.PersonValue();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_2_79();
  v3 = OUTLINED_FUNCTION_33_17();
  v4(v3);
  v5 = OUTLINED_FUNCTION_30_23();
  if (v6(v5) == enum case for TypedValue.primitive(_:))
  {
    v7 = OUTLINED_FUNCTION_30_23();
    v8(v7);
    swift_projectBox();
    v9 = OUTLINED_FUNCTION_37_20();
    v10(v9);
    v11 = OUTLINED_FUNCTION_0();
    if (v12(v11) == enum case for TypedValue.PrimitiveValue.person(_:))
    {
      v13 = OUTLINED_FUNCTION_0();
      v14(v13);
      OUTLINED_FUNCTION_45_13();
      v15 = OUTLINED_FUNCTION_3_1();
      v16(v15);

      TypedValue.PrimitiveValue.PersonValue.person.getter();
      v17 = OUTLINED_FUNCTION_8_2();
      v18(v17);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_0();
      v22(v21);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_30_23();
    v20(v19);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t SiriPhoneContactImpl.__allocating_init(ifPersonQuery:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  v6 = __chkstk_darwin(v5);
  v8 = __dst - v7 + 64;
  v9 = (*(v1 + 656))(v6);

  MessagePayload.ClientAction.PersonQuery.name.getter();
  OUTLINED_FUNCTION_34_12();
  swift_beginAccess();
  memcpy(__dst, (v9 + 64), sizeof(__dst));
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = a1;
  *(v9 + 136) = v2;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0u;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(__dst, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  v10 = MessagePayload.ClientAction.PersonQuery.isMe.getter();
  swift_beginAccess();
  *(v9 + 16) = v10 & 1;
  MessagePayload.ClientAction.PersonQuery.toContactQuery()();
  type metadata accessor for MessagePayload.ClientAction.PersonQuery();
  OUTLINED_FUNCTION_23_1();
  (*(v11 + 8))(a1);
  v12 = type metadata accessor for BackingContact(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  swift_beginAccess();
  outlined assign with take of BackingContact?(v8, v9 + v16);
  swift_endAccess();

  return v9;
}

void TypedValue.toApp.getter()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for TypedValue.PrimitiveValue();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_41_19();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  type metadata accessor for TypedValue.PrimitiveValue.AppValue();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_2_79();
  v3 = OUTLINED_FUNCTION_33_17();
  v4(v3);
  v5 = OUTLINED_FUNCTION_30_23();
  if (v6(v5) == enum case for TypedValue.primitive(_:))
  {
    v7 = OUTLINED_FUNCTION_30_23();
    v8(v7);
    swift_projectBox();
    v9 = OUTLINED_FUNCTION_37_20();
    v10(v9);
    v11 = OUTLINED_FUNCTION_0();
    if (v12(v11) == enum case for TypedValue.PrimitiveValue.app(_:))
    {
      v13 = OUTLINED_FUNCTION_0();
      v14(v13);
      OUTLINED_FUNCTION_45_13();
      v15 = OUTLINED_FUNCTION_3_1();
      v16(v15);

      type metadata accessor for App();
      TypedValue.PrimitiveValue.AppValue.bundleIdentifier.getter();
      App.__allocating_init(appIdentifier:)();
      v17 = OUTLINED_FUNCTION_8_2();
      v18(v17);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_0();
      v22(v21);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_30_23();
    v20(v19);
  }

  OUTLINED_FUNCTION_65();
}

void MessagePayload.ClientAction.PersonQuery.toContactQuery()()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  type metadata accessor for ContactOntologySource();
  OUTLINED_FUNCTION_7();
  v66 = v5;
  v67 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v65 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, &_s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_21(v8);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v63 = v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMR);
  v12 = OUTLINED_FUNCTION_21(v11);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v59 - v17;
  v62 = type metadata accessor for ContactHandle.HandleType();
  OUTLINED_FUNCTION_7();
  v60 = v19;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_12_5();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v61 = v59 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleVSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleVSgMR);
  OUTLINED_FUNCTION_21(v26);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v27);
  v29 = v59 - v28;
  v30 = type metadata accessor for MessagePayload.ClientAction.PersonQuery.Handle();
  OUTLINED_FUNCTION_7();
  v64 = v31;
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_2_79();
  ContactQuery.init()();
  v68 = v0;
  MessagePayload.ClientAction.PersonQuery.name.getter();
  if (v33)
  {
    ContactQuery.fullName.setter();
  }

  MessagePayload.ClientAction.PersonQuery.handle.getter();
  if (OUTLINED_FUNCTION_31_18(v29) != 1)
  {
    (*(v64 + 32))(v1, v29, v30);
    MessagePayload.ClientAction.PersonQuery.Handle.kind.getter();
    v34 = type metadata accessor for MessagePayload.ClientAction.PersonQuery.Handle.Kind();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v34);
    v59[1] = v3;
    if (EnumTagSinglePayload != 1)
    {
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v18, v15, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMR);
      v46 = OUTLINED_FUNCTION_35_17();
      v48 = v47(v46);
      if (v48 == enum case for MessagePayload.ClientAction.PersonQuery.Handle.Kind.phone(_:))
      {
LABEL_12:
        v49 = &enum case for ContactHandle.HandleType.phone(_:);
LABEL_13:
        v50 = v60;
        v51 = v61;
        v52 = v62;
        (*(v60 + 104))(v61, *v49, v62);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMR);
        (*(v50 + 16))(v23, v51, v52);
        MessagePayload.ClientAction.PersonQuery.Handle.label.getter();
        MessagePayload.ClientAction.PersonQuery.Handle.value.getter();
        ContactHandleQuery.init(type:label:value:)();
        type metadata accessor for ContactHandleQuery();
        OUTLINED_FUNCTION_23_3();
        __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
        ContactQuery.handle.setter();
        (*(v50 + 8))(v51, v52);
        (*(v64 + 8))(v1, v30);
        goto LABEL_14;
      }

      if (v48 == enum case for MessagePayload.ClientAction.PersonQuery.Handle.Kind.email(_:))
      {
        v49 = &enum case for ContactHandle.HandleType.email(_:);
        goto LABEL_13;
      }

      v57 = OUTLINED_FUNCTION_35_17();
      v58(v57);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_36();
      v71 = v40;
      *v39 = 136315138;
      type metadata accessor for MessagePayload.ClientAction.PersonQuery();
      v69 = 0;
      v70 = 0xE000000000000000;
      OUTLINED_FUNCTION_19_3();
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v41, v42, v43, v44);
      v45 = OUTLINED_FUNCTION_11_40();

      *(v39 + 4) = v45;
      _os_log_impl(&dword_0, v37, v38, "%s Unknown ContactHandleQuery.Type, use .phone as default", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    goto LABEL_12;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v29, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleVSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleVSgMR);
LABEL_14:
  MessagePayload.ClientAction.PersonQuery.isMe.getter();
  ContactQuery.isMe.setter();
  (*(v66 + 104))(v65, enum case for ContactOntologySource.inPerson(_:), v67);
  ContactQuery.ontologySource.setter();
  OUTLINED_FUNCTION_65();
}

uint64_t outlined init with copy of BackingContact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackingContact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_5(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of SPHConversation(&v12, v10 + 40 * a1 + 32);
}

uint64_t getEnumTagSinglePayload for PhoneCallIFIntent(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for PhoneCallIFIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_18(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id OUTLINED_FUNCTION_40_18()
{
  v3 = *(v1 + 2120);

  return [v0 v3];
}

id OUTLINED_FUNCTION_50_16()
{
  v3 = *(v1 + 2920);

  return [v0 v3];
}

Swift::String __swiftcall PhoneCallIntentClassNames.getClassName()()
{
  v1 = PhoneCallIntentClassNames.intentInstance.getter(v0);
  v2 = [v1 _className];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

id PhoneCallIntentClassNames.intentInstance.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (one-time initialization token for emptyHangUpCallIntent != -1)
      {
        OUTLINED_FUNCTION_3_70(&one-time initialization token for emptyHangUpCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyHangUpCallIntent;
      break;
    case 2:
      if (one-time initialization token for emptyIncomingCallSearchIntent != -1)
      {
        OUTLINED_FUNCTION_7_49(&one-time initialization token for emptyIncomingCallSearchIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyIncomingCallSearchIntent;
      break;
    case 3:
      if (one-time initialization token for emptySearchCallHistoryIntent != -1)
      {
        OUTLINED_FUNCTION_6_57(&one-time initialization token for emptySearchCallHistoryIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptySearchCallHistoryIntent;
      break;
    case 4:
      if (one-time initialization token for emptyStartCallIntent != -1)
      {
        OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartCallIntent;
      break;
    case 5:
      if (one-time initialization token for emptyStartAudioCallIntent != -1)
      {
        OUTLINED_FUNCTION_2_80(&one-time initialization token for emptyStartAudioCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartAudioCallIntent;
      break;
    case 6:
      if (one-time initialization token for emptyStartVideoCallIntent != -1)
      {
        OUTLINED_FUNCTION_1_80(&one-time initialization token for emptyStartVideoCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartVideoCallIntent;
      break;
    case 7:
      if (one-time initialization token for emptyAddCallParticipantIntent != -1)
      {
        OUTLINED_FUNCTION_5_62(&one-time initialization token for emptyAddCallParticipantIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyAddCallParticipantIntent;
      break;
    default:
      if (one-time initialization token for emptyAnswerCallIntent != -1)
      {
        OUTLINED_FUNCTION_4_55(&one-time initialization token for emptyAnswerCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyAnswerCallIntent;
      break;
  }

  v2 = *v1;

  return v2;
}

PhoneCallFlowDelegatePlugin::PhoneCallIntentClassNames_optional __swiftcall PhoneCallIntentClassNames.init(intentClassName:)(Swift::String intentClassName)
{
  object = intentClassName._object;
  countAndFlagsBits = intentClassName._countAndFlagsBits;
  if (one-time initialization token for emptyAnswerCallIntent != -1)
  {
    OUTLINED_FUNCTION_4_55(&one-time initialization token for emptyAnswerCallIntent);
  }

  v5 = [static PhoneCallIntentClassNames.emptyAnswerCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_10:

    return 0;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_10;
  }

  if (one-time initialization token for emptyHangUpCallIntent != -1)
  {
    OUTLINED_FUNCTION_3_70(&one-time initialization token for emptyHangUpCallIntent);
  }

  v8 = [static PhoneCallIntentClassNames.emptyHangUpCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_20:

    return 1;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for emptyIncomingCallSearchIntent != -1)
  {
    OUTLINED_FUNCTION_7_49(&one-time initialization token for emptyIncomingCallSearchIntent);
  }

  v10 = [static PhoneCallIntentClassNames.emptyIncomingCallSearchIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_30:

    return 2;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_30;
  }

  if (one-time initialization token for emptySearchCallHistoryIntent != -1)
  {
    OUTLINED_FUNCTION_6_57(&one-time initialization token for emptySearchCallHistoryIntent);
  }

  v12 = [static PhoneCallIntentClassNames.emptySearchCallHistoryIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_40:

    return 3;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_40;
  }

  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
  }

  v14 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_50:

    return 4;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_50;
  }

  if (one-time initialization token for emptyStartAudioCallIntent != -1)
  {
    OUTLINED_FUNCTION_2_80(&one-time initialization token for emptyStartAudioCallIntent);
  }

  v16 = [static PhoneCallIntentClassNames.emptyStartAudioCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_60:

    return 5;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_60;
  }

  if (one-time initialization token for emptyStartVideoCallIntent != -1)
  {
    OUTLINED_FUNCTION_1_80(&one-time initialization token for emptyStartVideoCallIntent);
  }

  v18 = [static PhoneCallIntentClassNames.emptyStartVideoCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_70:

    return 6;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_70;
  }

  if (one-time initialization token for emptyAddCallParticipantIntent != -1)
  {
    OUTLINED_FUNCTION_5_62(&one-time initialization token for emptyAddCallParticipantIntent);
  }

  v20 = [static PhoneCallIntentClassNames.emptyAddCallParticipantIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

    return 7;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_0_5();

    if (v22)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

Swift::String __swiftcall PhoneCallIntentClassNames.getTypeName()()
{
  switch(v0)
  {
    case 1:
      if (one-time initialization token for emptyHangUpCallIntent != -1)
      {
        OUTLINED_FUNCTION_3_70(&one-time initialization token for emptyHangUpCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyHangUpCallIntent;
      break;
    case 2:
      if (one-time initialization token for emptyIncomingCallSearchIntent != -1)
      {
        OUTLINED_FUNCTION_7_49(&one-time initialization token for emptyIncomingCallSearchIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyIncomingCallSearchIntent;
      break;
    case 3:
      if (one-time initialization token for emptySearchCallHistoryIntent != -1)
      {
        OUTLINED_FUNCTION_6_57(&one-time initialization token for emptySearchCallHistoryIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptySearchCallHistoryIntent;
      break;
    case 4:
      if (one-time initialization token for emptyStartCallIntent != -1)
      {
        OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartCallIntent;
      break;
    case 5:
      if (one-time initialization token for emptyStartAudioCallIntent != -1)
      {
        OUTLINED_FUNCTION_2_80(&one-time initialization token for emptyStartAudioCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartAudioCallIntent;
      break;
    case 6:
      if (one-time initialization token for emptyStartVideoCallIntent != -1)
      {
        OUTLINED_FUNCTION_1_80(&one-time initialization token for emptyStartVideoCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartVideoCallIntent;
      break;
    case 7:
      if (one-time initialization token for emptyAddCallParticipantIntent != -1)
      {
        OUTLINED_FUNCTION_5_62(&one-time initialization token for emptyAddCallParticipantIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyAddCallParticipantIntent;
      break;
    default:
      if (one-time initialization token for emptyAnswerCallIntent != -1)
      {
        OUTLINED_FUNCTION_4_55(&one-time initialization token for emptyAnswerCallIntent);
      }

      v1 = &static PhoneCallIntentClassNames.emptyAnswerCallIntent;
      break;
  }

  v2 = *v1;
  swift_getObjectType();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INIntentCmMd, &_sSo8INIntentCmMR);
  v3 = String.init<A>(describing:)();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id one-time initialization function for emptyAnswerCallIntent()
{
  result = [objc_allocWithZone(INAnswerCallIntent) init];
  static PhoneCallIntentClassNames.emptyAnswerCallIntent = result;
  return result;
}

id one-time initialization function for emptyAddCallParticipantIntent()
{
  result = [objc_allocWithZone(INAddCallParticipantIntent) init];
  static PhoneCallIntentClassNames.emptyAddCallParticipantIntent = result;
  return result;
}

id one-time initialization function for emptyHangUpCallIntent()
{
  result = [objc_allocWithZone(INHangUpCallIntent) init];
  static PhoneCallIntentClassNames.emptyHangUpCallIntent = result;
  return result;
}

id one-time initialization function for emptyIncomingCallSearchIntent()
{
  result = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
  static PhoneCallIntentClassNames.emptyIncomingCallSearchIntent = result;
  return result;
}

id one-time initialization function for emptySearchCallHistoryIntent()
{
  result = [objc_allocWithZone(INSearchCallHistoryIntent) init];
  static PhoneCallIntentClassNames.emptySearchCallHistoryIntent = result;
  return result;
}

id one-time initialization function for emptyStartCallIntent()
{
  result = [objc_allocWithZone(INStartCallIntent) init];
  static PhoneCallIntentClassNames.emptyStartCallIntent = result;
  return result;
}

id one-time initialization function for emptyStartAudioCallIntent()
{
  result = [objc_allocWithZone(INStartAudioCallIntent) init];
  static PhoneCallIntentClassNames.emptyStartAudioCallIntent = result;
  return result;
}

id one-time initialization function for emptyStartVideoCallIntent()
{
  result = [objc_allocWithZone(INStartVideoCallIntent) init];
  static PhoneCallIntentClassNames.emptyStartVideoCallIntent = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallIntentClassNames and conformance PhoneCallIntentClassNames()
{
  result = lazy protocol witness table cache variable for type PhoneCallIntentClassNames and conformance PhoneCallIntentClassNames;
  if (!lazy protocol witness table cache variable for type PhoneCallIntentClassNames and conformance PhoneCallIntentClassNames)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallIntentClassNames and conformance PhoneCallIntentClassNames);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PhoneCallIntentClassNames] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PhoneCallIntentClassNames] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PhoneCallIntentClassNames] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PhoneCallIntentClassNames] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallIntentClassNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallIntentClassNames(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneCallInvite.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t key path setter for PhoneCallInvite.Builder.inviteType : PhoneCallInvite.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 104))(v6);
}

uint64_t PhoneCallInvite.Builder.inviteType.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType;
  OUTLINED_FUNCTION_4_4(v2 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType, a1);
  return outlined init with copy of SpeakableString?(v2 + v4, a2);
}

uint64_t PhoneCallInvite.Builder.inviteType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for PhoneCallInvite.Builder.participants : PhoneCallInvite.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t PhoneCallInvite.Builder.participants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PhoneCallInvite.Builder.init()()
{
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t PhoneCallInvite.Builder.__allocating_init(inviteType:)()
{
  OUTLINED_FUNCTION_8_7();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_40_0();
  PhoneCallInvite.Builder.init(inviteType:)(v1);
  return v0;
}

uint64_t PhoneCallInvite.Builder.init(inviteType:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_5_63();
  v6 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType;
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  *(v1 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  (*(*(v7 - 8) + 32))(v2, a1, v7);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v2, v1 + v6);
  swift_endAccess();
  return v1;
}

uint64_t PhoneCallInvite.Builder.withInviteType(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_63();
  outlined init with copy of SpeakableString?(a1, v1);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 104))(v1);
}

uint64_t PhoneCallInvite.Builder.withInviteType(print:speak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v11 - v6;

  SpeakableString.init(print:speak:)();
  v8 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v9 + 104))(v7);
}

uint64_t PhoneCallInvite.Builder.withParticipants(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 128);

  v1(v2);
}

uint64_t PhoneCallInvite.Builder.build()()
{
  type metadata accessor for PhoneCallInvite(0);
  v0 = swift_allocObject();

  PhoneCallInvite.init(builder:)(v1);
  return v0;
}

uint64_t PhoneCallInvite.__allocating_init(builder:)()
{
  OUTLINED_FUNCTION_8_7();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_40_0();
  PhoneCallInvite.init(builder:)(v1);
  return v0;
}

uint64_t PhoneCallInvite.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType);

  return v0;
}

uint64_t PhoneCallInvite.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType);

  return swift_deallocClassInstance();
}

uint64_t key path setter for PhoneCallInvite.mockGlobals : PhoneCallInvite(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void *PhoneCallMetrics.mockGlobals.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 16, a2);
  v3 = *(v2 + 16);
  v4 = v3;
  return v3;
}

const char **PhoneCallInvite.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  v6 = __chkstk_darwin(v5);
  v8 = v16 - v7;
  v1[2] = 0;
  (*(*a1 + 96))(v6);
  v9 = outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType);
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants) = (*(*a1 + 120))(v9);
  if (((*(*v1 + 19))() & 1) == 0)
  {
    v10 = static Log.siriDialogEngine.getter();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_424FD0;
    v16[1] = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB6InviteCmMd, &_s27PhoneCallFlowDelegatePlugin0aB6InviteCmMR);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:type:_:)("Building an instance of %s without all required inputs", v16[0]);
  }

  return v2;
}

uint64_t PhoneCallInvite.__allocating_init(inviteType:participants:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for PhoneCallInvite.Builder(0);
  v6 = swift_allocObject();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(v6 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  PhoneCallInvite.Builder.withInviteType(_:)(a1);

  OUTLINED_FUNCTION_2_0();
  v12 = (*(v11 + 176))(a2);

  (*(v3 + 144))(v12);
  v13 = OUTLINED_FUNCTION_40_0();
  outlined destroy of SpeakableString?(v13);
  return v3;
}

Swift::Bool __swiftcall PhoneCallInvite.allRequiredInputsHaveValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType, &v8 - v3);
  v5 = type metadata accessor for SpeakableString();
  v6 = __swift_getEnumTagSinglePayload(v4, 1, v5) != 1;
  outlined destroy of SpeakableString?(v4);
  return v6;
}

uint64_t PhoneCallInvite.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_5_63();
  v10 = a1 == 0x7954657469766E69 && a2 == 0xEA00000000006570;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType, v4);
    v11 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
    {
      result = outlined destroy of SpeakableString?(v4);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v11 - 8) + 32))(boxed_opaque_existential_1, v4, v11);
  }

  else
  {
    if (a1 != 0x7069636974726170 || a2 != 0xEC00000073746E61)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants);
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    *a3 = v15;
  }
}

uint64_t PhoneCallInvite.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallInvite.CodingKeys.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t PhoneCallInvite.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7069636974726170;
  }

  else
  {
    return 0x7954657469766E69;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallInvite::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallInvite.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallInvite::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallInvite.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallInvite.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallInvite.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallInvite::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhoneCallInvite.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallInvite::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallInvite.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallInvite.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallInvite.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallInvite.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType);

  return v0;
}

uint64_t PhoneCallInvite.__deallocating_deinit()
{
  PhoneCallInvite.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallInvite.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE6InviteC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE6InviteC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_81();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_0(v11, v12, &protocol conformance descriptor for SpeakableString);
  OUTLINED_FUNCTION_10_53();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants);
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    lazy protocol witness table accessor for type [PhonePerson] and conformance <A> [A](&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson, &protocol conformance descriptor for DialogPerson, &protocol conformance descriptor for <A> [A]);
    OUTLINED_FUNCTION_10_53();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys);
  }

  return result;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhoneCallInvite.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallInvite.init(from:)(a1);
  return v2;
}

id *PhoneCallInvite.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = v14 - v6;
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE6InviteC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE6InviteC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneCallInvite(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SpeakableString();
    v16 = 0;
    OUTLINED_FUNCTION_0_81();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_0(v9, v10, &protocol conformance descriptor for SpeakableString);
    OUTLINED_FUNCTION_9_50();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of SpeakableString?(v7, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    v15 = 1;
    lazy protocol witness table accessor for type [PhonePerson] and conformance <A> [A](&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson, &protocol conformance descriptor for DialogPerson, &protocol conformance descriptor for <A> [A]);
    OUTLINED_FUNCTION_9_50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = OUTLINED_FUNCTION_4_56();
    v13(v12);
    *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants) = v14[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t lazy protocol witness table accessor for type [PhonePerson] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_0(a2, type metadata accessor for PhonePerson, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallInvite(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 136))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallInvite@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneCallInvite(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhoneCallInvite.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneCallInvite.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhoneCallMetrics.Builder.timeToEstablish.setter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_11_2(v2 + 16, a2);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3 & 1;
  return result;
}

uint64_t PhoneCallMetrics.Builder.duration.setter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_11_2(v2 + 32, a2);
  *(v2 + 32) = a1;
  *(v2 + 40) = v3 & 1;
  return result;
}

uint64_t PhoneCallMetrics.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t PhoneCallMetrics.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return result;
}

uint64_t PhoneCallMetrics.Builder.withTimeToEstablish(_:)(uint64_t a1, char a2)
{
  (*(*v2 + 104))(a1, a2 & 1);
}

uint64_t PhoneCallMetrics.Builder.withDuration(_:)(uint64_t a1, char a2)
{
  (*(*v2 + 128))(a1, a2 & 1);
}

uint64_t PhoneCallMetrics.Builder.build()()
{
  type metadata accessor for PhoneCallMetrics();
  v0 = swift_allocObject();

  PhoneCallMetrics.init(builder:)(v1);
  return v0;
}

uint64_t PhoneCallMetrics.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_81();
  v2 = swift_allocObject();
  PhoneCallMetrics.init(builder:)(a1);
  return v2;
}

uint64_t key path setter for PhoneCallMetrics.mockGlobals : PhoneCallMetrics(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void PhoneCallMetrics.mockGlobals.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2(v2 + 16, a2);
  v4 = *(v2 + 16);
  *(v2 + 16) = a1;
}

uint64_t PhoneCallMetrics.init(builder:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = (*(*a1 + 96))(a1);
  *(v2 + 32) = v4 & 1;
  v5 = (*(*a1 + 120))();
  v7 = v6;

  *(v2 + 40) = v5;
  *(v2 + 48) = v7 & 1;
  return v2;
}

uint64_t PhoneCallMetrics.__allocating_init(timeToEstablish:duration:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  type metadata accessor for PhoneCallMetrics.Builder();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  swift_beginAccess();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4 & 1;
  return (*(v4 + 144))(v9);
}

uint64_t PhoneCallMetrics.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x73456F54656D6974;
  v8 = a1 == 0x73456F54656D6974 && a2 == 0xEF6873696C626174;
  if (v8 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v3 + 24);
  }

  else
  {
    result = 0x6E6F697461727564;
    if (a1 != 0x6E6F697461727564 || a2 != 0xE800000000000000)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v9 = *(v3 + 40);
  }

  *(a3 + 24) = &type metadata for Double;
  *a3 = v9;
  return result;
}

uint64_t PhoneCallMetrics.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallMetrics.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t PhoneCallMetrics.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x73456F54656D6974;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallMetrics.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallMetrics.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallMetrics.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallMetrics.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhoneCallMetrics.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallMetrics.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallMetrics.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallMetrics.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallMetrics.__deallocating_deinit()
{
  OUTLINED_FUNCTION_1_81();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE7MetricsC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE7MetricsC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys);
  }

  return result;
}

uint64_t PhoneCallMetrics.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_81();
  v2 = swift_allocObject();
  PhoneCallMetrics.init(from:)(a1);
  return v2;
}

uint64_t PhoneCallMetrics.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE7MetricsC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE7MetricsC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneCallMetrics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    *(v1 + 24) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 32) = v11 & 1;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    *(v3 + 40) = v13;
    *(v3 + 48) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t lazy protocol witness table accessor for type PhoneCallMetrics and conformance PhoneCallMetrics(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhoneCallMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallMetrics(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 136))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallMetrics@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallMetrics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t PhoneCallNLConstants.rawValue.getter(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0x6C6143656E6F6870;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      v3 = 9;
      goto LABEL_15;
    case 6:
      v3 = 5;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
      result = 0x6464416C69616D65;
      break;
    case 10:
      result = 0x75466E6F73726570;
      break;
    case 11:
      result = 0x69466E6F73726570;
      break;
    case 12:
      result = 0x614C6E6F73726570;
      break;
    case 13:
      result = 0x54746361746E6F63;
      break;
    case 14:
      result = 0x69614D6563696F76;
      break;
    case 15:
      result = 0x6C6143656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t PhoneCallNLConstants.canonicalName.getter(char a1)
{
  _StringGuts.grow(_:)(20);

  PhoneCallNLConstants.rawValue.getter(a1);

  specialized Collection.prefix(_:)(1);
  v2 = Substring.uppercased()();

  specialized Collection.dropFirst(_:)(1uLL);
  lazy protocol witness table accessor for type Substring and conformance Substring();

  String.append<A>(contentsOf:)();

  String.append(_:)(v2);

  return 0xD000000000000012;
}

unint64_t VoicemailVerbSemantics.canonicalName.getter(uint64_t a1, void (*a2)(uint64_t), char a3)
{
  a2(a1);
  String.uppercased()();

  OUTLINED_FUNCTION_7_51(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_10_54();
  OUTLINED_FUNCTION_6_58(v12, v13, v14, v15, v16, v17, v18);

  v22 = PhoneCallNLConstants.canonicalName.getter(a3);
  v19._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20 = String.uppercased()();
  String.append(_:)(v20);

  return v22;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_51();
    if ((v4 & 0x2000000000000000) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = 7;
    if (((v4 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    result = OUTLINED_FUNCTION_11_41(v2, v3);
    if (v9)
    {
      result = v8;
    }

    if (4 * v6 >= result >> 14)
    {
      String.subscript.getter();
      OUTLINED_FUNCTION_0_82();
      return OUTLINED_FUNCTION_1_82();
    }
  }

  __break(1u);
  return result;
}

uint64_t PhoneCallVerbSemantics.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x636162206C6C6163;
      break;
    case 2:
    case 3:
      result = 0x656D697465636166;
      break;
    case 4:
      result = 0x7072656B61657073;
      break;
    case 5:
      result = 1684957542;
      break;
    case 6:
      result = 0x6C6169646572;
      break;
    case 7:
      result = 0x79666972616C63;
      break;
    case 8:
      result = 1684104562;
      break;
    case 9:
      result = 0x6D7269666E6F63;
      break;
    case 10:
      result = 0x726577736E61;
      break;
    case 11:
      result = 0x70755F676E6168;
      break;
    case 12:
      result = 0x6574656C6564;
      break;
    case 13:
      result = 1852403562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PhoneCallHandleType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x656E6F6870;
  }
}

Swift::String __swiftcall PhoneCallNLConstants.boundValue(_:)(Swift::String a1)
{
  v8 = PhoneCallNLConstants.canonicalName.getter(v1);
  v9 = v2;
  v3._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = String.uppercased()();
  String.append(_:)(v4);

  v5 = v8;
  v6 = v9;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallNLConstants_optional __swiftcall PhoneCallNLConstants.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallNLConstants.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallNLConstants_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallNLConstants@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallNLConstants_optional *a2@<X8>)
{
  result.value = PhoneCallNLConstants.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallNLConstants()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallNLConstants.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t PhoneCallConfirmationSemantics.canonicalName.getter()
{
  String.uppercased()();

  OUTLINED_FUNCTION_7_51(v0, v1, v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_10_54();
  OUTLINED_FUNCTION_6_58(v8, v9, v10, v11, v12, v13, v14);

  v18 = PhoneCallNLConstants.canonicalName.getter(6);
  v15._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16 = String.uppercased()();
  String.append(_:)(v16);

  return v18;
}

uint64_t PhoneCallConfirmationSemantics.rawValue.getter(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x206D7269666E6F63;
      break;
    case 3:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallConfirmationSemantics_optional __swiftcall PhoneCallConfirmationSemantics.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallConfirmationSemantics.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallConfirmationSemantics_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallConfirmationSemantics@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallConfirmationSemantics_optional *a2@<X8>)
{
  result.value = PhoneCallConfirmationSemantics.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallConfirmationSemantics()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallConfirmationSemantics.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t VoicemailVerbSemantics.rawValue.getter(char a1)
{
  result = 2036427888;
  switch(a1)
  {
    case 1:
      result = 0x746165706572;
      break;
    case 2:
      result = 1885956979;
      break;
    case 3:
      result = 0x6573756170;
      break;
    case 4:
      result = 0x656D75736572;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::VoicemailVerbSemantics_optional __swiftcall VoicemailVerbSemantics.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailVerbSemantics.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::VoicemailVerbSemantics_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoicemailVerbSemantics@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoicemailVerbSemantics_optional *a2@<X8>)
{
  result.value = VoicemailVerbSemantics.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoicemailVerbSemantics()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = VoicemailVerbSemantics.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallVerbSemantics_optional __swiftcall PhoneCallVerbSemantics.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallVerbSemantics.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallVerbSemantics_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallVerbSemantics@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallVerbSemantics_optional *a2@<X8>)
{
  result.value = PhoneCallVerbSemantics.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallVerbSemantics()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallVerbSemantics.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallHandleType_optional __swiftcall PhoneCallHandleType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallHandleType.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneCallHandleType_email;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneCallHandleType_unknownDefault;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallHandleType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallHandleType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallHandleType_optional *a2@<X8>)
{
  result.value = PhoneCallHandleType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallHandleType()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallHandleType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE500000000000000;
  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_51();
    OUTLINED_FUNCTION_11_41(v1, v2);
    String.subscript.getter();
    OUTLINED_FUNCTION_0_82();
    return OUTLINED_FUNCTION_1_82();
  }

  return result;
}

{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v2 = *(v1 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, v3, v2);
    if (v4)
    {
      v5 = v2;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      specialized Array.subscript.getter(0);
      OUTLINED_FUNCTION_0_82();
      return OUTLINED_FUNCTION_1_82();
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallNLConstants and conformance PhoneCallNLConstants()
{
  result = lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants;
  if (!lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics()
{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics()
{
  result = lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics;
  if (!lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics()
{
  result = lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics;
  if (!lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallHandleType and conformance PhoneCallHandleType()
{
  result = lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType;
  if (!lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallNLConstants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallNLConstants(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallConfirmationSemantics(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VoicemailVerbSemantics(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PhoneCallVerbSemantics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallVerbSemantics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallHandleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void static PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:)()
{
  OUTLINED_FUNCTION_66();
  v4 = v3;
  v75 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  OUTLINED_FUNCTION_21(v6);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = &v70 - v8;
  v10 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_7();
  v85 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v84 = &v70 - v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_22_22();
  v74 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  v73 = v19;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v83 = __swift_project_value_buffer(v21, static Logger.siriPhone);
  v22 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_65_0();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v0, "#PhoneCallNLContextProvider makeContextForHandleIntent", v24, 2u);
    OUTLINED_FUNCTION_26_0(v24);
  }

  NLContextUpdate.init()();
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v4, ObjectType, &protocol descriptor for CallingIntent))
  {
    v64 = v74;
    (*(v73 + 8))(v1, v74);
    goto LABEL_32;
  }

  v27 = v26;
  v72 = v1;
  v82 = v10;
  v28 = swift_getObjectType();
  v29 = *(*(v27 + 8) + 8);
  v30 = *(v29 + 8);
  v31 = v4;
  v32 = v30(v28, v29);
  if (!v32)
  {
    v65 = _swiftEmptyArrayStorage;
LABEL_29:
    v66 = v72;
    if (v65[2])
    {
      NLContextUpdate.rrEntities.setter();

      v67 = v75;
      v68 = v66;
      v64 = v74;
      (*(v73 + 32))(v75, v68, v74);
      v69 = 0;
LABEL_33:
      __swift_storeEnumTagSinglePayload(v67, v69, 1, v64);
      OUTLINED_FUNCTION_65();
      return;
    }

    v64 = v74;
    (*(v73 + 8))(v72, v74);

LABEL_32:
    v69 = 1;
    v67 = v75;
    goto LABEL_33;
  }

  v33 = v32;
  v34 = specialized Array.count.getter(v32);
  v71 = v31;
  if (!v34)
  {
    v92 = _swiftEmptyArrayStorage;
LABEL_28:

    v31 = v71;
    v65 = v92;
    goto LABEL_29;
  }

  v36 = v34;
  if (v34 >= 1)
  {
    v37 = 0;
    v38 = v84;
    v90 = (v85 + 32);
    v91 = v33 & 0xC000000000000001;
    v88 = (v85 + 8);
    v89 = (v85 + 16);
    v92 = _swiftEmptyArrayStorage;
    *&v35 = 136315138;
    v76 = v35;
    v39 = v82;
    v77 = v2;
    v78 = v9;
    v80 = v33;
    v81 = v15;
    v79 = v34;
    do
    {
      if (v91)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v33 + 8 * v37 + 32);
      }

      v41 = v40;
      INPerson.toRREntity()();
      if (__swift_getEnumTagSinglePayload(v9, 1, v39) == 1)
      {

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      }

      else
      {
        v87 = *v90;
        v87(v2, v9, v39);
        v86 = *v89;
        v86(v38, v2, v39);
        v42 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_39_5();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v38;
          v45 = OUTLINED_FUNCTION_42();
          v46 = OUTLINED_FUNCTION_36();
          v93 = v46;
          *v45 = v76;
          lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, &type metadata accessor for RREntity, &protocol conformance descriptor for RREntity);
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          v50 = *v88;
          v51 = v44;
          v2 = v77;
          (*v88)(v51, v82);
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v93);
          v39 = v82;

          *(v45 + 4) = v52;
          _os_log_impl(&dword_0, v42, v33, "#PhoneCallNLv4ContextProvider makeContextForHandleIntent appending RREntity %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          v53 = v46;
          v9 = v78;
          OUTLINED_FUNCTION_26_0(v53);
          OUTLINED_FUNCTION_26_0(v45);
        }

        else
        {

          v50 = *v88;
          (*v88)(v38, v39);
        }

        v54 = v81;
        v86(v81, v2, v39);
        v55 = v92;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_92_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v55 = v62;
        }

        v58 = v55[2];
        v57 = v55[3];
        v92 = v55;
        if (v58 >= v57 >> 1)
        {
          OUTLINED_FUNCTION_17_33(v57);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v92 = v63;
        }

        v50(v2, v39);
        v92[2] = v58 + 1;
        OUTLINED_FUNCTION_36_5();
        v87((v60 + v59 + *(v61 + 72) * v58), v54, v39);
        v38 = v84;
        v36 = v79;
      }

      ++v37;
    }

    while (v36 != v37);
    goto LABEL_28;
  }

  __break(1u);
}

void static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = OUTLINED_FUNCTION_12_1(v13, static Logger.siriPhone);
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_6_43(v15))
  {
    v16 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_59(v16);
    OUTLINED_FUNCTION_16_38(&dword_0, v17, v18, "#PhoneCallNLContextProvider needsConfirmationContext");
    OUTLINED_FUNCTION_26_22();
  }

  static PhoneCallNLContextProvider.makeGenericConfirmationContextFor(parameter:)(v3, v1);

  v19._countAndFlagsBits = v3;
  v19._object = v1;
  if ((PhoneCallSlotNames.init(rawValue:)(v19).value & 0xFE) == 4)
  {
    NLContextUpdate.weightedPromptResponseTargets.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    *(inited + 32) = PhoneCallNLConstants.canonicalName.getter(3);
    *(inited + 40) = v21;
    *(inited + 48) = PhoneCallNLConstants.canonicalName.getter(13);
    *(inited + 56) = v22;
    specialized Array.append<A>(contentsOf:)(inited);
    NLContextUpdate.weightedPromptResponseTargets.setter();
  }

  (*(v8 + 32))(v5, v12, v6);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v6);
  OUTLINED_FUNCTION_65();
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames static PhoneCallNLContextProvider.makeNeedsValueContextFor(parameter:)(uint64_t a1, void *a2)
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v5 = OUTLINED_FUNCTION_66_10(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_38_17();
  v25 = v6;
  v7 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_20_30(v7, v8, v9, v10, v11, v12, &type metadata for String, v13, &type metadata for String, v7, v7, v7, 1, 2, 95, 0xE100000000000000, v25);
  OUTLINED_FUNCTION_17_25();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v26 = PhoneCallNLConstants.canonicalName.getter(6);
  v27 = v14;
  v15._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16 = String.uppercased()();
  String.append(_:)(v16);

  *(v5 + 32) = v26;
  *(v5 + 40) = v27;
  result = NLContextUpdate.weightedPromptResponseOptions.setter();
  if (a2)
  {

    v18._countAndFlagsBits = a1;
    v18._object = a2;
    result = PhoneCallSlotNames.init(rawValue:)(v18).value;
    if (result - 4 < 2)
    {
LABEL_5:
      OUTLINED_FUNCTION_102_0();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_424FF0;
      *(v19 + 32) = PhoneCallNLConstants.canonicalName.getter(3);
      *(v19 + 40) = v20;
      *(v19 + 48) = PhoneCallNLConstants.canonicalName.getter(5);
      *(v19 + 56) = v21;
      OUTLINED_FUNCTION_65_11();
      NLContextUpdate.weightedPromptStrict.setter();
      static PhoneCallNLContextProvider.makeSDAForNeedsValueForContact()();
      return NLContextUpdate.nluSystemDialogActs.setter();
    }

    if (result != PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_dateCreated)
    {
      if (result != PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_participants)
      {
        return result;
      }

      goto LABEL_5;
    }

    v22 = OUTLINED_FUNCTION_66_10(v4);
    *(v22 + 16) = v24;
    *(v22 + 32) = PhoneCallNLConstants.canonicalName.getter(7);
    *(v22 + 40) = v23;
    OUTLINED_FUNCTION_65_11();
    return NLContextUpdate.weightedPromptStrict.setter();
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames static PhoneCallNLContextProvider.makeGenericConfirmationContextFor(parameter:)(uint64_t a1, void *a2)
{
  result = static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()(a1);
  if (a2)
  {

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    result = PhoneCallSlotNames.init(rawValue:)(v5).value;
    if ((result & 0xFE) == 4)
    {
      OUTLINED_FUNCTION_3_71();
      static PhoneCallNLContextProvider.makeSDAForConfirmation()();
      return NLContextUpdate.nluSystemDialogActs.setter();
    }
  }

  return result;
}

uint64_t static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()(uint64_t a1)
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_102_0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_24_26();
  v3 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_8_53(v3, v4, v5, v6, v7, v8, v9, v10, &type metadata for String, v3, v3, v3, v40, v42, v44);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15(v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_53_17();
  v46 = PhoneCallNLConstants.canonicalName.getter(6);
  v48 = v17;
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_47_19();
  v18 = String.uppercased()();
  String.append(_:)(v18);

  *(v2 + 32) = v46;
  *(v2 + 40) = v48;
  OUTLINED_FUNCTION_50_17();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_8_53(v19, v20, v21, v22, v23, v24, v25, v26, v38, v39, v3, v3, v41, v43, v45);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15(v27, v28, v29, v30, v31, v32);

  v47 = PhoneCallNLConstants.canonicalName.getter(6);
  v49 = v33;
  OUTLINED_FUNCTION_47_19();
  v34 = String.uppercased()();
  String.append(_:)(v34);

  *(v2 + 48) = v47;
  *(v2 + 56) = v49;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  v35 = OUTLINED_FUNCTION_66_10(v1);
  *(v35 + 16) = xmmword_424FD0;
  *(v35 + 32) = PhoneCallNLConstants.canonicalName.getter(6);
  *(v35 + 40) = v36;
  OUTLINED_FUNCTION_65_11();
  return NLContextUpdate.weightedPromptStrict.setter();
}

void static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v49 = v5;
  v50 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_22_22();
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  OUTLINED_FUNCTION_7();
  v52 = v11;
  v53 = v10;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_91();
  v51 = v16;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  v47 = v18;
  v48 = v17;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v54 = v4;
  v55 = v2;
  _s27PhoneCallFlowDelegatePlugin0A25ContactDisplayHintFactoryV5build3for11deviceState14appInfoBuilderSay07SiriKitC00gH0VGSay0Q13AppResolution0S0CG_AH06DeviceM0_pAA0sO8Building_ptFZTf4nnen_nAA0soP0C_Tt1t2g5();
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_426980;
  if (one-time initialization token for appName != -1)
  {
    OUTLINED_FUNCTION_14_44();
    swift_once();
  }

  *(v23 + 32) = TerminalOntologyNode.name.getter();
  *(v23 + 40) = v24;
  if (one-time initialization token for reference != -1)
  {
    OUTLINED_FUNCTION_25_23(&one-time initialization token for reference);
  }

  *(v23 + 48) = TerminalOntologyNode.name.getter();
  *(v23 + 56) = v25;
  if (one-time initialization token for confirmation != -1)
  {
    swift_once();
  }

  *(v23 + 64) = TerminalOntologyNode.name.getter();
  *(v23 + 72) = v26;
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v27 = OUTLINED_FUNCTION_66_10(v22);
  *(v27 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_49_15();
  v58 = 95;
  v59 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v56 = PhoneCallNLConstants.canonicalName.getter(6);
  v57 = v28;
  v29._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30 = String.uppercased()();
  String.append(_:)(v30);

  v31 = v57;
  *(v27 + 32) = v56;
  *(v27 + 40) = v31;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  v32 = NLContextUpdate.displayHints.setter();
  __chkstk_darwin(v32);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17SiriAppResolution0E0CG_0D8NLUTypes0D27_Nlu_External_UserDialogActVs5NeverOTg5();
  v34 = v33;
  Siri_Nlu_External_SystemGaveOptions.init()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v52 + 16))(v14, v51, v53);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = OUTLINED_FUNCTION_12_1(v35, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_42();
    v39 = OUTLINED_FUNCTION_36();
    v56 = v39;
    *v38 = 136315138;
    OUTLINED_FUNCTION_19_3();
    swift_beginAccess();
    v40 = OUTLINED_FUNCTION_57_14();
    v41(v40, v0, v50);
    v42 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v34);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v56);

    *(v38 + 4) = v44;
    OUTLINED_FUNCTION_24_12(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "#PhoneCallNLContextProvider makeNLContextUpdateForDisambiguation: sending disambiguation system dialog acts: %s");
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_26_0(v39);
    OUTLINED_FUNCTION_26_0(v38);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v46 = OUTLINED_FUNCTION_30_24();
  *(v46 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  (*(v7 + 16))(v36 + v46, v0, v50);
  NLContextUpdate.nluSystemDialogActs.setter();
  static PhoneReferenceResolution.appsToRrEntities(apps:device:)(v54, v55);
  NLContextUpdate.rrEntities.setter();
  (*(v52 + 8))(v51, v53);
  (*(v47 + 32))(v49, v21, v48);
  (*(v7 + 8))(v0, v50);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(void *a1, void *a2)
{
  OUTLINED_FUNCTION_35_0();
  outlined init with copy of SignalProviding(a2, v2 + *(v5 + class metadata base offset for PhoneCallNLContextProvider + 16));
  outlined init with copy of SignalProviding(a1, v2 + *(*v2 + class metadata base offset for PhoneCallNLContextProvider + 24));
  v6 = DefaultNLContextProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_3();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = OUTLINED_FUNCTION_12_1(v7, static Logger.siriPhone);
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_65_0();
    *v10 = 0;
    OUTLINED_FUNCTION_6_44(&dword_0, v11, v12, "#PhoneCallNLContextProvider makeContextForHandleIntent");
    OUTLINED_FUNCTION_26_0(v10);
  }

  static PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:)();
  a3(v3);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t PhoneCallNLContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = OUTLINED_FUNCTION_12_1(v8, static Logger.siriPhone);
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_65_0();
    *v11 = 0;
    OUTLINED_FUNCTION_6_44(&dword_0, v12, v13, "#PhoneCallNLContextProvider makeContextForConfirmIntent");
    OUTLINED_FUNCTION_26_0(v11);
  }

  static PhoneCallNLContextProvider.makeContextForConfirmIntent()();
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  a3(v7);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

void PhoneCallNLContextProvider.makeNeedsConfirmationContextFor(intent:parameter:resolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v24);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  v27 = &a9 - v26;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = OUTLINED_FUNCTION_12_1(v28, static Logger.siriPhone);
  v30 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_6_43(v30))
  {
    v31 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_59(v31);
    OUTLINED_FUNCTION_16_38(&dword_0, v32, v33, "#PhoneCallNLContextProvider makeNeedsConfirmationContextFor");
    OUTLINED_FUNCTION_26_22();
  }

  static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)();
  v23(v27);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_65();
}

void PhoneCallNLContextProvider.makeNeedsValueContextFor(intent:parameter:resolutionResult:_:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_50_3();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = OUTLINED_FUNCTION_12_1(v9, static Logger.siriPhone);
  v11 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_6_43(v11))
  {
    v12 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_59(v12);
    OUTLINED_FUNCTION_16_38(&dword_0, v13, v14, "#PhoneCallNLContextProvider makeNeedsValueContextFor");
    OUTLINED_FUNCTION_26_22();
  }

  static PhoneCallNLContextProvider.makeNeedsValueContextFor(parameter:)(v6, v4);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v2(v0);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = OUTLINED_FUNCTION_12_1(v12, static Logger.siriPhone);
  v14 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_6_43(v14))
  {
    v15 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_59(v15);
    OUTLINED_FUNCTION_16_38(&dword_0, v16, v17, "#PhoneCallNLContextProvider makeNeedsDisambiguationContextFor");
    OUTLINED_FUNCTION_26_22();
  }

  v18 = [v7 disambiguationItems];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = *(v19 + 16);

  v21 = &selRef_alternatives;
  if (v20)
  {
    v21 = &selRef_disambiguationItems;
  }

  v22 = [v7 *v21];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v3;
  v25 = *(*v1 + class metadata base offset for PhoneCallNLContextProvider + 40);

  v25(v11, v9, v23, partial apply for closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:), v24);

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for NLContextUpdate();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  a2(v6);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t PhoneCallNLContextProvider.makeEnableAppForSiriContextFor(app:_:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  static PhoneCallNLContextProvider.makeTCCConfirmationContext(app:)(a1);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  a2(v7);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

void static PhoneCallNLContextProvider.makeTCCConfirmationContext(app:)(uint64_t a1)
{
  static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()(a1);
  v1 = [objc_allocWithZone(SAAceConfirmationContext) init];
  [v1 setReason:SAAceConfirmationReasonAUTHORIZE_SIRIKIT_APPValue];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = OUTLINED_FUNCTION_48_0(v2);
  *(v3 + 16) = xmmword_426260;
  *(v3 + 32) = v1;
  v5 = v1;
  NLContextUpdate.conversationStateAttachments.setter();
  v4 = type metadata accessor for MachineUtteranceBuilder();
  OUTLINED_FUNCTION_41_1(v4);
  MachineUtteranceBuilder.init()();
  App.appIdentifier.getter();
  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  dispatch thunk of MachineUtteranceBuilder.build()();

  NLContextUpdate.nlInput.setter();
  OUTLINED_FUNCTION_3_71();
  static PhoneCallNLContextProvider.makeSDAForConfirmation()();
  NLContextUpdate.nluSystemDialogActs.setter();
}

void PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(parameter:items:completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v49 = v2;
  v48 = v3;
  v43 = v4;
  v46 = v5;
  v47 = v6;
  v40 = *v0;
  v7 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  v42 = v8;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v41 = v11 - v10;
  OUTLINED_FUNCTION_15_0();
  v12 = type metadata accessor for CATOption();
  v13 = OUTLINED_FUNCTION_21(v12);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v44 = v7;
  v45 = swift_allocBox();
  v15 = v14;
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_102_0();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_50_17();
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7(v17, v18, v19, v20, v21, v22);

  v52 = PhoneCallNLConstants.canonicalName.getter(6);
  v53 = v23;
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_47_19();
  v24 = String.uppercased()();
  String.append(_:)(v24);

  v25 = v53;
  *(v16 + 32) = v52;
  *(v16 + 40) = v25;
  OUTLINED_FUNCTION_49_15();
  v51[0] = 32;
  v51[1] = 0xE100000000000000;
  v50[0] = 95;
  v50[1] = 0xE100000000000000;
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7(v26, v27, v28, v29, v30, v31);

  v52 = PhoneCallNLConstants.canonicalName.getter(6);
  v53 = v32;
  OUTLINED_FUNCTION_47_19();
  v33 = String.uppercased()();
  String.append(_:)(v33);

  v34 = v53;
  *(v16 + 48) = v52;
  *(v16 + 56) = v34;
  NLContextUpdate.weightedPromptResponseOptions.setter();

  v35._countAndFlagsBits = v47;
  v35._object = v46;
  if ((PhoneCallSlotNames.init(rawValue:)(v35).value & 0xFE) == 4)
  {
    v36 = specialized _arrayConditionalCast<A, B>(_:)(v43);
    if (v36)
    {
      v37 = v36;
      outlined init with copy of SignalProviding(v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 16), v51);
      outlined init with copy of SignalProviding(v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 24), v54);
      outlined init with copy of SignalProviding(v51, &v52);
      type metadata accessor for PhoneCallDisplayTextCATs(0);
      static CATOption.defaultMode.getter();
      type metadata accessor for CATGlobals();
      outlined init with copy of SignalProviding(v54, v50);
      CATGlobals.__allocating_init(device:)();
      v38 = CATWrapper.__allocating_init(options:globals:)();
      __swift_destroy_boxed_opaque_existential_1(v51);
      v54[5] = v38;
      OUTLINED_FUNCTION_102_0();
      v39 = swift_allocObject();
      v39[2] = v45;
      v39[3] = v37;
      v39[4] = v1;
      v39[5] = v48;
      v39[6] = v49;
      v39[7] = v40;

      PhoneContactDisplayHintFactory.build(for:_:)(v37, partial apply for closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(parameter:items:completion:), v39);

      outlined destroy of PhoneContactDisplayHintFactory(&v52);
    }
  }

  else
  {
    (*(v42 + 16))(v41, v15, v44);
    v48(v41);
    (*(v42 + 8))(v41, v44);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(parameter:items:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *))
{
  v7 = type metadata accessor for NLContextUpdate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();

  NLContextUpdate.displayHints.setter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_426980;
  *(v12 + 32) = PhoneCallNLConstants.canonicalName.getter(3);
  *(v12 + 40) = v13;
  *(v12 + 48) = PhoneCallNLConstants.canonicalName.getter(5);
  *(v12 + 56) = v14;
  *(v12 + 64) = PhoneCallNLConstants.canonicalName.getter(13);
  *(v12 + 72) = v15;
  swift_beginAccess();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  swift_endAccess();
  static PhoneCallNLContextProvider.getRREntities(persons:deviceState:)();
  swift_beginAccess();
  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  static PhoneCallNLContextProvider.makeSDAForDisambiguateContact(contacts:)(a3);
  swift_beginAccess();
  NLContextUpdate.nluSystemDialogActs.setter();
  swift_endAccess();
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  a5(v10);
  return (*(v8 + 8))(v10, v7);
}

void static PhoneCallNLContextProvider.getRREntities(persons:deviceState:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v47 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_16_2();
  v46 = v13;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_91();
  v49 = v15;
  OUTLINED_FUNCTION_15_0();
  v16 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  UUID.init()();
  v43 = UUID.uuidString.getter();
  v48 = v23;
  (*(v18 + 8))(v22, v16);
  v24 = specialized Array.count.getter(v1);
  v25 = 0;
  v44 = v11;
  v45 = (v11 + 32);
  v41 = v11 + 8;
  v42 = (v11 + 16);
  v50 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v24 == v25)
    {

      OUTLINED_FUNCTION_65();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_17;
      }

      v26 = *(v1 + 8 * v25 + 32);
    }

    v27 = v26;
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    INPerson.toRREntity()();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      ++v25;
    }

    else
    {
      v40 = *v45;
      v40(v49, v8, v9);

      GroupIdentifier.init(id:seq:)();
      type metadata accessor for GroupIdentifier();
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      v33 = v49;
      RREntity.group.setter();
      (*v42)(v46, v33, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v50 = v37;
      }

      v34 = v50[2];
      if (v34 >= v50[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v50 = v38;
      }

      v35 = v44;
      (*(v44 + 8))(v49, v9);
      v36 = v50;
      v50[2] = v34 + 1;
      v40(v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v46, v9);
      v25 = v28;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t static PhoneCallNLContextProvider.makeSDAForDisambiguateContact(contacts:)(uint64_t a1)
{
  v69 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v62 - v5;
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v80 = *(v6 - 8);
  __chkstk_darwin(v6);
  v84 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v62 - v9;
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  __chkstk_darwin(v13);
  v72 = &v62 - v14;
  v79 = a1;
  result = specialized Array.count.getter(a1);
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v18 = (v80 + 16);
    v83 = (v80 + 8);
    v75 = v80 + 32;
    v76 = v79 & 0xC000000000000001;
    v19 = _swiftEmptyArrayStorage;
    *&v16 = 136315138;
    v70 = v16;
    v77 = result;
    v78 = v12;
    v20 = v72;
    do
    {
      if (v76)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v79 + 8 * v17 + 32);
      }

      v22 = v21;
      type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
      swift_allocObject();
      v88 = UsoTaskBuilder_call_common_PhoneCall.init()();
      type metadata accessor for UsoEntityBuilder_common_PhoneCall();
      swift_allocObject();
      v87 = UsoEntityBuilder_common_PhoneCall.init()();
      type metadata accessor for UsoEntityBuilder_common_Person();
      swift_allocObject();
      v86 = UsoEntityBuilder_common_Person.init()();
      type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
      swift_allocObject();
      v85 = UsoEntityBuilder_common_PhoneNumber.init()();
      v23 = [v22 personHandle];
      v24 = v23;
      v82 = v17;
      if (v23)
      {
        v25 = [v23 label];

        if (v25)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      dispatch thunk of UsoEntityBuilder_common_PhoneNumber.setLabel(value:)();

      v81 = v22;
      v26 = [v22 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();

      dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();

      dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
      UsoTaskBuilder.toUserStatedTaskDialogAct()();
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.siriPhone);
      v28 = *v18;
      (*v18)(v12, v20, v6);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v89[0] = v32;
        *v31 = v70;
        v33 = v12;
        v28(v71, v12, v6);
        v34 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K27_Nlu_External_UserDialogActV_Tt0g5();
        v73 = v28;
        v74 = v19;
        v35 = v6;
        v37 = v36;
        v38 = *v83;
        v39 = v33;
        v20 = v72;
        (*v83)(v39, v35);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v37, v89);
        v6 = v35;
        v19 = v74;

        *(v31 + 4) = v40;
        _os_log_impl(&dword_0, v29, v30, "#PhoneCallNLContextProvider Building UserStatedTask for start call disambiguation: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v41 = v38;
        v28 = v73;
      }

      else
      {

        v41 = *v83;
        (*v83)(v12, v6);
      }

      v42 = v82;
      v28(v84, v20, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v45;
      }

      v43 = v81;
      v44 = v19[2];
      if (v44 >= v19[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v46;
      }

      v17 = v42 + 1;

      v41(v20, v6);
      v19[2] = v44 + 1;
      (*(v80 + 32))(v19 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v44, v84, v6);
      v12 = v78;
    }

    while (v77 != v17);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.siriPhone);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v89[0] = v51;
    *v50 = 136315138;
    v52 = Array.description.getter();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v89);

    *(v50 + 4) = v54;

    _os_log_impl(&dword_0, v48, v49, "#PhoneCallNLContextProvider Returning SystemGaveOptions for start call disambiguation: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
  }

  v55 = v64;
  Siri_Nlu_External_SystemGaveOptions.init()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  v56 = v66;
  Siri_Nlu_External_SystemDialogAct.init()();
  v57 = v65;
  v58 = v67;
  (*(v65 + 16))(v63, v55, v67);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v59 = v68;
  v60 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_424FD0;
  (*(v59 + 32))(v61 + v60, v56, v69);
  (*(v57 + 8))(v55, v58);
  return v61;
}

uint64_t static PhoneCallNLContextProvider.makeContextForConfirmIntent()(uint64_t a1, uint64_t a2)
{
  static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()(a1);
  static PhoneCallNLContextProvider.makeSDAForConfirmation()();
  return NLContextUpdate.nluSystemDialogActs.setter();
}

void static PhoneCallNLContextProvider.makeSDAForConfirmation()()
{
  OUTLINED_FUNCTION_66();
  v72 = v1;
  v3 = v2;
  v5 = v4;
  v82 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_2();
  v81 = v7;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_91();
  v80 = v9;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7();
  v83 = v11;
  v84 = v10;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  type metadata accessor for Siri_Nlu_External_SystemOffered();
  OUTLINED_FUNCTION_7();
  v85 = v16;
  v86 = v15;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_91();
  v87 = v18;
  OUTLINED_FUNCTION_15_0();
  v75 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v74 = v19;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_22_22();
  v22 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v23 = OUTLINED_FUNCTION_21(v22);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v24 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  OUTLINED_FUNCTION_7();
  v26 = v25;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_12_5();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v70 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_21(v34);
  OUTLINED_FUNCTION_49_0();
  v36 = __chkstk_darwin(v35);
  v38 = &v70 - v37;
  v39 = v5(0, v36);
  OUTLINED_FUNCTION_41_1(v39);
  v40 = v3();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v42 = OUTLINED_FUNCTION_48_0(v41);
  *(v42 + 16) = xmmword_426260;
  *(v42 + 32) = v40;
  v43 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v43);
  v78 = v40;

  v44 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v38, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserWantedToProceed.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v77 = v44;
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v79 = v33;
  v80 = v26;
  v45 = *(v26 + 16);
  v81 = v24;
  v45(v30, v33, v24);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  v46 = v87;
  Siri_Nlu_External_SystemOffered.init()();
  v47 = v74;
  v48 = v75;
  (*(v74 + 16))(v73, v0, v75);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v50 = v85;
  v49 = v86;
  v51 = OUTLINED_FUNCTION_57_14();
  v52(v51, v46, v49);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = OUTLINED_FUNCTION_12_1(v53, static Logger.siriPhone);
  v55 = static os_log_type_t.debug.getter();
  v56 = os_log_type_enabled(v54, v55);
  v58 = v83;
  v57 = v84;
  if (v56)
  {
    v59 = OUTLINED_FUNCTION_42();
    v76 = OUTLINED_FUNCTION_36();
    v88 = v76;
    *v59 = 136315138;
    OUTLINED_FUNCTION_19_3();
    swift_beginAccess();
    v60 = v71;
    (*(v58 + 16))(v71, v14, v57);
    v61 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v60);
    v63 = v47;
    v64 = v14;
    v65 = v57;
    v66 = v48;
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v88);

    *(v59 + 4) = v67;
    v48 = v66;
    v57 = v65;
    v14 = v64;
    v47 = v63;
    _os_log_impl(&dword_0, v54, v55, v72, v59, 0xCu);
    v55 = v76;
    __swift_destroy_boxed_opaque_existential_1(v76);
    v50 = v85;
    OUTLINED_FUNCTION_26_0(v55);
    v68 = v59;
    v49 = v86;
    OUTLINED_FUNCTION_26_0(v68);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v69 = OUTLINED_FUNCTION_30_24();
  *(v69 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  (*(v58 + 16))(&v55[v69], v14, v57);

  (*(v50 + 8))(v87, v49);
  (*(v47 + 8))(v0, v48);
  (*(v80 + 8))(v79, v81);
  (*(v58 + 8))(v14, v57);
  OUTLINED_FUNCTION_65();
}

uint64_t static PhoneCallNLContextProvider.buildVoiceMailListFollowUpOfferContext()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_12_1(v0, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_65_0();
    *v3 = 0;
    OUTLINED_FUNCTION_36_0(&dword_0, v4, v5, "#PhoneCallNLContextProvider buildVoiceMailListFollowUpOfferContext");
    OUTLINED_FUNCTION_26_0(v3);
  }

  static PhoneCallNLContextProvider.buildSingleVoiceMailFollowUpOfferContext()();
  v7 = NLContextUpdate.weightedPromptResponseOptions.modify();
  if (*v6)
  {
    v8 = v6;
    String.uppercased()();
    OUTLINED_FUNCTION_34_13();
    v27 = v9;
    v10 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_8_53(v10, v11, v12, v13, v14, v15, &type metadata for String, v16, &type metadata for String, v10, v10, v10, 95, 0xE100000000000000, v27);
    OUTLINED_FUNCTION_17_25();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v28 = PhoneCallNLConstants.canonicalName.getter(14);
    v29 = v17;
    v18._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
    v18._object = 0xE700000000000000;
    String.append(_:)(v18);
    v19 = String.uppercased()();
    String.append(_:)(v19);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v20 = *(*v8 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v21 = *v8;
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = v28;
    *(v22 + 40) = v29;
  }

  v7(v30, 0);
  v23 = [objc_allocWithZone(SAAceConfirmationContext) init];
  [v23 setReason:SAAceConfirmationReasonCONTINUE_READINGValue];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = OUTLINED_FUNCTION_48_0(v24);
  *(v25 + 16) = xmmword_426260;
  *(v25 + 32) = v23;
  return NLContextUpdate.conversationStateAttachments.setter();
}

uint64_t static PhoneCallNLContextProvider.makeContextForPlayingVoicemails()()
{
  static PhoneCallNLContextProvider.buildVoiceMailListFollowUpOfferContext()();
  OUTLINED_FUNCTION_7_52();
  static PhoneCallNLContextProvider.makeSDAForConfirmation()();
  return NLContextUpdate.nluSystemDialogActs.setter();
}

void static PhoneCallNLContextProvider.makeSDAForNeedsValueForContact()()
{
  OUTLINED_FUNCTION_66();
  v45 = type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_16_2();
  v44 = v1;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_91();
  v43 = v3;
  OUTLINED_FUNCTION_15_0();
  v47 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v11 = OUTLINED_FUNCTION_21(v10);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v50 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_2();
  v49 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_21(v19);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v23);
  v24 = UsoTaskBuilder_call_common_PhoneCall.init()();
  v25 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v25);
  v26 = UsoEntityBuilder_common_PhoneCall.init()();
  v27 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_41_1(v27);
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();

  v46 = v26;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = OUTLINED_FUNCTION_48_0(v28);
  *(v29 + 16) = xmmword_426260;
  *(v29 + 32) = v24;
  v30 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v30);
  v48 = v24;

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_SystemPrompted.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_SystemPrompted.target.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = OUTLINED_FUNCTION_12_1(v31, static Logger.siriPhone);
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_42();
    v45 = OUTLINED_FUNCTION_36();
    v51 = v45;
    *v34 = 136315138;
    OUTLINED_FUNCTION_19_3();
    swift_beginAccess();
    v35 = *(v13 + 16);
    LODWORD(v44) = v33;
    v36 = v49;
    v35(v49, v18, v50);
    v37 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K28_Nlu_External_SystemPromptedV_Tt0g5(v36);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v51);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v32, v44, "#PhoneCallNLContextProvider Returning NLUSystemPrompted for prompt for start call: %s", v34, 0xCu);
    v40 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_26_0(v40);
    OUTLINED_FUNCTION_26_22();
  }

  else
  {

    v36 = v49;
  }

  Siri_Nlu_External_SystemDialogAct.init()();
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v41 = v50;
  (*(v13 + 16))(v36, v18, v50);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v42 = OUTLINED_FUNCTION_30_24();
  *(v42 + 16) = xmmword_424FD0;
  (*(v5 + 32))(v42 + v9, v9, v47);

  (*(v13 + 8))(v18, v41);
  OUTLINED_FUNCTION_65();
}

uint64_t static PhoneCallNLContextProvider.buildSingleVoiceMailFollowUpOfferContext()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_12_1(v0, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_65_0();
    *v3 = 0;
    OUTLINED_FUNCTION_36_0(&dword_0, v4, v5, "#PhoneCallNLContextProvider buildSingleVoiceMailFollowUpOfferContext");
    OUTLINED_FUNCTION_26_0(v3);
  }

  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_426980;
  String.uppercased()();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_24_26();
  v7 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_8_53(v7, v8, v9, v10, v11, v12, v13, v14, &type metadata for String, v7, v7, v7, v90, v95, v100);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7(v15, v16, v17, v18, v19, v20);

  v21 = PhoneCallNLConstants.canonicalName.getter(14);
  v110 = v22;
  OUTLINED_FUNCTION_51_18(v21, v22, v23, v24, v25, v26, v27, v28, v78, v81, v84, v87, v91, v96, v101, v105, v21);
  v29 = String.uppercased()();
  String.append(_:)(v29);

  *(v6 + 32) = *v107;
  *(v6 + 40) = v110;
  String.uppercased()();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_8_53(v30, v31, v32, v33, v34, v35, v36, v37, v79, v82, v7, v7, 95, 0xE100000000000000, v38);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7(v39, v40, v41, v42, v43, v44);
  OUTLINED_FUNCTION_53_17();
  v45 = PhoneCallNLConstants.canonicalName.getter(15);
  v111 = v46;
  OUTLINED_FUNCTION_51_18(v45, v46, v47, v48, v49, v50, v51, v52, &type metadata for String, v7, v85, v88, v92, v97, v102, 0xE100000000000000, v45);
  v53 = String.uppercased()();
  String.append(_:)(v53);

  *(v6 + 48) = *v108;
  *(v6 + 56) = v111;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_8_53(v54, v55, v56, v57, v58, v59, v60, v61, v80, v83, v7, v7, v93, v98, v103);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7(v62, v63, v64, v65, v66, v67);

  v68 = PhoneCallNLConstants.canonicalName.getter(6);
  v112 = v69;
  OUTLINED_FUNCTION_51_18(v68, v69, v70, v71, v72, v73, v74, v75, &type metadata for String, v7, v86, v89, v94, v99, v104, v106, v68);
  v76 = String.uppercased()();
  String.append(_:)(v76);

  *(v6 + 64) = *v109;
  *(v6 + 72) = v112;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  return NLContextUpdate.weightedPromptStrict.setter();
}

uint64_t static PhoneCallNLContextProvider.buildSingleGroupFaceTimeInviteFollowUpOfferContext()(uint64_t a1)
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_102_0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_424FF0;
  *(v1 + 32) = PhoneCallNLConstants.canonicalName.getter(6);
  *(v1 + 40) = v2;
  *(v1 + 48) = PhoneCallNLConstants.canonicalName.getter(15);
  *(v1 + 56) = v3;
  OUTLINED_FUNCTION_65_11();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_50_17();
  v5 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_20_30(v5, v6, v7, v8, v9, v10, v11, v12, &type metadata for String, v5, v5, v5, v58, v61, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15(v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_53_17();
  v64 = PhoneCallNLConstants.canonicalName.getter(6);
  v67 = v19;
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_47_19();
  v20 = String.uppercased()();
  String.append(_:)(v20);

  *(v4 + 32) = v64;
  *(v4 + 40) = v67;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_38_17();
  OUTLINED_FUNCTION_20_30(v21, v22, v23, v24, v25, v26, v27, v28, v56, v57, v5, v5, v59, v62, 95, 0xE100000000000000, v29);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15(v30, v31, v32, v33, v34, v35);

  v65 = PhoneCallNLConstants.canonicalName.getter(6);
  v68 = v36;
  OUTLINED_FUNCTION_47_19();
  v37 = String.uppercased()();
  String.append(_:)(v37);

  *(v4 + 48) = v65;
  *(v4 + 56) = v68;
  String.uppercased()();
  OUTLINED_FUNCTION_38_17();
  OUTLINED_FUNCTION_20_30(v38, v39, v40, v41, v42, v43, v44, v45, &type metadata for String, v5, v5, v5, v60, v63, 95, 0xE100000000000000, v46);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15(v47, v48, v49, v50, v51, v52);

  v66 = PhoneCallNLConstants.canonicalName.getter(15);
  v69 = v53;
  OUTLINED_FUNCTION_47_19();
  v54 = String.uppercased()();
  String.append(_:)(v54);

  *(v4 + 64) = v66;
  *(v4 + 72) = v69;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  OUTLINED_FUNCTION_3_71();
  static PhoneCallNLContextProvider.makeSDAForConfirmation()();
  return NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t closure #1 in static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v47 = a4;
  v41 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v41);
  v40 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v39 = &v38 - v8;
  v9 = type metadata accessor for Locale();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __chkstk_darwin(v12 - 8);
  v42 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v13 = *(v42 - 8);
  __chkstk_darwin(v42);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = *a1;
  Siri_Nlu_External_UserStatedTask.init()();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v20 = v46;
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC14createUsoGraph33_3C2ABB69DDB872D121E37A32A4E694A93for6locale12SiriNLUTypes0v14_Nlu_External_iJ0V0V13AppResolution0Z0C_10Foundation6LocaleVtKFZSo8INIntentC_So16INIntentResponseCTt2g5(v19, v11);
  if (v20)
  {
    v23 = v39;
    v24 = v40;
    (*(v43 + 8))(v11, v44);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SIRINLUUserWantedToProceedCmMd, &_sSo26SIRINLUUserWantedToProceedCmMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SIRINLUUserWantedToProceedCmmMd, &_sSo26SIRINLUUserWantedToProceedCmmMR);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    *v24 = v26;
    v24[1] = v28;
    v24[2] = v29;
    v24[3] = v30;
    swift_storeEnumTagMultiPayload();
    PhoneError.logged()(v23);
    outlined destroy of PhoneError(v24);
    lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    v31 = Error.localizedDescription.getter();
    v33 = v32;
    outlined destroy of PhoneError(v23);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v48);
      _os_log_impl(&dword_0, v34, v35, "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v43 + 8))(v11, v44);
    Siri_Nlu_External_UserStatedTask.task.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    v21 = v42;
    (*(v13 + 16))(v15, v18, v42);
    Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
    return (*(v13 + 8))(v18, v21);
  }

  return result;
}

uint64_t PhoneCallNLContextProvider.__ivar_destroyer()
{
  OUTLINED_FUNCTION_35_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v1 + class metadata base offset for PhoneCallNLContextProvider + 16)));
  return __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 24)));
}

void *PhoneCallNLContextProvider.deinit()
{
  v0 = DefaultNLContextProvider.deinit();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 16)));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 24)));
  return v0;
}

uint64_t PhoneCallNLContextProvider.__deallocating_deinit()
{
  PhoneCallNLContextProvider.deinit();

  return swift_deallocClassInstance();
}

void _s27PhoneCallFlowDelegatePlugin0A25ContactDisplayHintFactoryV5build3for11deviceState14appInfoBuilderSay07SiriKitC00gH0VGSay0Q13AppResolution0S0CG_AH06DeviceM0_pAA0sO8Building_ptFZTf4nnen_nAA0soP0C_Tt1t2g5()
{
  OUTLINED_FUNCTION_66();
  v93 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v79 = &v70 - v6;
  OUTLINED_FUNCTION_15_0();
  v80 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_7();
  v82 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v90 = v10 - v9;
  OUTLINED_FUNCTION_15_0();
  v95 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7();
  v81 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v13);
  v89 = &v70 - v14;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v15);
  v96 = &v70 - v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  v19 = &v70 - v18;
  v85 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v21 = v20;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v84 = v24 - v23;
  OUTLINED_FUNCTION_15_0();
  v25 = type metadata accessor for OrdinalDisplayHintsBuilder();
  OUTLINED_FUNCTION_7();
  v27 = v26;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  v29 = _swiftEmptyArrayStorage;
  v99 = _swiftEmptyArrayStorage;
  v92 = v3;
  v30 = specialized Array.count.getter(v3);
  v73 = v25;
  v72 = v27;
  v71 = v0;
  if (v30)
  {
    v86 = v30;
    if (v30 < 1)
    {
      __break(1u);
      return;
    }

    v31 = 0;
    v91 = v92 & 0xC000000000000001;
    v83 = (v21 + 8);
    v88 = (v81 + 16);
    v77 = v81 + 32;
    v76 = (v81 + 8);
    v75 = v82 + 32;
    v94 = _swiftEmptyArrayStorage;
    v25 = v86;
    v74 = v19;
    do
    {
      if (v91)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v92 + 8 * v31 + 32);
      }

      v33 = v32;
      if (App.isFirstParty()())
      {
        v33 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v32, 0, v93);
      }

      App.appIdentifier.getter();
      if (v34)
      {
        v97 = v29;
        __swift_project_boxed_opaque_existential_1(v93, v93[3]);
        v35 = v84;
        dispatch thunk of DeviceState.siriLocale.getter();
        type metadata accessor for AppInfoBuilder();
        swift_initStackObject();
        AppInfoBuilder.getAppName(_:requestedLocale:)(v33, v35);
        v37 = v36;
        (*v83)(v35, v85);
        if (v37)
        {
          v87 = v33;
          if (one-time initialization token for applicationId != -1)
          {
            swift_once();
          }

          TerminalOntologyNode.name.getter();
          v38 = v74;
          SemanticValue.init(string:label:)();
          if (one-time initialization token for appName != -1)
          {
            OUTLINED_FUNCTION_14_44();
            swift_once();
          }

          TerminalOntologyNode.name.getter();
          SemanticValue.init(string:label:)();
          v39 = *v88;
          (*v88)(v89, v38, v95);
          v29 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_92_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v29 = v55;
          }

          v41 = v29[2];
          v40 = v29[3];
          if (v41 >= v40 >> 1)
          {
            OUTLINED_FUNCTION_17_33(v40);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v29 = v56;
          }

          v29[2] = v41 + 1;
          OUTLINED_FUNCTION_36_5();
          v44 = v95;
          (*(v43 + 32))(v29 + v42 + *(v43 + 72) * v41, v89, v95);
          v39(v79, v38, v44);
          OUTLINED_FUNCTION_23_3();
          __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
          v39(v78, v96, v44);
          OUTLINED_FUNCTION_55();
          DisplayHint.init(idValue:displayValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_92_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v94 = v57;
          }

          v49 = *(v94 + 2);
          v48 = *(v94 + 3);
          if (v49 >= v48 >> 1)
          {
            OUTLINED_FUNCTION_17_33(v48);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v94 = v58;
          }

          v50 = *v76;
          v51 = v95;
          (*v76)(v96, v95);
          v50(v38, v51);
          v52 = v94;
          *(v94 + 2) = v49 + 1;
          OUTLINED_FUNCTION_36_5();
          (*(v54 + 32))(&v52[v53 + *(v54 + 72) * v49], v90, v80);
          v99 = v52;
        }

        else
        {

          v29 = v97;
        }

        v25 = v86;
      }

      else
      {
      }

      ++v31;
    }

    while (v25 != v31);
  }

  if (one-time initialization token for reference != -1)
  {
    OUTLINED_FUNCTION_25_23(&one-time initialization token for reference);
  }

  TerminalOntologyNode.name.getter();
  v59 = v71;
  OrdinalDisplayHintsBuilder.init(referenceNode:)();
  v60 = OrdinalDisplayHintsBuilder.build(for:)();

  (*(v72 + 8))(v59, v73);
  specialized Array.append<A>(contentsOf:)(v60);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  v62 = OUTLINED_FUNCTION_12_1(v61, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_42();
    v65 = OUTLINED_FUNCTION_36();
    v98 = v65;
    *v64 = 136315138;
    OUTLINED_FUNCTION_19_3();
    swift_beginAccess();

    v66 = Array.description.getter();
    v68 = v67;

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v98);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_0, v62, v25, "Built display hints for app disambiguation: %s'", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_26_0(v65);
    OUTLINED_FUNCTION_26_0(v64);
  }

  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_65();
}

uint64_t lazy protocol witness table accessor for type RREntity and conformance RREntity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_26_22()
{
}

uint64_t OUTLINED_FUNCTION_40_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void OUTLINED_FUNCTION_47_19()
{
  v2 = v0;
  v3 = 0xE700000000000000;

  String.append(_:)(*&v2);
}

uint64_t OUTLINED_FUNCTION_50_17()
{

  return String.uppercased()()._countAndFlagsBits;
}

void OUTLINED_FUNCTION_51_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = v17;
  v20 = 0xE700000000000000;

  String.append(_:)(*&v19);
}

uint64_t OUTLINED_FUNCTION_53_17()
{
}

uint64_t OUTLINED_FUNCTION_55_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_56_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_65_11()
{

  return NLContextUpdate.weightedPromptResponseTargets.setter();
}

uint64_t OUTLINED_FUNCTION_66_10(uint64_t a1)
{

  return swift_allocObject();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isAddParticipant()()
{
  OUTLINED_FUNCTION_34_14();
  v0();
  OUTLINED_FUNCTION_20_31();
  if (v3)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_78_8();
  if (v3)
  {
    v6 = v5 == 0xEE00746E61706963;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_61_15(v4);
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin::PhoneCallConfirmation a1)
{
  v3 = OUTLINED_FUNCTION_104_2(a1, v1);
  v4(v3);
  OUTLINED_FUNCTION_56_8();
  if (v12)
  {
    v6 = 0;
  }

  else
  {
    v7 = PhoneCallConfirmation.description.getter(v5);
    v9 = v8;
    v10 = PhoneCallConfirmation.description.getter(a1);
    v12 = v7 == v10 && v9 == v11;
    if (v12)
    {
      v6 = 1;
    }

    else
    {
      v6 = OUTLINED_FUNCTION_79_6(v7, v9, v10);
    }
  }

  return v6 & 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isAnyCallToReference()()
{
  OUTLINED_FUNCTION_24_3();
  if (!PhoneCallNLIntent.isAudioCall()())
  {
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.isVideoCall()())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.hasAnyContactReference()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasAnyConfirmation()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_24_3();
  v2 = *(v1 + 64);
  v2();
  OUTLINED_FUNCTION_56_8();
  if (!v9)
  {
    v6 = PhoneCallConfirmation.description.getter(v3);
    if (v6 == 28526 && v7 == 0xE200000000000000)
    {
LABEL_17:

      goto LABEL_18;
    }

    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_62_15();
    if (v0)
    {
      goto LABEL_18;
    }
  }

  v4 = OUTLINED_FUNCTION_20_0();
  (v2)(v4);
  OUTLINED_FUNCTION_56_8();
  if (v9)
  {
    goto LABEL_18;
  }

  PhoneCallConfirmation.description.getter(v5);
  OUTLINED_FUNCTION_27_22();
  if (v9)
  {
    v11 = v10 == 0xE300000000000000;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_17;
  }

  _stringCompareWithSmolCheck(_:_:expecting:)();
  OUTLINED_FUNCTION_33_2();
LABEL_18:
  OUTLINED_FUNCTION_60_1();
  return result;
}

uint64_t PhoneCallNLIntent.applicationId.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v7, a1);
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = OUTLINED_FUNCTION_40_0();
    v5(v4, v3);
    OUTLINED_FUNCTION_70_1();
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    outlined destroy of PhoneCallApp?(v7, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd);
  }

  return v2;
}

uint64_t PhoneCallNLIntent.appName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v7, a1);
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = OUTLINED_FUNCTION_40_0();
    v5(v4, v3);
    OUTLINED_FUNCTION_70_1();
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    outlined destroy of PhoneCallApp?(v7, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd);
  }

  return v2;
}