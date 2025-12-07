uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RequestContextData.Builder.isUserOnActivePhoneCall.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isUserOnActivePhoneCall;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isDeviceShowingLockScreen(_:)()
{
  (*(*v0 + 1000))();
}

uint64_t RequestContextData.Builder.isLiveActivitiesSupported.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isLiveActivitiesSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isUserOnActivePhoneCall(_:)()
{
  (*(*v0 + 784))();
}

uint64_t RequestContextData.Builder.isDeviceLocked(_:)()
{
  (*(*v0 + 1024))();
}

uint64_t RequestContextData.Builder.isDeviceLocked.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceLocked;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = one-time initialization token for shared;

  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  *(v17 + 32) = v5;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2 & 1;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:), v17);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 72) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:), v9, 0);
}

unint64_t lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor()
{
  result = lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor;
  if (!lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor)
  {
    type metadata accessor for MessageBusActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor);
  }

  return result;
}

uint64_t sub_1DC673C44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void SharedContextServiceImpl.fetchContext(for:includesNearbyDevices:with:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
  v11[3] = &block_descriptor_25;
  v10 = _Block_copy(v11);

  [v8 fetchContextsFor:isa includesNearByDevices:a2 & 1 completion:v10];
  _Block_release(v10);
}

uint64_t ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)()
{
  v1 = v0[55];
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E12A1FE0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v2, v3);
    }

    v6 = *(v4 + 32);
  }

LABEL_8:
  v0[56] = v6;
  v2 = v0[53];
  v5 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  v3 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

{
  v0[64] = *(v0[62] + 32);
  v1 = static MessageBusActor.shared;
  v0[65] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v1, 0);
}

{
  v1 = *(*v0 + 424);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v1, 0);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v10 = *(v0 + 312);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(*(v0 + 376), v1, type metadata accessor for RemoteConversationTurnData);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  *(v0 + 664) = v4;
  v6 = (v2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  *(v0 + 528) = v7;
  outlined init with take of DecisionEngineResponse(v1, v7 + v5, type metadata accessor for RemoteConversationTurnData);
  *(v7 + v6) = v10;
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 536) = v8;
  *v8 = v0;
  v8[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(v8, &async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v7);
}

{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 siriKitMetrics];
    if (v3 && (v4 = v3, v5 = [v3 resultCandidateId], v4, v5))
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE200000000000000;
      v6 = 12589;
    }

    v10 = *(v0 + 232);
    v9 = *(v0 + 240);

    v34 = specialized ProxiedRequestContext.__allocating_init(rske:executionRequestId:resultCandidateId:)(v2, v10, v9, v6, v8);
  }

  else
  {
    v34 = 0;
  }

  v33 = *(v0 + 668);
  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v35 = *(v0 + 320);
  v15 = *(v0 + 296);
  v31 = *(v0 + 304);
  v32 = *(v0 + 448);
  v16 = *(v0 + 272);
  v17 = *(v0 + 280);
  v18 = *(v0 + 256);
  v19 = *(v0 + 240);
  v29 = *(v0 + 408);
  v30 = *(v0 + 248);
  v28 = *(v0 + 232);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 264), &v13[v14[6]], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v16, &v13[v14[7]], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v20 = v14[9];
  v21 = *(v11 + 16);
  *(v0 + 456) = v21;
  *(v0 + 464) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(&v13[v20], v29, v12);
  (*(v11 + 56))(&v13[v20], 0, 1, v12);
  *v13 = v28;
  *(v13 + 1) = v19;
  *(v13 + 2) = v30;
  *(v13 + 3) = v18;
  *&v13[v14[8]] = v17;
  *&v13[v14[10]] = v32;
  v22 = &v13[v14[13]];
  *v22 = v15;
  v22[1] = v31;
  v13[v14[11]] = v33;
  *&v13[v14[12]] = v34;

  v23 = v17;

  outlined copy of Data?(v15, v31);
  static SharedContext.internalSharedContext.getter();
  ObjectType = swift_getObjectType();
  v25 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, v35);
  type metadata accessor for SharedContextServiceImpl();
  *(swift_allocObject() + 16) = v25;
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type SharedContextServiceImpl and conformance SharedContextServiceImpl, 255, type metadata accessor for SharedContextServiceImpl, &protocol conformance descriptor for SharedContextServiceImpl);
  dispatch thunk of RefreshableSharedContext.sharedContext.setter();

  *(v0 + 472) = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  *(v0 + 480) = SiriEnvironment.callState.getter();

  v36 = (*MEMORY[0x1E69D0088] + MEMORY[0x1E69D0088]);
  v26 = swift_task_alloc();
  *(v0 + 488) = v26;
  *v26 = v0;
  v26[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);

  return v36();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = type metadata accessor for Logger();
  *(v0 + 432) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)", 129, 2);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.makeUUID(fromExecutionRequestId:)();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.makeConversationIdAndEmitRequestLink(executionUUID:)();

  if (v1)
  {
    v3 = SAIntentGroupRunSiriKitExecutor.hasExecuteOnRemotePayload.getter();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 668) = v3 & 1;
  v4 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1(v4 + 18, v4[21]);
  dispatch thunk of ReferenceResolutionClientProtocol.inRequest(requestId:)();
  *(v0 + 440) = v4[24];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v5, 0);
}

{
  v1 = *(v0 + 328);
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 48);
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v6 = v2 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);

    v7 = 0;
  }

  *(v0 + 568) = v8;
  *(v0 + 560) = v6;
  *(v0 + 552) = v5;
  *(v0 + 584) = v9;
  *(v0 + 576) = v7;
  if (v5 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_20;
    }

    *(v0 + 224) = v18;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v17 = *(v0 + 216);
    v14 = v7;
    v16 = v9;
  }

  else
  {
    v13 = v9;
    v14 = v7;
    if (!v9)
    {
      v15 = v7;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= ((v8 + 64) >> 6))
        {
          goto LABEL_20;
        }

        v13 = *(v6 + 8 * v14);
        ++v15;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v3, v4);
    }

LABEL_13:
    v16 = (v13 - 1) & v13;
    v17 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
  }

  *(v0 + 608) = v16;
  *(v0 + 600) = v14;
  *(v0 + 592) = v17;
  if (v17)
  {
    v5 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
    v3 = v17;
    v4 = 0;

    return MEMORY[0x1EEE6DFA0](v5, v3, v4);
  }

LABEL_20:
  v19 = *(v0 + 328);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 552));
  swift_beginAccess();
  v20 = *(v19 + 280);
  *(v0 + 640) = v20;
  if (v20)
  {
    v21 = *(v0 + 336);
    v22 = type metadata accessor for CorrectionsContext();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);

    v23 = dispatch thunk of CorrectionsPlatformClient.isCorrectionPossible(context:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
    if (v23)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v24, v25, "[ConversationService] Starting turn for potential corrections invocations", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }

      v27 = swift_task_alloc();
      *(v0 + 648) = v27;
      *v27 = v0;
      v27[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
      v28 = *(v0 + 376);
      v29 = *(v0 + 312);
      v30 = *(v0 + 320);

      return RemoteConversationClient.startTurn(turnData:bridge:)(v28, v29, v30);
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    *(v19 + 280) = 0;
  }

  v35 = *(v0 + 328);
  swift_beginAccess();
  v36 = *(v35 + 120);
  if (v36 >> 6)
  {
    if (v36 >> 6 != 1 || (v36 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((*(v35 + 112) & 1) == 0)
  {
    goto LABEL_35;
  }

  v37 = *(v0 + 328);
  v38 = v37[5];
  v39 = v37[6];
  __swift_project_boxed_opaque_existential_1(v37 + 2, v38);
  (*(v39 + 56))(v38, v39);
LABEL_35:
  v54 = *(v0 + 456);
  v57 = *(v0 + 668);
  v40 = *(v0 + 416);
  v52 = *(v0 + 400);
  v53 = *(v0 + 408);
  v58 = *(v0 + 392);
  v41 = *(v0 + 376);
  v42 = *(v0 + 384);
  v55 = *(v0 + 440);
  v43 = *(v0 + 368);
  v44 = *(v0 + 328);
  v45 = *(v0 + 312);
  v56 = *(v0 + 320);
  v46 = *(v44 + 40);
  v47 = *(v44 + 48);
  __swift_project_boxed_opaque_existential_1((v44 + 16), v46);
  (*(v47 + 48))(v40, v46, v47);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v41, v43, type metadata accessor for RemoteConversationTurnData);
  v54(v52, v53, v42);
  outlined init with copy of ReferenceResolutionClientProtocol(v44 + 144, v0 + 56);
  v48 = *(v44 + 304);
  type metadata accessor for ConversationService.ActiveTurn(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v49 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(v43, v52, v45, v56, v55, v57, (v0 + 56), v48);

  swift_unknownObjectRelease();
  outlined destroy of ConversationService.EagerResult(v41, type metadata accessor for RemoteConversationTurnData);
  v50 = *(v58 + 8);
  v50(v53, v42);
  v50(v40, v42);

  v51 = *(v0 + 8);

  return v51(v49);
}

{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = *(v2 + 520);
    v4 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  }

  else
  {
    v5 = *(v2 + 520);

    v4 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 504);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v1, 0);
}

{
  v1 = *(v0 + 424);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v1, 0);
}

{
  v1 = *(v0 + 504);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v1, 0);
}

{
  v1 = *(v0 + 424);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v1, 0);
}

{

  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[48];
  outlined destroy of ConversationService.EagerResult(v0[47], type metadata accessor for RemoteConversationTurnData);
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = *(v2 + 592);
    v4 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  }

  else
  {
    v5 = *(v2 + 592);

    v4 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), *(v0 + 424), 0);
}

{

  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  *(v0 + 584) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 552);
  if (v6 < 0)
  {
    v12 = __CocoaSet.Iterator.next()();
    if (!v12)
    {
      goto LABEL_14;
    }

    *(v0 + 224) = v12;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v11 = *(v0 + 216);
    v8 = v5;
    v10 = v4;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    if (!v4)
    {
      v9 = v5;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= ((*(v0 + 568) + 64) >> 6))
        {
          goto LABEL_14;
        }

        v7 = *(*(v0 + 560) + 8 * v8);
        ++v9;
        if (v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

LABEL_7:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
  }

  *(v0 + 608) = v10;
  *(v0 + 600) = v8;
  *(v0 + 592) = v11;
  if (v11)
  {
    v1 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
    v2 = v11;
    v3 = 0;

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

LABEL_14:
  v13 = *(v0 + 328);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 552));
  swift_beginAccess();
  v14 = *(v13 + 280);
  *(v0 + 640) = v14;
  if (v14)
  {
    v15 = *(v0 + 336);
    v16 = type metadata accessor for CorrectionsContext();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

    v17 = dispatch thunk of CorrectionsPlatformClient.isCorrectionPossible(context:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
    if (v17)
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1DC659000, v18, v19, "[ConversationService] Starting turn for potential corrections invocations", v20, 2u);
        MEMORY[0x1E12A2F50](v20, -1, -1);
      }

      v21 = swift_task_alloc();
      *(v0 + 648) = v21;
      *v21 = v0;
      v21[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
      v22 = *(v0 + 376);
      v23 = *(v0 + 312);
      v24 = *(v0 + 320);

      return RemoteConversationClient.startTurn(turnData:bridge:)(v22, v23, v24);
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }

    *(v13 + 280) = 0;
  }

  v29 = *(v0 + 328);
  swift_beginAccess();
  v30 = *(v29 + 120);
  if (v30 >> 6)
  {
    if (v30 >> 6 != 1 || (v30 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((*(v29 + 112) & 1) == 0)
  {
    goto LABEL_29;
  }

  v31 = *(v0 + 328);
  v32 = v31[5];
  v33 = v31[6];
  __swift_project_boxed_opaque_existential_1(v31 + 2, v32);
  (*(v33 + 56))(v32, v33);
LABEL_29:
  v48 = *(v0 + 456);
  v51 = *(v0 + 668);
  v34 = *(v0 + 416);
  v46 = *(v0 + 400);
  v47 = *(v0 + 408);
  v52 = *(v0 + 392);
  v35 = *(v0 + 376);
  v36 = *(v0 + 384);
  v49 = *(v0 + 440);
  v37 = *(v0 + 368);
  v38 = *(v0 + 328);
  v39 = *(v0 + 312);
  v50 = *(v0 + 320);
  v40 = *(v38 + 40);
  v41 = *(v38 + 48);
  __swift_project_boxed_opaque_existential_1((v38 + 16), v40);
  (*(v41 + 48))(v34, v40, v41);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v35, v37, type metadata accessor for RemoteConversationTurnData);
  v48(v46, v47, v36);
  outlined init with copy of ReferenceResolutionClientProtocol(v38 + 144, v0 + 56);
  v42 = *(v38 + 304);
  type metadata accessor for ConversationService.ActiveTurn(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v43 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(v37, v46, v39, v50, v49, v51, (v0 + 56), v42);

  swift_unknownObjectRelease();
  outlined destroy of ConversationService.EagerResult(v35, type metadata accessor for RemoteConversationTurnData);
  v44 = *(v52 + 8);
  v44(v47, v36);
  v44(v34, v36);

  v45 = *(v0 + 8);

  return v45(v43);
}

{
  v1 = *(v0 + 424);

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v1, 0);
}

{
  v1 = v0[69];

  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v1);

  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v5 = v0[48];
  outlined destroy of ConversationService.EagerResult(v0[47], type metadata accessor for RemoteConversationTurnData);
  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 424);
  if (v0)
  {
    v4 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  }

  else
  {
    v4 = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 328);
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1 && (v2 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (*(v1 + 112))
  {
LABEL_4:
    v3 = *(v0 + 328);
    v4 = v3[5];
    v5 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
    (*(v5 + 56))(v4, v5);
  }

  v21 = *(v0 + 456);
  v24 = *(v0 + 668);
  v6 = *(v0 + 416);
  v19 = *(v0 + 400);
  v20 = *(v0 + 408);
  v25 = *(v0 + 392);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  v22 = *(v0 + 440);
  v9 = *(v0 + 368);
  v10 = *(v0 + 328);
  v11 = *(v0 + 312);
  v23 = *(v0 + 320);
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  __swift_project_boxed_opaque_existential_1((v10 + 16), v12);
  (*(v13 + 48))(v6, v12, v13);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v7, v9, type metadata accessor for RemoteConversationTurnData);
  v21(v19, v20, v8);
  outlined init with copy of ReferenceResolutionClientProtocol(v10 + 144, v0 + 56);
  v14 = *(v10 + 304);
  type metadata accessor for ConversationService.ActiveTurn(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v15 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(v9, v19, v11, v23, v22, v24, (v0 + 56), v14);

  swift_unknownObjectRelease();
  outlined destroy of ConversationService.EagerResult(v7, type metadata accessor for RemoteConversationTurnData);
  v16 = *(v25 + 8);
  v16(v20, v8);
  v16(v6, v8);

  v17 = *(v0 + 8);

  return v17(v15);
}

{

  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[48];
  outlined destroy of ConversationService.EagerResult(v0[47], type metadata accessor for RemoteConversationTurnData);
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t outlined init with take of DecisionEngineResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  v43 = v0;
  v1 = v0[30];
  v2 = v1[2];
  v0[32] = v2;
  if (v2)
  {
    v4 = v0[28];
    v3 = v0[29];
    v5 = v1[3];
    v0[33] = v5;
    v6 = swift_allocObject();
    v0[34] = v6;
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v2;
    v6[5] = v5;
    outlined copy of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v2, v5);

    v7 = v2;
    swift_unknownObjectRetain();
    v8 = swift_task_alloc();
    v0[35] = v8;
    *v8 = v0;
    v8[1] = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v9 = &async function pointer to partial apply for specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v10 = v6;
LABEL_3:

    return specialized InterruptibleTaskManager.perform<A>(_:)(v9, v10);
  }

  v12 = v1[10];
  v13 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v12);
  v14 = (*(v13 + 8))(v12, v13);
  v0[38] = v14;
  if (v14)
  {
    v15 = v14;
    if (one-time initialization token for xpcInterface != -1)
    {
      swift_once();
    }

    [v15 setRemoteObjectInterface_];
    v16 = swift_allocObject();
    swift_weakInit();
    v0[6] = closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)partial apply;
    v0[7] = v16;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_71;
    v17 = _Block_copy(v0 + 2);

    [v15 setInvalidationHandler_];
    _Block_release(v17);
    v18 = swift_allocObject();
    swift_weakInit();
    v0[12] = closure #3 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)partial apply;
    v0[13] = v18;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[11] = &block_descriptor_76;
    v19 = _Block_copy(v0 + 8);

    [v15 setInterruptionHandler_];
    _Block_release(v19);
    [v15 resume];
    v0[18] = closure #4 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v0[19] = 0;
    v0[14] = MEMORY[0x1E69E9820];
    v0[15] = 1107296256;
    v0[16] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v0[17] = &block_descriptor_79;
    v20 = _Block_copy(v0 + 14);
    v21 = [v15 remoteObjectProxyWithErrorHandler_];
    _Block_release(v20);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime26SharedFlowPluginServiceXPC_pMd, &_s14SiriKitRuntime26SharedFlowPluginServiceXPC_pMR);
    if (swift_dynamicCast())
    {
      v22 = v0[27];
      v0[39] = v22;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.executor);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v24, v25, "Connection set up completed", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }

      v27 = v0[29];
      v28 = v0[28];

      v29 = v1[2];
      v30 = v1[3];
      v1[2] = v15;
      v1[3] = v22;
      v31 = v15;
      swift_unknownObjectRetain();
      outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v29, v30);
      v32 = swift_allocObject();
      v0[40] = v32;
      v32[2] = v28;
      v32[3] = v27;
      v32[4] = v22;

      swift_unknownObjectRetain();
      v33 = swift_task_alloc();
      v0[41] = v33;
      *v33 = v0;
      v33[1] = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
      v9 = &async function pointer to partial apply for specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
      v10 = v32;
      goto LABEL_3;
    }

    lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
  }

  else
  {

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x80000001DCA7FD70, &v42);
      _os_log_impl(&dword_1DC659000, v35, v36, "%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
  }

  v41 = v0[1];

  return v41();
}

{
  v1 = *(v0 + 352);

  if (v1)
  {
    v2 = *(v0 + 256);
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v0 + 256);
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

{
  v43 = v0;
  v1 = v0[30];
  v2 = v1[2];
  v0[32] = v2;
  if (v2)
  {
    v4 = v0[28];
    v3 = v0[29];
    v5 = v1[3];
    v0[33] = v5;
    v6 = swift_allocObject();
    v0[34] = v6;
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v2;
    v6[5] = v5;
    outlined copy of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v2, v5);

    v7 = v2;
    swift_unknownObjectRetain();
    v8 = swift_task_alloc();
    v0[35] = v8;
    *v8 = v0;
    v8[1] = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v9 = &async function pointer to partial apply for specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v10 = v6;
LABEL_3:

    return specialized InterruptibleTaskManager.perform<A>(_:)(v9, v10);
  }

  v12 = v1[10];
  v13 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v12);
  v14 = (*(v13 + 8))(v12, v13);
  v0[39] = v14;
  if (v14)
  {
    v15 = v14;
    if (one-time initialization token for xpcInterface != -1)
    {
      swift_once();
    }

    [v15 setRemoteObjectInterface_];
    v16 = swift_allocObject();
    swift_weakInit();
    v0[6] = partial apply for closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v0[7] = v16;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_5;
    v17 = _Block_copy(v0 + 2);

    [v15 setInvalidationHandler_];
    _Block_release(v17);
    v18 = swift_allocObject();
    swift_weakInit();
    v0[12] = partial apply for closure #3 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v0[13] = v18;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[11] = &block_descriptor_25;
    v19 = _Block_copy(v0 + 8);

    [v15 setInterruptionHandler_];
    _Block_release(v19);
    [v15 resume];
    v0[18] = closure #4 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v0[19] = 0;
    v0[14] = MEMORY[0x1E69E9820];
    v0[15] = 1107296256;
    v0[16] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v0[17] = &block_descriptor_28;
    v20 = _Block_copy(v0 + 14);
    v21 = [v15 remoteObjectProxyWithErrorHandler_];
    _Block_release(v20);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime26SharedFlowPluginServiceXPC_pMd, &_s14SiriKitRuntime26SharedFlowPluginServiceXPC_pMR);
    if (swift_dynamicCast())
    {
      v22 = v0[27];
      v0[40] = v22;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.executor);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v24, v25, "Connection set up completed", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }

      v27 = v0[29];
      v28 = v0[28];

      v29 = v1[2];
      v30 = v1[3];
      v1[2] = v15;
      v1[3] = v22;
      v31 = v15;
      swift_unknownObjectRetain();
      outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v29, v30);
      v32 = swift_allocObject();
      v0[41] = v32;
      v32[2] = v28;
      v32[3] = v27;
      v32[4] = v22;

      swift_unknownObjectRetain();
      v33 = swift_task_alloc();
      v0[42] = v33;
      *v33 = v0;
      v33[1] = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
      v9 = &async function pointer to partial apply for specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
      v10 = v32;
      goto LABEL_3;
    }

    lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
  }

  else
  {

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x80000001DCA7FD70, &v42);
      _os_log_impl(&dword_1DC659000, v35, v36, "%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
  }

  v41 = v0[1];

  return v41();
}

{
  v1 = *(v0 + 368);

  if (v1)
  {
    v3 = *(v0 + 288);
    v2 = *(v0 + 296);
    v4 = *(v0 + 256);
    v5 = *(v0 + 368);
    swift_willThrow();
    outlined copy of InterruptibleTaskResult<RemoteConversation?>(v3, v2, v5);

    swift_unknownObjectRelease();
    outlined consume of InterruptibleTaskResult<RemoteConversation?>(v3, v2, v5);
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = *(v0 + 256);
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    outlined consume of InterruptibleTaskResult<RemoteConversation?>(v9, v8, 0);
    v11 = *(v0 + 8);

    return v11(v9, v8);
  }
}

{
  v1 = *(v0 + 256);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 353);

  if (v1)
  {
    v2 = *(v0 + 304);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v0 + 304);
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 304);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 256);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 369);

  if (v1)
  {
    v3 = *(v0 + 344);
    v2 = *(v0 + 352);
    v4 = *(v0 + 312);
    v5 = *(v0 + 369);
    swift_willThrow();
    outlined copy of InterruptibleTaskResult<RemoteConversation?>(v3, v2, v5);
    swift_unknownObjectRelease();

    outlined consume of InterruptibleTaskResult<RemoteConversation?>(v3, v2, v5);
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v0 + 312);
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    outlined consume of InterruptibleTaskResult<RemoteConversation?>(v9, v8, 0);
    v11 = *(v0 + 8);

    return v11(v9, v8);
  }
}

{
  v1 = *(v0 + 312);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DC674768()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for AFServiceDeviceContext();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFServiceDeviceContext, 0x1E698D1D8);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[28] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[31] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v5, 0);
}

void *outlined copy of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(uint64_t a1)
{
  v2 = v1[41];
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  CurrentDevice.setRestrictedCommands(_:)();

  v3 = static MessageBusActor.shared;
  v1[62] = *(v2 + 56);
  v1[63] = v3;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v3, 0);
}

{
  v26 = v1;
  v2 = static os_log_type_t.debug.getter();
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315394;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v25);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v25);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_1DC659000, v3, v2, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v12 = *(v1 + 592);
  if (*(v12 + 184) == 2)
  {
    *(v12 + 184) = *(v1 + 668);
    v12 = *(v1 + 592);
  }

  v14 = *(v1 + 368);
  v13 = *(v1 + 376);
  v15 = (*(v1 + 664) + 16) & ~*(v1 + 664);
  v16 = (*(v1 + 360) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v12 + 160);
  v23 = *(v1 + 312);
  __swift_project_boxed_opaque_existential_1((v12 + 128), *(v12 + 152));
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v13, v14, type metadata accessor for RemoteConversationTurnData);
  v18 = swift_allocObject();
  outlined init with take of DecisionEngineResponse(v14, v18 + v15, type metadata accessor for RemoteConversationTurnData);
  *(v18 + v16) = v23;
  v19 = swift_allocObject();
  *(v1 + 616) = v19;
  *(v19 + 16) = &async function pointer to partial apply for closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  *(v19 + 24) = v18;
  v20 = *(v17 + 8);
  swift_unknownObjectRetain();
  v24 = (v20 + *v20);
  v21 = swift_task_alloc();
  *(v1 + 624) = v21;
  *v21 = v1;
  v21[1] = ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:);

  return v24();
}

uint64_t RequestContextData.Builder.audioSource(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v7 - v4, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  (*(*v1 + 352))(v5);
}

uint64_t RequestContextData.Builder.audioDestination(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v7 - v4, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  (*(*v1 + 376))(v5);
}

uint64_t RequestContextData.Builder.isDirectAction.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDirectAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isVoiceTriggerEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isVoiceTriggerEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void RequestContextData.Builder.peerInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_peerInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RequestContextData.Builder.inputOrigin.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t RequestContextData.Builder.isEyesFree.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isEyesFree;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isTextToSpeechEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTextToSpeechEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void RequestContextData.Builder.endpointInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_endpointInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void RequestContextData.Builder.instanceInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_instanceInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RequestContextData.Builder.bargeInModes.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void RequestContextData.Builder.originatingHome.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_originatingHome;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RequestContextData.Builder.isTriggerlessFollowup(_:)()
{
  (*(*v0 + 712))();
}

uint64_t RequestContextData.Builder.didPreviouslyFallbackToServer(_:)()
{
  (*(*v0 + 736))();
}

uint64_t RequestContextData.Builder.isSpeechRequest(_:)()
{
  (*(*v0 + 760))();
}

uint64_t RequestContextData.Builder.didPreviouslyFallbackToServer.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_didPreviouslyFallbackToServer;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isSpeechRequest.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSpeechRequest;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.voiceTriggerEventInfo(_:)(uint64_t a1)
{
  v2 = *(*v1 + 808);

  v2(v3);
}

uint64_t RequestContextData.Builder.isRecognizeMyVoiceEnabled(_:)()
{
  (*(*v0 + 832))();
}

uint64_t RequestContextData.Builder.voiceAudioSessionId(_:)(unint64_t a1)
{
  (*(*v1 + 856))(a1 | ((HIDWORD(a1) & 1) << 32));
}

uint64_t RequestContextData.Builder.isRecognizeMyVoiceEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isRecognizeMyVoiceEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.voiceAudioSessionId.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceAudioSessionId;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t RequestContextData.Builder.isSystemApertureEnabled(_:)()
{
  (*(*v0 + 880))();
}

uint64_t RequestContextData.Builder.isSystemApertureEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSystemApertureEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isLiveActivitiesSupported(_:)()
{
  (*(*v0 + 904))();
}

uint64_t RequestContextData.Builder.isLiveActivitiesSupported.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isLiveActivitiesSupported;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isInAmbient(_:)()
{
  (*(*v0 + 928))();
}

uint64_t RequestContextData.Builder.isInAmbient.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isInAmbient;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.conjunctionInfo(_:)(void *a1)
{
  v3 = *(*v1 + 976);
  v4 = a1;
  v3(a1);
}

void RequestContextData.Builder.conjunctionInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_conjunctionInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RequestContextData.Builder.isDeviceShowingLockScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceShowingLockScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.isDirectAction.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDirectAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.currentDeviceAssistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_currentDeviceAssistantId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t RequestContextData.Builder.isTextToSpeechEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTextToSpeechEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void *RequestContextData.Builder.originatingHome.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_originatingHome;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RequestContextData.Builder.currentDeviceAssistantId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_currentDeviceAssistantId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t RequestContextData.Builder.isSpeechRequest.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSpeechRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isSystemApertureEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSystemApertureEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isInAmbient.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isInAmbient;
  swift_beginAccess();
  return *(v0 + v1);
}

void *RequestContextData.Builder.conjunctionInfo.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_conjunctionInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RequestContextData.Builder.isDeviceLocked.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceLocked;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.approximatePreviousTTSInterval(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v7 - v4, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*v1 + 616))(v5);
}

uint64_t RequestContextData.Builder.isTriggerlessFollowup.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTriggerlessFollowup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RequestContextData.Builder.positionInSession(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v7 - v4, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  (*(*v1 + 952))(v5);
}

uint64_t RequestContextData.Builder.isVoiceTriggerEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isVoiceTriggerEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void *RequestContextData.Builder.peerInfo.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_peerInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *RequestContextData.Builder.endpointInfo.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_endpointInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RequestContextData.Builder.isTriggerlessFollowup.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTriggerlessFollowup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.inputOrigin.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void *RequestContextData.Builder.instanceInfo.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_instanceInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t RequestContextData.Builder.didPreviouslyFallbackToServer.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_didPreviouslyFallbackToServer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isUserOnActivePhoneCall.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isUserOnActivePhoneCall;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.Builder.isRecognizeMyVoiceEnabled.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isRecognizeMyVoiceEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t RequestContextData.Builder.voiceAudioSessionId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceAudioSessionId);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t RequestContextData.Builder.isDeviceShowingLockScreen.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceShowingLockScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t ConversationService.bridge(didReceiveRequestContextData:from:)()
{
  v24 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "bridge(didReceiveRequestContextData:from:)", 42, 2);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v9 = [v6 debugDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v23);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationService] Received context data: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v14 = *(v0 + 88);
  swift_beginAccess();
  v15 = *(v14 + 112);
  *(v0 + 112) = v15;
  v16 = *(v14 + 120);
  *(v0 + 184) = v16;
  if ((v16 & 0xC0) == 0x40)
  {
    *(v0 + 120) = *(*(v0 + 88) + 192);
    v17 = one-time initialization token for shared;
    v18 = v15;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = static ConversationActor.shared;

    return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveRequestContextData:from:), v19, 0);
  }

  else
  {

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v20 = 0xD000000000000050;
    v20[1] = 0x80000001DCA80EF0;
    swift_willThrow();

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  v1 = *(v0 + 104);
  TaskService.onNewTurn()();

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveRequestContextData:from:), v1, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x170))();
  *(v0 + 128) = v4;
  v5 = type metadata accessor for RequestPositionInSession();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1E69CE598];
  if ((v1 & 1) == 0)
  {
    v7 = MEMORY[0x1E69CE5A8];
  }

  (*(*(v5 - 8) + 104))(v3, *v7, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v8 = (*(*v4 + 952))(v3);
  v9 = (*(*v4 + 1280))(v8);
  *(v0 + 136) = v9;
  v10 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8);
  v17 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId);
  *(v0 + 144) = v10;
  v11 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId);
  v12 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8);
  *(v0 + 152) = v12;
  v13 = OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration;

  v15 = swift_task_alloc();
  *(v0 + 160) = v15;
  *v15 = v0;
  v15[1] = ConversationService.bridge(didReceiveRequestContextData:from:);

  return ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(v17, v10, v11, v12, v2 + v13, v2 + v14, v9, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 184);

  outlined consume of ConversationService.State(v2, v4);
  v5 = *(v3 + 112);
  *(v3 + 112) = v1;
  v6 = *(v3 + 120);
  *(v3 + 120) = 0x80;
  outlined consume of ConversationService.State(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 184);

  outlined consume of ConversationService.State(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

Swift::Void __swiftcall TaskService.onNewTurn()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 32);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_23:
    if (one-time initialization token for instrumentation == -1)
    {
LABEL_24:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.instrumentation);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "TaskService - No current task, creating a new one", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }

      static Date.now.getter();
      TaskService.addNewTask(id:state:isClientInitiated:creationTime:)(0, 0, 0, 1, v4);
      goto LABEL_27;
    }

LABEL_30:
    swift_once();
    goto LABEL_24;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_23;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_30;
  }

  v6 = MEMORY[0x1E12A1FE0](0, v5);

LABEL_6:
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.instrumentation);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v35 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v34 = v2;
    v13 = v12;
    v36 = v12;
    *v11 = 136315138;

    v14 = FlowTask.description.getter();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v36);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v8, v9, "TaskService - Existing currentTask: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v18 = v13;
    v2 = v34;
    MEMORY[0x1E12A2F50](v18, -1, -1);
    v19 = v11;
    v1 = v35;
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  if (*(v6 + 32) == 2)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "TaskService - Current task has ended, creating a new one", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    static Date.now.getter();
    TaskService.addNewTask(id:state:isClientInitiated:creationTime:)(0, 0, 0, 1, v4);

LABEL_27:
    (*(v2 + 8))(v4, v1);
    return;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    if (*(v6 + 32))
    {
      if (*(v6 + 32) == 1)
      {
        v27 = 0xE700000000000000;
        v28 = 0x676E696F676E6FLL;
      }

      else
      {
        v27 = 0xE500000000000000;
        v28 = 0x6465646E65;
      }
    }

    else
    {
      v27 = 0xE700000000000000;
      v28 = 0x64657461657263;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v36);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1DC659000, v23, v24, "TaskService - Current task state is %s, not creating new task", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }
}

uint64_t ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 320) = v18;
  *(v9 + 328) = v8;
  *(v9 + 312) = v17;
  *(v9 + 296) = v16;
  *(v9 + 280) = a7;
  *(v9 + 288) = a8;
  *(v9 + 264) = a5;
  *(v9 + 272) = a6;
  *(v9 + 248) = a3;
  *(v9 + 256) = a4;
  *(v9 + 232) = a1;
  *(v9 + 240) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  *(v9 + 336) = swift_task_alloc();
  v10 = type metadata accessor for RemoteConversationTurnData(0);
  *(v9 + 344) = v10;
  v11 = *(v10 - 8);
  *(v9 + 352) = v11;
  *(v9 + 360) = *(v11 + 64);
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v9 + 384) = v12;
  *(v9 + 392) = *(v12 - 8);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static MessageBusActor.shared;
  *(v9 + 424) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:), v13, 0);
}

void TaskService.addNewTask(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v5 + 32);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 < 16)
    {
      goto LABEL_10;
    }

LABEL_3:
    swift_beginAccess();
    v18 = *(v5 + 32);
    if (v18 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_5:
        if (specialized Array._customRemoveLast()())
        {
LABEL_9:

          v17 = swift_endAccess();
          goto LABEL_10;
        }

        v19 = *(v5 + 32);
        if (!(v19 >> 62))
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v21 = __OFSUB__(v20, 1);
          v22 = v20 - 1;
          if (!v21)
          {
LABEL_8:
            specialized Array.remove(at:)(v22);
            goto LABEL_9;
          }

LABEL_27:
          __break(1u);
          return;
        }

LABEL_25:
        v35 = __CocoaSet.count.getter();
        v21 = __OFSUB__(v35, 1);
        v22 = v35 - 1;
        if (!v21)
        {
          goto LABEL_8;
        }

        goto LABEL_27;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_25;
  }

  v17 = __CocoaSet.count.getter();
  if (v17 >= 16)
  {
    goto LABEL_3;
  }

LABEL_10:
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    a1 = (*(v5 + 16))(v17);
    v23 = v24;
  }

  (*(v13 + 16))(v15, a5, v12);
  type metadata accessor for FlowTask(0);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v23;
  *(v25 + 32) = a3;
  *(v25 + 33) = a4 & 1;
  (*(v13 + 32))(v25 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v15, v12);
  swift_beginAccess();
  if (*(v6 + 32) >> 62 && __CocoaSet.count.getter() < 0)
  {
    __break(1u);
  }

  else
  {

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v25);
    swift_endAccess();

    if (one-time initialization token for instrumentation == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.instrumentation);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136315138;

    v31 = FlowTask.description.getter();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v36);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1DC659000, v27, v28, "TaskService - Added new task: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v29, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v16 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v15)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return v16(v8, v7, 1, v5);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
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

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  type metadata accessor for FlowTask(0);
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
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = result - v7;
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
        v5[2] = result + v11;
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

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t RequestContextData.Builder.currentDeviceAssistantId(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 688);

  v5(a1, a2);
}

id RequestContextData.Builder.build()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v93 = &v69 - v2;
  v3 = type metadata accessor for RequestPositionInSession();
  v92 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v9 = type metadata accessor for Restrictions();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v69 - v15;
  v17 = type metadata accessor for ResponseMode();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23 - 8);
  v102 = &v69 - v25;
  v26 = (*(*v0 + 320))(v24);
  v101 = v5;
  if (!v27)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v90 = v27;
  v91 = v26;
  v28 = (*(*v0 + 344))();
  v29 = *(*v0 + 368);
  v97 = v22;
  v30 = v29(v28);
  (*(*v0 + 392))(v30);
  v31 = v18;
  v32 = *(v18 + 48);
  v33 = v32(v16, 1, v17);
  v98 = v17;
  if (v33 == 1)
  {
    static ResponseMode.displayForward.getter();
    v34 = v32(v16, 1, v17);
    v35 = v31;
    if (v34 != 1)
    {
      v34 = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  else
  {
    v34 = (*(v31 + 32))(v103, v16, v17);
    v35 = v31;
  }

  v89 = (*(*v0 + 416))(v34);
  v88 = (*(*v0 + 440))();
  v87 = (*(*v0 + 464))();
  v86 = (*(*v0 + 488))();
  v85 = (*(*v0 + 512))();
  v84 = (*(*v0 + 536))();
  v83 = (*(*v0 + 560))();
  v36 = (*(*v0 + 584))();
  v37 = (*(*v0 + 608))();
  (*(*v0 + 632))(v37);
  v38 = *(v10 + 48);
  v39 = v38(v8, 1, v9);
  v40 = v92;
  v95 = v10;
  v96 = v9;
  v94 = v35;
  if (v39 == 1)
  {
    Restrictions.init(restrictedCommands:)();
    v41 = v38(v8, 1, v9);
    if (v41 != 1)
    {
      v41 = outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
    }
  }

  else
  {
    v41 = (*(v10 + 32))(v100, v8, v9);
  }

  v82 = (*(*v0 + 656))(v41);
  v42 = (*(*v0 + 680))();
  v44 = v43;
  v81 = (*(*v0 + 704))();
  v80 = (*(*v0 + 728))();
  v79 = (*(*v0 + 752))();
  v78 = (*(*v0 + 776))();
  v77 = (*(*v0 + 800))();
  v76 = (*(*v0 + 824))();
  v45 = (*(*v0 + 848))();
  v75 = (*(*v0 + 872))();
  v74 = (*(*v0 + 896))();
  v73 = (*(*v0 + 920))();
  v46 = v93;
  (*(*v0 + 944))();
  v47 = *(v40 + 48);
  v48 = v47(v46, 1, v3);
  v72 = v3;
  if (v48 == 1)
  {
    (*(v40 + 104))(v101, *MEMORY[0x1E69CE5A0], v3);
    v49 = v47(v46, 1, v3);
    if (v49 != 1)
    {
      v49 = outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    }
  }

  else
  {
    v49 = (*(v40 + 32))(v101, v46, v3);
  }

  v50 = 0xE000000000000000;
  if (v44)
  {
    v50 = v44;
  }

  v70 = v50;
  if (v44)
  {
    v51 = v42;
  }

  else
  {
    v51 = 0;
  }

  v69 = v51;
  if ((v45 & 0x100000000) != 0)
  {
    v52 = 0;
  }

  else
  {
    v52 = v45;
  }

  if (!v36)
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v93 = (*(*v0 + 968))(v49);
  LODWORD(v92) = (*(*v0 + 992))();
  v71 = (*(*v0 + 1016))();
  v53 = type metadata accessor for RequestContextData(0);
  v54 = objc_allocWithZone(v53);
  v55 = &v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  v56 = v90;
  *v55 = v91;
  v55[1] = v56;
  outlined init with copy of ReferenceResolutionClientProtocol?(v102, &v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v97, &v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v57 = v94;
  (*(v94 + 16))(&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v103, v98);
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v89 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = v88 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v87 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v86 & 1;
  v58 = v84;
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = v85;
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = v58;
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = v83;
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v36;
  v59 = v99;
  outlined init with copy of ReferenceResolutionClientProtocol?(v99, &v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v61 = v95;
  v60 = v96;
  v62 = v100;
  (*(v95 + 16))(&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v100, v96);
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = v82;
  v63 = &v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  v64 = v70;
  *v63 = v69;
  v63[1] = v64;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v81 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v80 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = v79 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = v78 & 1;
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v77;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v76 & 1;
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v52;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v75 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v74 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v73 & 1;
  v65 = v101;
  v66 = v72;
  (*(v40 + 16))(&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v101, v72);
  *&v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v93;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v92 & 1;
  v54[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v71 & 1;
  v104.receiver = v54;
  v104.super_class = v53;
  v67 = objc_msgSendSuper2(&v104, sel_init);
  (*(v40 + 8))(v65, v66);
  (*(v61 + 8))(v62, v60);
  outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v57 + 8))(v103, v98);
  outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return v67;
}

uint64_t RequestContextData.Builder.isEyesFree.getter()
{
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isEyesFree;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestContextData.makeBuilder()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v54[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v54[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54[-v9];
  type metadata accessor for RequestContextData.Builder(0);
  v11 = swift_allocObject();
  RequestContextData.Builder.init()();
  v12 = (*(*v11 + 1040))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin), *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8));

  v13 = (*(*v12 + 1048))(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource);

  v14 = (*(*v13 + 1056))(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination);

  v15 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
  v16 = type metadata accessor for ResponseMode();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v1 + v15, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  v18 = (*(*v14 + 1064))(v10);

  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v19 = (*(*v18 + 1072))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree));

  v20 = (*(*v19 + 1080))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction));

  v21 = (*(*v20 + 1088))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled));

  v22 = (*(*v21 + 1096))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled));

  v23 = (*(*v22 + 1104))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo));

  v24 = (*(*v23 + 1112))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo));

  v25 = (*(*v24 + 1120))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo));

  v26 = (*(*v25 + 1128))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes));

  v27 = (*(*v26 + 1136))(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval);

  v28 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions;
  v29 = type metadata accessor for Restrictions();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v7, v1 + v28, v29);
  (*(v30 + 56))(v7, 0, 1, v29);
  v31 = (*(*v27 + 1144))(v7);

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v32 = (*(*v31 + 1152))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome));

  v33 = (*(*v32 + 1160))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId), *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8));

  v34 = (*(*v33 + 1168))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup));

  v35 = (*(*v34 + 1176))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer));

  v36 = (*(*v35 + 1184))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest));

  v37 = (*(*v36 + 1192))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall));

  v38 = (*(*v37 + 1200))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo));

  v39 = (*(*v38 + 1208))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled));

  v40 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
  v41 = *(*v39 + 1216);
  v54[12] = 0;
  v42 = v41(v40);

  v43 = (*(*v42 + 1224))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled));

  v44 = (*(*v43 + 1232))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported));

  v45 = (*(*v44 + 1240))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient));

  v46 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession;
  v47 = type metadata accessor for RequestPositionInSession();
  v48 = *(v47 - 8);
  (*(v48 + 16))(v4, v1 + v46, v47);
  (*(v48 + 56))(v4, 0, 1, v47);
  v49 = (*(*v45 + 1248))(v4);

  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v50 = (*(*v49 + 1256))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo));

  v51 = (*(*v50 + 1264))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen));

  v52 = (*(*v51 + 1272))(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked));

  return v52;
}

uint64_t closure #1 in default argument 1 of TaskService.init(initialTask:taskIdGenerator:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t RequestContextData.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_audioSource;
  v2 = type metadata accessor for AudioSource();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_audioDestination;
  v4 = type metadata accessor for AudioDestination();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_responseMode;
  v6 = type metadata accessor for ResponseMode();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isEyesFree) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDirectAction) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isVoiceTriggerEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTextToSpeechEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_peerInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_endpointInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_instanceInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_bargeInModes) = 0;
  v7 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_approximatePreviousTTSInterval;
  v8 = type metadata accessor for DateInterval();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_restrictions;
  v10 = type metadata accessor for Restrictions();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_originatingHome) = 0;
  v11 = (v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_currentDeviceAssistantId);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isTriggerlessFollowup) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_didPreviouslyFallbackToServer) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSpeechRequest) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isUserOnActivePhoneCall) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceTriggerEventInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isRecognizeMyVoiceEnabled) = 2;
  v12 = v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_voiceAudioSessionId;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isSystemApertureEnabled) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isLiveActivitiesSupported) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isInAmbient) = 2;
  v13 = OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_positionInSession;
  v14 = type metadata accessor for RequestPositionInSession();
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_conjunctionInfo) = 0;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceShowingLockScreen) = 2;
  *(v0 + OBJC_IVAR____TtCC14SiriKitRuntime18RequestContextData7Builder_isDeviceLocked) = 2;
  return v0;
}

uint64_t RequestContextData.Builder.inputOrigin(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 328);

  v5(a1, a2);
}

uint64_t RequestContextData.Builder.responseMode(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v7 - v4, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(*v1 + 400))(v5);
}

uint64_t RequestContextData.Builder.isEyesFree(_:)()
{
  (*(*v0 + 424))();
}

uint64_t RequestContextData.Builder.isDirectAction(_:)()
{
  (*(*v0 + 448))();
}

uint64_t RequestContextData.Builder.isVoiceTriggerEnabled(_:)()
{
  (*(*v0 + 472))();
}

uint64_t RequestContextData.Builder.isTextToSpeechEnabled(_:)()
{
  (*(*v0 + 496))();
}

uint64_t RequestContextData.Builder.peerInfo(_:)(void *a1)
{
  v3 = *(*v1 + 520);
  v4 = a1;
  v3(a1);
}

uint64_t RequestContextData.Builder.endpointInfo(_:)(void *a1)
{
  v3 = *(*v1 + 544);
  v4 = a1;
  v3(a1);
}

uint64_t RequestContextData.Builder.instanceInfo(_:)(void *a1)
{
  v3 = *(*v1 + 568);
  v4 = a1;
  v3(a1);
}

uint64_t RequestContextData.Builder.restrictions(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v7 - v4, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  (*(*v1 + 640))(v5);
}

uint64_t RequestContextData.Builder.originatingHome(_:)(void *a1)
{
  v3 = *(*v1 + 664);
  v4 = a1;
  v3(a1);
}

uint64_t SelfReflectionAgent.currentMitigationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v8[0] = *(v1 + 208);
  v8[1] = v3;
  v9 = *(v1 + 240);
  v4 = v9;
  v10 = *(v1 + 256);
  v5 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return outlined init with copy of SelfReflectionResponse(v8, &v7);
}

uint64_t SelfReflectionAgent.currentMitigationResponse.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v6[0] = *(v1 + 208);
  v6[1] = v3;
  v6[2] = *(v1 + 240);
  v7 = *(v1 + 256);
  v4 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v4;
  *(v1 + 240) = *(a1 + 32);
  *(v1 + 256) = *(a1 + 48);
  return outlined destroy of SelfReflectionResponse(v6);
}

uint64_t RequestContextData.Builder.bargeInModes(_:)(uint64_t a1)
{
  v2 = *(*v1 + 592);

  v2(v3);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RequestType and conformance RequestType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UserID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMd, &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserID and conformance UserID, 255, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserID and conformance UserID, 255, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D8]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v22 = a12;
  v17 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiUserContextUpdater();
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a11, a15);
  return specialized MultiUserContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, v19, v22, a13, v20, a15, a16, a17);
}

uint64_t specialized MultiUserContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v28 = a15;
  v29 = a17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
  (*(*(a15 - 8) + 32))(boxed_opaque_existential_0, a11, a15);
  *(a14 + 256) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes6UserIDV_0C10KitRuntime14ContextUpdaterCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a14 + 264) = 0;
  outlined init with take of ReferenceResolutionClientProtocol(a1, a14 + 16);
  outlined init with take of ReferenceResolutionClientProtocol(a2, a14 + 56);
  outlined init with take of ReferenceResolutionClientProtocol(a3, a14 + 96);
  *(a14 + 136) = a4;
  *(a14 + 144) = a5;
  *(a14 + 152) = a6;
  *(a14 + 160) = a7;
  *(a14 + 168) = a8;
  *(a14 + 176) = a9;
  *(a14 + 184) = a10;
  outlined init with take of ReferenceResolutionClientProtocol(&v27, a14 + 192);
  *(a14 + 232) = a12;
  *(a14 + 248) = a13;
  return a14;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.conversationBridge);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "executionProcessor was already set on ExecutionBridgeProcessorDelegate ignoring this operation", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }
  }

  else
  {
    swift_weakAssign();
  }
}

uint64_t ConversationRequestAwareBridgeBase.currentRequestProcessor.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ConversationRequestAwareBridgeBase.postMessage(_:to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v8;
    v15 = v6;
    v16 = a2;
    v17 = v14;
    v37 = v14;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), &v37);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v18 = v9;
    _os_log_impl(&dword_1DC659000, v10, v11, "Bridge %s received message: %@", v12, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v19 = v17;
    a2 = v16;
    v6 = v15;
    v8 = v34;
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v20 = (*(*v3 + 264))(v9);
  if ((*(*v20 + 104))())
  {
    v21 = v9;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136315394;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes07RequestB4BaseCmMd, &_s16SiriMessageTypes07RequestB4BaseCmMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v37);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v35 + 8))(v8, v6);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v37);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_1DC659000, v22, v23, "handleMessage got message type %s with message id: %s that is not register in the bridge", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }

  else
  {
    (*(*v20 + 88))(a2, v9);
  }
}

void ConversationRequestProcessor.state.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  outlined consume of ConversationRequestProcessor.State(v8, v9, v10);
}

uint64_t SelfReflectionAgent.setRequestContextData(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001DCA87720, &v15);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_1DC659000, v6, v7, "SelfReflectionAgent.%s requestContextData: %@", v8, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v14 = *(*v2 + 280);
  v12 = v5;

  return v14(v5);
}

uint64_t ConversationRuntimeClient.sendRequestContextData(_:withBridgeDelegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  v11 = a1;
  swift_unknownObjectRetain();
  v12 = StaticString.description.getter();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:);
  *(v15 + 24) = v10;
  *(v15 + 32) = "bridge(didReceiveRequestContextData:from:)";
  *(v15 + 40) = 42;
  *(v15 + 48) = 2;
  v16 = *(*v7 + 208);

  v16(v12, v14, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v15);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:)(v2, v3, v4, v5);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);

  return specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a4);
}

uint64_t specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;
  v2[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:), v3, 0);
}

uint64_t ConversationRequestProcessor.handleStartDirectActionRequestMessage(_:)(void *a1, unsigned int *a2, int a3, int a4)
{
  v24 = a3;
  v25 = a4;
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RequestType();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *a2, v10, v12);
  v15 = a1;
  v16 = RequestMessageBase.requestId.getter();
  v18 = v17;
  v19 = v15;
  StartRequestMessageBase.inputOrigin.getter();

  type metadata accessor for ConversationRequestProcessorTurnState(0);
  v20 = swift_allocObject();
  *&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo] = 0;
  *&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter] = 0;
  *&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState] = xmmword_1DCA6B010;
  (*(v11 + 32))(&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType], v14, v10);
  v21 = &v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId];
  *v21 = v16;
  v21[1] = v18;
  v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer] = 0;
  (*(v7 + 32))(&v20[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin], v9, v6);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v19, v20, v24, v23, v25, 0);
}

uint64_t type metadata accessor for ConversationRequestProcessorTurnState(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationRequestProcessorTurnState;
  if (!type metadata singleton initialization cache for ConversationRequestProcessorTurnState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(void *a1, char *a2, int a3, char *a4, int a5, int a6)
{
  LODWORD(v125) = a6;
  LODWORD(v124) = a5;
  v119 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v118 = &v116 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v116 - v12;
  v13 = type metadata accessor for RequestType();
  v133 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v116 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v126 = &v116 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v116 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v116 - v25;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.conversationBridge);
  v28 = a1;

  v130 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v31 = os_log_type_enabled(v29, v30);
  v134 = v28;
  v121 = v21;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v142[0] = v129;
    *v32 = 138412802;
    *(v32 + 4) = v134;
    *v33 = v134;
    *(v32 + 12) = 2080;
    v34 = v134;
    v35 = RequestMessageBase.requestId.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v142);

    *(v32 + 14) = v37;
    *(v32 + 22) = 2080;
    type metadata accessor for UUID();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v142);

    *(v32 + 24) = v40;
    _os_log_impl(&dword_1DC659000, v29, v30, "ConversationBridge handling message: %@, requestId: %s, sessionId: %s", v32, 0x20u);
    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v33, -1, -1);
    v41 = v129;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  v42 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent];
  (*(*v42 + 376))();
  v43 = *(a4 + 8);
  v44 = *(a4 + 9);
  v45 = (*(*v42 + 384))(v43, v44);
  v46 = (*(*a4 + 400))(v45);
  v49 = v46;
  if (v48)
  {
    outlined consume of ConversationRequestProcessor.State(v46, v47, v48);
    v49 = MEMORY[0x1E69E7CC0];
  }

  started = StartRequestMessageBase.optionalRequestContextData.getter();
  v129 = v49;
  if (started)
  {
    v51 = started;
    v52 = *(a4 + 12);
    v53 = *(a4 + 13);
    v54 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;

    v55 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)(&a4[v54]);
    v56 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage];
    if (v56)
    {
      LOBYTE(v56) = MUXContextMessage.isRMVEnabled.getter();
    }

    v57 = v134;
    v58 = _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t12DirectActiondU0C_Tt3g5Tm(v57, v52, v53, v55 & 1, v56 & 1, v124, v125);
  }

  else
  {
    v59 = *(*a4 + 408);

    v59(a2, v49, 1);
    v58 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], &v140, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v141)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v140, v142);
    v60 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v61 = v133;
    v62 = *(v133 + 16);
    v125 = v60;
    v124 = v133 + 16;
    v123 = v62;
    v62(v131, &a2[v60], v13);
    v63 = *MEMORY[0x1E69D0528];
    v122 = *(v61 + 104);
    v122(v132, v63, v13);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v120 = v58;
    if (v138 == v136 && v139 == v137)
    {
      v64 = 1;
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v73 = v133 + 8;
    v74 = *(v133 + 8);
    v74(v132, v13);
    v133 = v73;
    v74(v131, v13);

    if ((v64 & 1) == 0)
    {
      v75 = v121;
      v123(v121, &a2[v125], v13);
      v122(v126, *MEMORY[0x1E69D0558], v13);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v138 == v136 && v139 == v137)
      {
        v74(v126, v13);
        v74(v75, v13);
      }

      else
      {
        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v74(v126, v13);
        v74(v75, v13);

        if ((v76 & 1) == 0)
        {
          v132 = a2;
          v126 = RequestMessageBase.requestId.getter();
          v121 = v91;
          v92 = *(a4 + 11);
          v134 = *(a4 + 10);
          v131 = v92;
          v93 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
          v94 = type metadata accessor for UUID();
          v95 = *(v94 - 8);
          v96 = v117;
          (*(v95 + 16))(v117, &a4[v93], v94);
          (*(v95 + 56))(v96, 0, 1, v94);
          v97 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
          v98 = type metadata accessor for SessionConfiguration();
          v99 = *(v98 - 8);
          v100 = v118;
          (*(v99 + 16))(v118, &a4[v97], v98);
          (*(v99 + 56))(v100, 0, 1, v98);
          v101 = a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled];
          v102 = type metadata accessor for StartExecutionTurn(0);
          v103 = objc_allocWithZone(v102);
          v104 = &v103[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
          v105 = v121;
          *v104 = v126;
          v104[1] = v105;
          v106 = &v103[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
          v107 = v131;
          *v106 = v134;
          v106[1] = v107;
          outlined init with copy of ReferenceResolutionClientProtocol?(v96, &v103[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v100, &v103[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          v103[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = v119 & 1;
          v103[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = v101;
          v135.receiver = v103;
          v135.super_class = v102;

          v108 = objc_msgSendSuper2(&v135, sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v109 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24];
          v110 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32];
          __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient], v109);
          (*(v110 + 8))(v108, *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate], &protocol witness table for ConversationBridgeProcessorDelegate, v109, v110);
          v111 = v108;
          v77 = Logger.logObject.getter();
          v112 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v77, v112))
          {
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            *v113 = 138412290;
            *(v113 + 4) = v111;
            *v114 = v111;
            v115 = v111;
            _os_log_impl(&dword_1DC659000, v77, v112, "Successfully sent: %@", v113, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v114, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v114, -1, -1);
            MEMORY[0x1E12A2F50](v113, -1, -1);

            v77 = v115;
          }

          else
          {
          }

          a2 = v132;
          goto LABEL_27;
        }
      }
    }

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DC659000, v77, v78, "Not sending StartExecutionTurn for Understanding-on-server use case", v79, 2u);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

LABEL_27:

    v80 = v127;
    v123(v127, &a2[v125], v13);
    v81 = v128;
    v122(v128, *MEMORY[0x1E69D0538], v13);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
    v82 = dispatch thunk of static Equatable.== infix(_:_:)();
    v74(v81, v13);
    v74(v80, v13);
    if (v82)
    {
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();
      v85 = os_log_type_enabled(v83, v84);
      v86 = v120;
      v87 = v129;
      if (v85)
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_1DC659000, v83, v84, "Not updating server context for StartLocalRequest", v88, 2u);
        MEMORY[0x1E12A2F50](v88, -1, -1);
      }

      if (!v86)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v89 = v143;
      v90 = v144;
      __swift_project_boxed_opaque_existential_1(v142, v143);
      (*(v90 + 24))(v89, v90);
      v86 = v120;
      v87 = v129;
      if (!v120)
      {
LABEL_34:

        __swift_destroy_boxed_opaque_existential_1Tm(v142);
        return;
      }
    }

    ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v86, a2, v87);

    goto LABEL_34;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v140, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v65 = v134;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v142[0] = v69;
    *v68 = 136315138;
    v70 = RequestMessageBase.requestId.getter();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v142);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_1DC659000, v66, v67, "Cannot handle request as contextUpdater is nil. requestId: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x1E12A2F50](v69, -1, -1);
    MEMORY[0x1E12A2F50](v68, -1, -1);
  }

  (*(**&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil] + 152))(0xD000000000000024, 0x80000001DCA808E0, *(a4 + 10), *(a4 + 11), v43, v44, 0, 0);
}

Swift::Void __swiftcall SelfReflectionAgent.reset()()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287465736572, 0xE700000000000000, v9);
    _os_log_impl(&dword_1DC659000, v3, v4, "SelfReflectionAgent.%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  (*(*v1 + 208))(0, 0);
  (*(*v1 + 232))(0);
  (*(*v1 + 256))(0);
  v7 = (*(*v1 + 280))(0);
  (*(*v1 + 320))(v9, v7);
  (*(*v1 + 304))(v9);
  WORD2(v9[0]) = 514;
  LODWORD(v9[0]) = 33686018;
  v9[1] = 0;
  v10 = 1;
  v11 = 0;
  v12 = 1;
  v13 = 2;
  v14 = 0;
  v15 = 0;
  (*(*v1 + 328))(v9);
  v8 = *(*v1 + 352);

  v8(0);
}

uint64_t SelfReflectionAgent.requestId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t SelfReflectionAgent.resultCandidateState.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

void SelfReflectionAgent.executionInputInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

void SelfReflectionAgent.requestContextData.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t SelfReflectionAgent.previousTurnMitigationResponse.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  v6[0] = *(v1 + 152);
  v6[1] = v3;
  v6[2] = *(v1 + 184);
  v4 = *(a1 + 16);
  *(v1 + 152) = *a1;
  v7 = *(v1 + 200);
  *(v1 + 168) = v4;
  *(v1 + 184) = *(a1 + 32);
  *(v1 + 200) = *(a1 + 48);
  return outlined destroy of SelfReflectionResponse(v6);
}

uint64_t SelfReflectionAgent.isRequestCompleted.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 264) = a1;
  return result;
}

Swift::Void __swiftcall SelfReflectionAgent.setRequestId(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationBridge);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001DCA876C0, &v11);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v11);
    _os_log_impl(&dword_1DC659000, v6, v7, "SelfReflectionAgent.%s requestId: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v10 = *(*v2 + 208);

  v10(countAndFlagsBits, object);
}

id ConversationRequestProcessor.state.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of ConversationRequestProcessor.State(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void outlined copy of ConversationRequestProcessor.State(id result, void *a2, char a3)
{
  if (a3 == 2)
  {

    v3 = a2;
  }

  else
  {
    if (a3 == 1)
    {
    }

    else if (a3)
    {
      return;
    }
  }
}

void outlined consume of ConversationRequestProcessor.State(void *a1, void *a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 == 1)
    {
    }

    else if (a3)
    {
      return;
    }
  }
}

uint64_t ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)(uint64_t a1)
{
  v2 = type metadata accessor for ConversationSessionKey();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17[-1] - v8;
  (*(*v1 + 424))(v17, v7);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  (*(v3 + 104))(v5, *MEMORY[0x1E69D07E8], v2);
  dispatch thunk of ConversationSessionState.value(forKey:userId:)();
  (*(v3 + 8))(v5, v2);
  if (v19)
  {
    v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    v11 = swift_dynamicCast();
    v12 = *(v10 - 8);
    v13 = 1;
    (*(v12 + 56))(v9, v11 ^ 1u, 1, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    if ((*(v12 + 48))(v9, 1, v10) != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_sypSgMd, &_sypSgMR);
    v14 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v13 = 0;
LABEL_6:
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  return v13;
}

uint64_t ConversationRequestProcessor.sessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol(v1 + v3, a1);
}

id _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t12DirectActiondU0C_Tt3g5Tm(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v83 = a7;
  v84 = a5;
  v78 = a6;
  v82 = a4;
  v89 = a3;
  v80 = a2;
  v91 = type metadata accessor for RequestPositionInSession();
  v86 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Restrictions();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v79 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = &v61 - v13;
  v14 = type metadata accessor for ResponseMode();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v61 - v22;
  v24 = type metadata accessor for InputOrigin();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = StartRequestMessageBase.optionalRequestContextData.getter();
  if (started)
  {
    v29 = started;
    v76 = a1;
    StartRequestMessageBase.inputOrigin.getter();
    v30 = InputOrigin.aceInputOrigin.getter();
    v73 = v31;
    v74 = v30;
    (*(v25 + 8))(v27, v24);
    RequestContextData.audioSource.getter();
    AudioSource.init(aceValue:)();
    RequestContextData.audioDestination.getter();
    AudioDestination.init(aceValue:)();
    RequestContextData.responseMode.getter();
    v32 = v77;
    ResponseMode.init(aceValue:)();
    v33 = *(v15 + 48);
    v34 = v33(v32, 1, v14);
    v75 = v15;
    v87 = v23;
    v88 = v20;
    if (v34 == 1)
    {
      v35 = v17;
      static ResponseMode.displayForward.getter();
      if (v33(v32, 1, v14) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      }
    }

    else
    {
      v43 = *(v15 + 32);
      v35 = v17;
      v43(v17, v32, v14);
    }

    v61 = v14;
    v44 = RequestContextData.isEyesFree.getter();
    v63 = RequestContextData.isVoiceTriggerEnabled.getter();
    v62 = RequestContextData.isTextToSpeechEnabled.getter();
    v64 = RequestContextData.bargeInModes.getter();
    RequestContextData.approximatePreviousTTSInterval.getter();
    RequestContextData.deviceRestrictions.getter();
    v45 = v79;
    Restrictions.init(aceValue:)();
    v66 = RequestContextData.isTriggerlessFollowup.getter();
    v70 = RequestContextData.voiceTriggerEventInfo.getter();
    v46 = RequestContextData.voiceAudioSessionId.getter();
    v69 = RequestContextData.isSystemApertureEnabled.getter();
    v68 = RequestContextData.isLiveActivitiesSupported.getter();
    v67 = RequestContextData.isInAmbient.getter();
    v77 = RequestContextData.conjunctionInfo.getter();
    v72 = RequestContextData.isDeviceShowingLockScreen.getter();
    v71 = RequestContextData.isDeviceLocked.getter();
    v47 = v86;
    (*(v86 + 104))(v90, *MEMORY[0x1E69CE5A0], v91);
    v48 = type metadata accessor for RequestContextData(0);
    v49 = objc_allocWithZone(v48);
    v50 = &v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
    v51 = v73;
    *v50 = v74;
    v50[1] = v51;
    outlined init with copy of ReferenceResolutionClientProtocol?(v87, &v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v88, &v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v52 = v75;
    v53 = *(v75 + 16);
    v65 = v35;
    v53(&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v35, v14);
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v44 & 1;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = v78;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v63 & 1;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v62 & 1;
    *&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = 0;
    *&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = 0;
    *&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = 0;
    *&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v64;
    outlined init with copy of ReferenceResolutionClientProtocol?(v92, &v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v54 = v81;
    v55 = v85;
    (*(v81 + 16))(&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v45, v85);
    *&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = 0;
    v56 = &v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
    v57 = v89;
    *v56 = v80;
    v56[1] = v57;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v66 & 1;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v82 & 1;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = v83;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = 0;
    *&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v70;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v84 & 1;
    *&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v46;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v69 & 1;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v68 & 1;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v67 & 1;
    v58 = v90;
    v59 = v91;
    (*(v47 + 16))(&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v90, v91);
    *&v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v77;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v72 & 1;
    v49[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v71 & 1;
    v93.receiver = v49;
    v93.super_class = v48;
    v42 = objc_msgSendSuper2(&v93, sel_init);
    (*(v47 + 8))(v58, v59);
    (*(v54 + 8))(v45, v55);
    outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    (*(v52 + 8))(v65, v61);
    outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    v36 = a1;

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.executor);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = v36;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DC659000, v38, v39, "RequestContextData.init(startSpeechRequest: StartSpeechRequestMessage) - missing requestContextData", v41, 2u);
      MEMORY[0x1E12A2F50](v41, -1, -1);
    }

    return 0;
  }

  return v42;
}

uint64_t type metadata accessor for StartExecutionTurn(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartExecutionTurn;
  if (!type metadata singleton initialization cache for StartExecutionTurn)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 408);

  v9 = a1;
  v8(a2, a1, 2);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = v53;
    *v14 = 136315138;
    v15 = v11;
    v16 = [v15 description];
    v17 = a3;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = a1;
    v20 = v19;

    v21 = v18;
    a3 = v17;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v56);
    a1 = v54;

    *(v14 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v12, v13, "RequestContextData: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1E12A2F50](v53, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  (*(**(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) + 408))(v11);
  v23 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
  v24 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v23);
  (*(v24 + 16))(v11, *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate), &protocol witness table for ConversationBridgeProcessorDelegate, v23, v24);
  v25 = v11;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = a1;
    v30 = v25;
    _os_log_impl(&dword_1DC659000, v26, v27, "Successfully sent: %@", v28, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  v31 = *(a3 + 16);
  if (v31)
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v31;

      _os_log_impl(&dword_1DC659000, v32, v33, "Replaying %ld cached candidate messages that were received for this request prior to the start-turn signal", v34, 0xCu);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    else
    {
    }

    for (i = (a3 + 32); ; ++i)
    {
      v37 = *i;
      v38 = *i >> 61;
      if (v38 <= 2)
      {
        break;
      }

      if (v38 <= 4)
      {
        v39 = (v37 & 0x1FFFFFFFFFFFFFFFLL);
        if (v38 == 3)
        {
          v36 = *(*v4 + 872);
        }

        else
        {
          v36 = *(*v4 + 848);
        }

LABEL_19:
        v40 = v39;
        v36();
LABEL_13:

        goto LABEL_14;
      }

      if (v38 == 5)
      {
        v41 = *(*v4 + 904);
        v40 = (v37 & 0x1FFFFFFFFFFFFFFFLL);
        v41();
        goto LABEL_13;
      }

      v42 = (v37 & 0x1FFFFFFFFFFFFFFFLL);
      type metadata accessor for ServerFallbackCapableRequestProcessor(0);
      v43 = swift_dynamicCastClass();
      if (!v43)
      {
        v55 = v42;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v56 = v49;
          *v48 = 136315138;
          swift_getMetatypeMetadata();
          v50 = _typeName(_:qualified:)();
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v56);

          *(v48 + 4) = v52;
          _os_log_impl(&dword_1DC659000, v46, v47, "Cannot handle ENOS because processor is of type %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x1E12A2F50](v49, -1, -1);
          MEMORY[0x1E12A2F50](v48, -1, -1);
        }

        else
        {
        }

        return;
      }

      v44 = *(*v43 + 1584);
      v45 = v42;

      v44(v45);

LABEL_14:
      if (!--v31)
      {
        return;
      }
    }

    if (!v38)
    {
      goto LABEL_14;
    }

    v39 = (v37 & 0x1FFFFFFFFFFFFFFFLL);
    if (v38 == 1)
    {
      v36 = *(*v4 + 856);
    }

    else
    {
      v36 = *(*v4 + 880);
    }

    goto LABEL_19;
  }
}

uint64_t ConversationBridge.handleRunSiriKitExecutorMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v2;
  v5 = a1;

  v6 = RunSiriKitExecutorMessage.command.getter();
  v7 = RunSiriKitExecutorMessage.commandExecutionInfo.getter();
  v8 = RunSiriKitExecutorMessage.invocationId.getter();
  v10 = v9;

  ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:)(v6, v7, v8, v10, partial apply for closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:), v4);
}

uint64_t sub_1DC67E5F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v49 = a5;
  v50 = a6;
  v47 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v46 - v16;
  v48 = a2;
  v18 = [a2 originPeerInfo];
  v19 = v18;
  if (v18)
  {
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v13;
    v25 = v19 != 0;
    v26 = swift_slowAlloc();
    v46 = v21;
    v27 = v19;
    v28 = v17;
    v29 = a4;
    v30 = a3;
    v31 = v26;
    *v26 = 67109120;
    *(v26 + 4) = v25;
    v13 = v24;
    _os_log_impl(&dword_1DC659000, v22, v23, "RSKE isRemote=%{BOOL}d", v26, 8u);
    v32 = v31;
    a3 = v30;
    a4 = v29;
    v17 = v28;
    v19 = v27;
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  if (v19 || (v46 = 0, MEMORY[0x1EEE9AC00](v33), v34 = a4, v35 = a3, v36 = *(*v7 + 480), v37 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x1E69C7880), result = v36(v47, v48, v49, v50, partial apply for closure #1 in ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:), &v46 - 4, v37), a3 = v35, a4 = v34, v19 = v46, (result & 1) == 0))
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DC659000, v39, v40, "Handing RSKE outside of any request processor", v41, 2u);
      MEMORY[0x1E12A2F50](v41, -1, -1);
    }

    v42 = (*(*v7 + 984))();
    (*(*v7 + 912))(v42);
    if (v19)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    v44 = (*(*v7 + 1184))(v47, v48, v49, v50, v43, v17, v13, a3, a4);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v45 = direct field offset for ConversationBridge.runSiriKitExecutorProcessor;
    swift_beginAccess();
    *(v7 + v45) = v44;

    (*(*v44 + 512))(1, 0);
  }

  return result;
}

uint64_t ConversationRequestAwareBridgeBase.tryToDipatchCommandToProcessor<A>(_:executionContextInfo:reply:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v13 = (*(*v7 + 376))();
  if (!v13)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72 = v27;
      *v26 = 136315138;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v72);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DC659000, v24, v25, "There is no request processor to serve command: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    return 0;
  }

  v14 = v13;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v15 = *(v13 + 80);
  v16 = *(v13 + 88);

  v17 = [a1 refId];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v15 == v19 && v16 == v21)
    {
LABEL_21:

      goto LABEL_22;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v32 = v14[8];
  v33 = v14[9];

  v34 = [a1 refId];
  if (!v34)
  {

    goto LABEL_27;
  }

  v35 = v34;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (v32 == v36 && v33 == v38)
  {
    goto LABEL_21;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
LABEL_27:

    v49 = a1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v72 = v53;
      *v52 = 136315906;
      v54 = _typeName(_:qualified:)();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v72);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = [v49 refId];
      if (v57)
      {
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;
      }

      else
      {
        v61 = 0xE300000000000000;
        v59 = 7104878;
      }

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v72);

      *(v52 + 14) = v62;
      *(v52 + 22) = 2080;
      v63 = v14[10];
      v64 = v14[11];

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v72);

      *(v52 + 24) = v65;
      *(v52 + 32) = 2080;
      v66 = v14[8];
      v67 = v14[9];

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v72);

      *(v52 + 34) = v68;
      _os_log_impl(&dword_1DC659000, v50, v51, "Received %s with refId: %s whereas current rootRequestId is: %s and current requestId is: %s .. ignoring this command", v52, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v53, -1, -1);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    else
    {
    }

    return 0;
  }

LABEL_22:
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v72 = v44;
    *v43 = 136315138;
    v45 = _typeName(_:qualified:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v72);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_1DC659000, v41, v42, "Dispatching %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v43, -1, -1);
  }

  v48 = a5(v14);
  v48(a1, v69, v70, v71);

  return 1;
}

uint64_t (*closure #1 in ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return partial apply for closure #1 in closure #1 in ConversationBridge.doHandleAceRunSiriKitExecutor(command:executionContext:plannerInvocationId:reply:);
}

void ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v197 = a5;
  v198 = a6;
  v202 = a4;
  v199 = a3;
  v196 = a2;
  v214 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v207 = &v171 - v9;
  v204 = type metadata accessor for ConversationSessionKey();
  v195 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v203 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UserSessionState();
  v200 = *(v11 - 8);
  v201 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v206 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v205 = &v171 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v213 = &v171 - v16;
  v17 = type metadata accessor for SelectedUserAttributes();
  v193 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v188 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v190 = &v171 - v23;
  v24 = type metadata accessor for UserID();
  v208 = *(v24 - 8);
  v209 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v189 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v212 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v211 = &v171 - v29;
  v30 = type metadata accessor for RequestType();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v210 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v216 = &v171 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v215 = &v171 - v36;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v37, static Logger.conversationBridge);
  v39 = a1;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  v42 = os_log_type_enabled(v40, v41);
  v194 = v39;
  v191 = v21;
  v192 = v17;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v187 = v38;
    v45 = v44;
    v225[0] = v44;
    *v43 = 136315394;
    v46 = [v39 debugDescription];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v31;
    v49 = v30;
    v51 = v50;

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v51, v225);

    *(v43 + 4) = v52;
    *(v43 + 12) = 2080;
    v53 = _typeName(_:qualified:)();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v225);

    *(v43 + 14) = v55;
    v30 = v49;
    v31 = v48;
    _os_log_impl(&dword_1DC659000, v40, v41, "Handling %s in %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v45, -1, -1);
    MEMORY[0x1E12A2F50](v43, -1, -1);
  }

  v56 = v217;
  v57 = (*(v217->isa + 76))();
  if (v57)
  {
    v58 = v57;
    v59 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
    swift_beginAccess();
    v60 = 0;
    v61 = *(v58 + v59);
    if (v61 >> 62 == 1)
    {
      v60 = (v61 & 0x3FFFFFFFFFFFFFFFLL);
    }

    v62 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v186 = *(v31 + 16);
    v187 = v31 + 16;
    v186(v215, v58 + v62, v30);
    (*(v31 + 104))(v216, *MEMORY[0x1E69D0538], v30);
    _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v225[0] == v224[0] && v225[1] == v224[1])
    {
      v185 = 0;
    }

    else
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v66 = 0;
      }

      else
      {
        v66 = 2;
      }

      v185 = v66;
    }

    v69 = *(v31 + 8);
    v68 = v31 + 8;
    v67 = v69;
    v69(v216, v30);
    v69(v215, v30);

    v71 = (*(v56->isa + 186))(v70);
    v216 = v60;
    if (v71)
    {
      v72 = v71;
      v73 = v207;
LABEL_45:
      v156 = *(*v72 + 640);

      v158 = v156(v157);
      v159 = (*(v56->isa + 50))();
      if (v161 == 1)
      {

        v162 = *(v56->isa + 51);

        v163 = v158;
        v162(v58, v158, 2);
      }

      else
      {
        outlined consume of ConversationRequestProcessor.State(v159, v160, v161);
      }

      v164 = *(&v56->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
      v165 = type metadata accessor for TaskPriority();
      (*(*(v165 - 8) + 56))(v73, 1, 1, v165);
      v166 = one-time initialization token for shared;

      v167 = v158;

      if (v166 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v168 = static MessageBusActor.shared;
      v169 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
      v170 = swift_allocObject();
      v170[2] = v168;
      v170[3] = v169;
      v170[4] = v58;
      v170[5] = v56;
      v170[6] = v72;
      v170[7] = v167;
      v170[8] = v214;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v73, &async function pointer to partial apply for closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:), v170);
      (*(*v164 + 120))();

      return;
    }

    v179 = *(&v56->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);
    outlined init with copy of ReferenceResolutionClientProtocol(v56 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient, v225);
    outlined init with copy of ReferenceResolutionClientProtocol?(v56 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, v224, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    isa = v56[13].isa;
    v177 = v56[12].isa;
    v182 = v58;
    v75 = (v58 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v76 = *(v58 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);
    v175 = *v75;
    v176 = isa;
    v77 = one-time initialization token for sharedInstance;

    v174 = v76;

    if (v77 != -1)
    {
      swift_once();
    }

    v178 = static ConversationBridgeInstrumentationUtil.sharedInstance;
    v183 = *(&v56->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
    if (v60)
    {
      v78 = *(v60 + 2);
      v172 = *(v60 + 3);
      v173 = v78;
    }

    else
    {
      v172 = 0;
      v173 = 0;
    }

    v180 = v67;
    v79 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
    v80 = v182;
    swift_beginAccess();
    v81 = *(v80 + v79);
    v186(v210, v80 + v62, v30);
    v171 = v81;
    v184 = v30;
    v181 = v68;
    if (v60)
    {
      v83 = v208;
      v82 = v209;
      v84 = v189;
      (*(v208 + 16))(v189, &v60[OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId], v209);
      v85 = v211;
      (*(v83 + 32))(v211, v84, v82);
      v215 = *(v83 + 56);
      (v215)(v85, 0, 1, v82);
      v86 = *(*v60 + 792);
      v87 = v81;

      v89 = v190;
      v86(v88);

      v91 = v192;
      v90 = v193;
      v189 = *(v193 + 48);
      if ((v189)(v89, 1, v192))
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        LODWORD(v190) = 0;
      }

      else
      {
        v96 = v188;
        (*(v90 + 16))(v188, v89, v91);
        outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        LODWORD(v190) = SelectedUserAttributes.meetsUserSessionThreshold.getter();
        (*(v90 + 8))(v96, v91);
      }

      v97 = v91;
      v98 = *(*v60 + 792);

      v100 = v191;
      v98(v99);

      if ((v189)(v100, 1, v97))
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        LODWORD(v191) = 0;
      }

      else
      {
        v101 = v193;
        v102 = v188;
        (*(v193 + 16))(v188, v100, v97);
        outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        LODWORD(v191) = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
        (*(v101 + 8))(v102, v97);
      }
    }

    else
    {
      v93 = v208;
      v92 = v209;
      v94 = v211;
      (*(v208 + 16))(v211, v56 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v209);
      v215 = *(v93 + 56);
      (v215)(v94, 0, 1, v92);
      v95 = v81;
      LODWORD(v191) = 0;
      LODWORD(v190) = 0;
    }

    v103 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
    v104 = type metadata accessor for UUID();
    v105 = *(v104 - 8);
    v106 = v56 + v103;
    v107 = v213;
    (*(v105 + 16))(v213, v106, v104);
    (*(v105 + 56))(v107, 0, 1, v104);
    v108 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
    v109 = type metadata accessor for SessionConfiguration();
    v110 = *(v109 - 8);
    v111 = v56 + v108;
    v112 = v205;
    (*(v110 + 16))(v205, v111, v109);
    (*(v110 + 56))(v112, 0, 1, v109);
    v113 = outlined init with copy of ReferenceResolutionClientProtocol(&v56[3], v223);
    LODWORD(v192) = *(&v56->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled);
    v114 = (*(v56->isa + 71))(v113);
    v193 = *(&v56->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage);
    v115 = v56->isa;
    v188 = *(v56->isa + 53);
    v189 = v115 + 424;
    (v188)(v219, v114);
    __swift_project_boxed_opaque_existential_1(v219, v220);
    v116 = v195;
    v117 = v203;
    v118 = v204;
    v119 = *(v195 + 104);
    v119(v203, *MEMORY[0x1E69D07D8], v204);
    dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
    v120 = *(v116 + 8);
    v120(v117, v118);
    v121 = v215;
    if (v222)
    {
      v122 = v212;
      v123 = v209;
      v124 = swift_dynamicCast();
      v121(v122, v124 ^ 1u, 1, v123);
      v125 = __swift_destroy_boxed_opaque_existential_1Tm(v219);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v219);
      outlined destroy of ReferenceResolutionClientProtocol?(v221, &_sypSgMd, &_sypSgMR);
      v125 = v121(v212, 1, 1, v209);
    }

    (v188)(v219, v125);
    __swift_project_boxed_opaque_existential_1(v219, v220);
    v127 = v203;
    v126 = v204;
    v119(v203, *MEMORY[0x1E69D0808], v204);
    dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
    v120(v127, v126);
    if (v222)
    {
      if (swift_dynamicCast())
      {
        LODWORD(v204) = v218;
        __swift_destroy_boxed_opaque_existential_1Tm(v219);
LABEL_44:
        type metadata accessor for RunSiriKitExecutorProcessor(0);
        v72 = swift_allocObject();
        v203 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
        (v215)(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId, 1, 1, v209);
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall) = 0;
        v128 = (v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId);
        *v128 = 0;
        v128[1] = 0;
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished) = 0;
        v129 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo) = 0;
        v130 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork;
        type metadata accessor for ConcurrentTaskPool();
        v131 = swift_allocObject();
        *(v131 + 16) = MEMORY[0x1E69E7CC0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
        v132 = swift_allocObject();
        *(v132 + 16) = 0;
        *(v72 + v130) = v131;
        *(v131 + 24) = v132;
        v133 = v194;
        v135 = v196;
        v134 = v197;
        *(v72 + 16) = v194;
        *(v72 + 24) = v135;
        v136 = v198;
        *(v72 + 32) = v134;
        *(v72 + 40) = v136;
        *(v72 + 48) = v179;
        outlined init with copy of ReferenceResolutionClientProtocol(v225, v72 + 56);
        outlined init with copy of ReferenceResolutionClientProtocol?(v224, v72 + 96, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source) = v185;
        v137 = v176;
        *(v72 + 152) = v177;
        *(v72 + 160) = v137;
        v138 = v174;
        *(v72 + 136) = v175;
        *(v72 + 144) = v138;
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter) = 0;
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil) = v178;
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper) = v183;
        swift_beginAccess();
        v139 = v172;
        *v128 = v173;
        v128[1] = v139;
        swift_beginAccess();
        v140 = v171;
        *(v72 + v129) = v171;
        v186((v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType), v210, v184);
        v141 = v203;
        swift_beginAccess();
        v215 = v140;
        v142 = v135;
        v143 = v133;
        outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ())?(v134, v136);

        v144 = v183;
        swift_unknownObjectRetain();
        outlined assign with copy of UserID?(v211, &v141[v72]);
        swift_endAccess();
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold) = v190 & 1;
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold) = v191 & 1;
        outlined init with copy of ReferenceResolutionClientProtocol?(v213, v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v145 = v205;
        outlined init with copy of ReferenceResolutionClientProtocol?(v205, v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v146 = (v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
        v147 = v202;
        *v146 = v199;
        v146[1] = v147;
        outlined init with copy of ReferenceResolutionClientProtocol(v223, v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher);
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled) = v192;
        v148 = v193;
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage) = v193;
        outlined init with copy of ReferenceResolutionClientProtocol?(v212, v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v149 = v200;
        v150 = v201;
        v151 = v206;
        (*(v200 + 16))(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState, v206, v201);
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession) = v204;
        type metadata accessor for RunSiriKitExecutorProcessorExecutionDelegate();
        v152 = swift_allocObject();
        swift_weakInit();
        *(v152 + 24) = v144;
        *(v72 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate) = v152;
        v153 = v148;
        swift_unknownObjectRetain();

        RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)(v72);

        (*(v149 + 8))(v151, v150);
        __swift_destroy_boxed_opaque_existential_1Tm(v223);
        outlined destroy of ReferenceResolutionClientProtocol?(v145, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v213, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v211, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v180(v210, v184);
        outlined destroy of ReferenceResolutionClientProtocol?(v224, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v225);
        outlined destroy of ReferenceResolutionClientProtocol?(v212, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v56 = v217;
        v154 = *(v217->isa + 187);
        v155 = swift_retain_n();
        v154(v155);
        v73 = v207;
        v58 = v182;
        goto LABEL_45;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v219);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v219);
      outlined destroy of ReferenceResolutionClientProtocol?(v221, &_sypSgMd, &_sypSgMR);
    }

    LODWORD(v204) = 0;
    goto LABEL_44;
  }

  v217 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v217, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1DC659000, v217, v63, "Received RunSiriKitExecutor while not in a turn. Ignoring.", v64, 2u);
    MEMORY[0x1E12A2F50](v64, -1, -1);
  }

  v65 = v217;
}

void *ConversationRequestProcessor.activeTurn.getter()
{
  v1 = (*(*v0 + 400))();
  if ((v3 - 1) > 1u)
  {
    v6 = 0;
  }

  else
  {
    v4 = v2;
    v5 = v3;

    v3 = v5;
    v2 = v4;
    v6 = v1;
  }

  outlined consume of ConversationRequestProcessor.State(v1, v2, v3);
  return v6;
}

uint64_t ConversationRequestProcessor.userSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RunSiriKitExecutorProcessor(uint64_t a1)
{
  result = type metadata singleton initialization cache for RunSiriKitExecutorProcessor;
  if (!type metadata singleton initialization cache for RunSiriKitExecutorProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC680C50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void ConversationRequestProcessor.sendResultCandidateSelected(selectedResultCandidateId:isServerFallback:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a5;
  HIDWORD(v25) = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69C79A0]) init];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v18 = MEMORY[0x1E12A1410](v15, v17);

  [v14 setAceId_];

  v19 = MEMORY[0x1E12A1410](v6[10], v6[11]);
  [v14 setRefId_];

  v20 = MEMORY[0x1E12A1410](a1, a2);
  [v14 setSelectedResultCandidateId_];

  [v14 setServerFallback_];
  (*(*v6 + 480))(1);
  v21 = *(v6 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 16) = a4;
  *(v22 + 24) = v23;
  aBlock[4] = partial apply for closure #1 in ConversationRequestProcessor.sendResultCandidateSelected(selectedResultCandidateId:isServerFallback:completion:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_29;
  v24 = _Block_copy(aBlock);
  sub_1DC680C50(a4);

  [v21 handleCommand:v14 completion:v24];
  _Block_release(v24);
}

uint64_t outlined assign with copy of UserID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.conversationBridge);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "rskeProcessor was already set on RunSiriKitExecutorProcessorExecutionDelegate ignoring this operation", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }
  }

  else
  {
    swift_weakAssign();
  }
}

uint64_t ServerFallbackCapableRequestProcessor.runSiriKitExecutorProcessor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t RunSiriKitExecutorProcessor.makeRequestContextData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v60 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v60 - v7;
  v9 = v0[2];
  v10 = [v9 inputOrigin];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "Warning: RSKE command has no inputOrigin, defaulting to that of the last request", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v19;
  }

  v20 = [v9 mode];
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ResponseMode.init(aceValue:)();
  v22 = type metadata accessor for ResponseMode();
  if ((*(*(v22 - 8) + 48))(v8, 1, v22) == 1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "Note: RSKE command has no mode, using nil (SKE will get it from turn context)", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }
  }

  type metadata accessor for RequestContextData.Builder(0);
  swift_allocObject();
  v27 = *RequestContextData.Builder.init()();
  v28 = (*(v27 + 1040))(v12, v14);

  v29 = (*(*v28 + 1064))(v8);

  v30 = (*(*v29 + 1072))([v9 eyesFree]);

  v31 = (*(*v30 + 1080))([v9 directAction]);

  v32 = (*(*v31 + 1088))([v9 voiceTriggerEnabled]);

  v33 = (*(*v32 + 1096))([v9 textToSpeechEnabled]);

  v34 = v1[3];
  v35 = [v34 originPeerInfo];
  v36 = (*(*v33 + 1104))();

  v37 = [v34 endpointInfo];
  v38 = (*(*v36 + 1112))();

  v39 = [v34 instanceInfo];
  v40 = (*(*v38 + 1120))();

  v41 = (*(*v40 + 1128))(MEMORY[0x1E69E7CC0]);

  v42 = [v34 deviceRestrictions];
  if (v42)
  {
    v43 = v42;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Restrictions.init(aceValue:)();
  v44 = type metadata accessor for Restrictions();
  (*(*(v44 - 8) + 56))(v4, 0, 1, v44);
  v45 = (*(*v41 + 1144))(v4);

  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v46 = [v34 currentHomeInfo];
  v47 = (*(*v45 + 1152))();

  v48 = v1[20];
  if (v48)
  {
    v49 = v1[19];
    v50 = v48;
  }

  else
  {
    v51 = [v9 remoteExecution];
    if (v51 && (v52 = v51, v53 = [v51 executionDeviceAssistantId], v52, v53))
    {
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v54;
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
    }
  }

  v55 = *(*v47 + 1160);

  v56 = v55(v49, v50);

  v58 = (*(*v56 + 1280))(v57);

  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  return v58;
}

uint64_t outlined init with copy of RemoteConversationTurnData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v9, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(a4, a5, a6, a7);
}

{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(a4, a5, a6, a7);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_allocObject();
  v0[15] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return specialized withCancellableContinuation<A>(body:)(specialized withCancellableContinuation<A>(body:), partial apply for specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), v5);
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1(0, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_allocObject();
  v0[15] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return specialized withCancellableContinuation<A>(body:)(partial apply for specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), v5);
}

{

  v1 = v0[18];
  v2 = v0[19];

  v3 = v0[1];

  return v3(v2, v1, 0);
}

{
  v1 = *(v0 + 136);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  if (v3)
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);

    v9 = *(v8 + 32);
    v9(v6, v5, v7);
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v4 = swift_allocError();
    v9(v10, v6, v7);
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v0 + 8);

  return v12(v4, v11);
}

{
  v1 = *(v0 + 136);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  if (v3)
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);

    v9 = *(v8 + 32);
    v9(v6, v5, v7);
    lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v4 = swift_allocError();
    v9(v10, v6, v7);
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v0 + 8);

  return v12(v4, 0, v11);
}

uint64_t specialized withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19ManagedContinuationCyytGMd, &_s14SiriKitRuntime19ManagedContinuationCyytGMR);
  v7 = swift_allocObject();
  v3[2] = v7;
  v8 = *(*v7 + 88);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  v10 = v7 + *(*v7 + 96);
  *v10 = 0;
  *(v10 + 8) = -1;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v7 + *(*v7 + 104)) = v11;
  v12 = v11;
  v13 = MEMORY[0x1E12A1410](0xD000000000000027, 0x80000001DCA7D620);
  [v12 setName_];

  v14 = swift_task_alloc();
  v3[3] = v14;
  v14[2] = v7;
  v14[3] = a2;
  v14[4] = a3;
  v15 = swift_task_alloc();
  v3[4] = v15;
  *v15 = v3;
  v15[1] = withCancellableContinuation<A>(body:);
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE20](a1, &async function pointer to partial apply for specialized closure #2 in withCancellableContinuation<A>(body:), v14, partial apply for specialized closure #1 in withCancellableContinuation<A>(body:), v7, v16);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)()
{
  v12 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v11);
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_1DC659000, v2, v3, "%s: task %lu begin", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v10 = (v0[7] + *v0[7]);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return v10();
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v12 = v0;
  v1 = v0[9];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  specialized ManagedContinuation.updateState(continuation:result:)(v1, 0, 0);
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + 16), *(v6 + 24), &v11);
    *(v7 + 12) = 2048;
    *(v7 + 14) = v5;
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task %lu succeeded", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

{
  v12 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v11);
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_1DC659000, v2, v3, "%s: task %lu begin", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v10 = (v0[9] + *v0[9]);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);

  return v10(v0 + 2);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[2];
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  swift_unknownObjectRetain();
  specialized ManagedContinuation.updateState(continuation:result:)(v1, v2, v3, 0);
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  swift_unknownObjectRelease_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v8 + 16), *(v8 + 24), &v13);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v7;
    _os_log_impl(&dword_1DC659000, v5, v6, "%s: task %lu succeeded", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

{
  v33 = v0;
  v1 = v0[12];

  v2 = v1;
  v3 = static os_log_type_t.debug.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[12];
    v6 = v0[4];
    v29 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v30);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v30);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);

    v31 = v16;
    v32 = v15;
    MEMORY[0x1E12A1580](0x206B736174203ALL, 0xE700000000000000);
    v0[2] = v29;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v17);

    MEMORY[0x1E12A1580](0x6520776572687420, 0xEE00203A726F7272);
    v0[3] = v5;
    v18 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v19);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v30);

    *(v7 + 24) = v20;
    _os_log_impl(&dword_1DC659000, v4, v3, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);

    v21 = v5;
  }

  else
  {
    v22 = v0[12];

    v21 = v22;
  }

  v23 = v0[12];
  v24 = v0[9];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = v23;
  specialized ManagedContinuation.updateState(continuation:result:)(v24, v23, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);

  v27 = v0[1];

  return v27();
}

{
  v33 = v0;
  v1 = v0[14];

  v2 = v1;
  v3 = static os_log_type_t.debug.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[14];
    v6 = v0[6];
    v29 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315650;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v30);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v30);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);

    v31 = v16;
    v32 = v15;
    MEMORY[0x1E12A1580](0x206B736174203ALL, 0xE700000000000000);
    v0[4] = v29;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v17);

    MEMORY[0x1E12A1580](0x6520776572687420, 0xEE00203A726F7272);
    v0[5] = v5;
    v18 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v19);

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v30);

    *(v7 + 24) = v20;
    _os_log_impl(&dword_1DC659000, v4, v3, "%s:%s: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);

    v21 = v5;
  }

  else
  {
    v22 = v0[14];

    v21 = v22;
  }

  v23 = v0[14];
  v24 = v0[11];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = v23;
  specialized ManagedContinuation.updateState(continuation:result:)(v24, v23, 0, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);

  v27 = v0[1];

  return v27();
}

uint64_t partial apply for specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v7, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v7, v6);
}

uint64_t specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "bridge(didReceiveStartExecutionTurn:from:)", 42, 2);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    v7 = *(v5 + 104);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v7 + 16);
    }

    *(v6 + 4) = v8;

    _os_log_impl(&dword_1DC659000, v2, v3, "[ConversationService] Active Conversation Count: %ld", v6, 0xCu);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[12];
  swift_beginAccess();
  v10 = *(v9 + 112);
  v11 = *(v9 + 120);
  if (v11 >> 6 == 1)
  {
    v12 = *(v9 + 120);
  }

  else
  {
    v12 = 0;
  }

  if (v11 >> 6)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(v9 + 112);
  }

  v14 = v0[11];
  *(v9 + 112) = v14;
  *(v9 + 120) = v13 & 1 | 0x40;
  v15 = v14;
  outlined consume of ConversationService.State(v10, v11);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24RemoteConversationClientCSgMd, &_s14SiriKitRuntime24RemoteConversationClientCSgMR);
  v17 = static MessageBusActor.shared;
  v0[14] = static MessageBusActor.shared;
  v19 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v18, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v21 = v0[12];
  v22 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v20, v16, v22, v17, v19, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v21, v16);
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a1, a2, v2);
}

unint64_t type metadata accessor for SAIntentGroupRunSiriKitExecutor()
{
  result = lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor;
  if (!lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor);
  }

  return result;
}

void ConcurrentTaskPool.add(task:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

id specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v20 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v22 = [v20 initWithNSUUID_];

    v23 = [objc_allocWithZone(MEMORY[0x1E69CF320]) init];
    v24 = v23;
    if (v23)
    {
      [v23 setRequestId_];
      v25 = v24;
      if (a4)
      {
        v26 = MEMORY[0x1E12A1410](a3, a4);
      }

      else
      {
        v26 = 0;
      }

      [v24 setResultCandidateId_];
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E69CF308]) init];
    [v19 setEventMetadata_];
    if ((a5 & 1) == 0 || !v19)
    {
      (*(v12 + 8))(v14, v11);

      return v19;
    }

    v27 = objc_allocWithZone(MEMORY[0x1E69CF3D0]);
    v28 = v19;
    v29 = [v27 init];
    v49 = v22;
    if (v29)
    {
      v30 = objc_allocWithZone(MEMORY[0x1E69CF358]);
      v31 = v29;
      v32 = [v30 init];
      [v31 setMemoryUsageMetadata_];
    }

    memset(&v50, 0, sizeof(v50));
    if (getrusage(0, &v50))
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.conversationBridge);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_22;
      }

      v36 = v28;
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, v34, v35, "Not logging maxRSS since getrusage() did not succeed", v37, 2u);
      v38 = v37;
      v28 = v36;
      goto LABEL_21;
    }

    ru_maxrss = v50.ru_maxrss;
    if (v50.ru_maxrss < 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.conversationBridge);
      v34 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v34, v46))
      {
        goto LABEL_22;
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1DC659000, v34, v46, "Not logging maxRSS since it is negative", v47, 2u);
      v38 = v47;
LABEL_21:
      MEMORY[0x1E12A2F50](v38, -1, -1);
LABEL_22:

LABEL_23:
      [v28 setResourceUtilizationMetadata_];

      (*(v12 + 8))(v14, v11);
      return v19;
    }

    if (!v29)
    {
      goto LABEL_23;
    }

    v41 = [v29 memoryUsageMetadata];
    if (!v41)
    {
      goto LABEL_23;
    }

    v34 = v41;
    v42 = ceil(log10(ru_maxrss));
    if (v42 <= 2.0)
    {
LABEL_34:
      [v34 setMaxRSS:ru_maxrss];
      goto LABEL_22;
    }

    v43 = __exp10(v42 + -2.0);
    v44 = v43 * rint(ru_maxrss / v43);
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -1.0)
    {
      if (v44 < 1.84467441e19)
      {
        ru_maxrss = v44;
        goto LABEL_34;
      }

LABEL_41:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  outlined destroy of UUID?(v10);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "The requestId is not a valid UUID. Will return a nil wrapper", v18, 2u);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  return 0;
}

uint64_t RunSiriKitExecutorProcessor.resultCandidateId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logExecutionRequestStarted(executionForRSKE:source:preExecutionType:rootRequestId:requestId:resultCandidateId:triggerlessFollowupHandledLocally:)(Swift::Bool executionForRSKE, SiriKitRuntime::RSKESource_optional source, SiriKitRuntime::PreExecutionRuleType_optional preExecutionType, Swift::String rootRequestId, Swift::String requestId, Swift::String_optional resultCandidateId, Swift::Bool triggerlessFollowupHandledLocally)
{
  v8 = v7;
  object = rootRequestId._object;
  countAndFlagsBits = resultCandidateId.value._countAndFlagsBits;
  v56 = requestId._object;
  v54 = requestId._countAndFlagsBits;
  v9 = rootRequestId._countAndFlagsBits;
  v10 = *&preExecutionType;
  v11 = *&source;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v57 = v18;
  v58 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x1E69CF348]) init];
  if (v24)
  {
    v61 = v24;
    if (executionForRSKE)
    {
      v25 = (*(*v8 + 256))(v11);
      [v61 setCommandSource:v25];
      v24 = v61;
    }

    [v24 setExecutionForRSKE:executionForRSKE];
    v26 = (*(*v8 + 264))(v10, triggerlessFollowupHandledLocally);
    if ((v26 & 0x100000000) == 0)
    {
      [v61 setPreExecutionDecision:v26];
    }

    v27 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(v9, object, countAndFlagsBits, resultCandidateId.value._object, 1);
    if (v27)
    {
      v28 = v27;
      v29 = [objc_allocWithZone(MEMORY[0x1E69CF330]) init];
      if (v29)
      {
        v30 = v29;
        [v29 setStartedOrChanged_];
        v31 = v57;
        if (resultCandidateId.value._object)
        {
          UUID.init(uuidString:)();
          v32 = v58;
          if ((*(v58 + 48))(v17, 1, v31) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            (*(v32 + 32))(v23, v17, v31);
            v41 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v43 = [v41 initWithNSUUID_];

            [v30 setTrpId_];
            (*(v32 + 8))(v23, v31);
          }
        }

        v44 = *(v8 + 104);
        v45 = *(v8 + 112);
        __swift_project_boxed_opaque_existential_1((v8 + 80), v44);
        if ((*(v45 + 16))(v44, v45))
        {
          v46 = v55;
          UUID.init(uuidString:)();
          v47 = v58;
          if ((*(v58 + 48))(v46, 1, v31) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v48 = v53;
            (*(v47 + 32))(v53, v46, v31);
            v49 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            v50 = UUID._bridgeToObjectiveC()().super.isa;
            v51 = [v49 initWithNSUUID_];

            [v30 setSubRequestId_];
            (*(v47 + 8))(v48, v31);
          }
        }

        [v28 setExecutionBridgeContext_];
        [*(v8 + 16) emitMessage_];

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.conversationBridge);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v37, v38, "Failed to create ORCHSchemaORCHExecutionBridgeContext event", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.conversationBridge);
    v61 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1DC659000, v61, v34, "Failed to create ORCHSchemaORCHExecutionRequestReceived event", v35, 2u);
      MEMORY[0x1E12A2F50](v35, -1, -1);
    }
  }

  v40 = v61;
}

uint64_t ConversationService.bridge(didReceiveRequestContextData:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v4[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveRequestContextData:from:), v5, 0);
}

unint64_t ConversationBridgeInstrumentationUtil.mapPreExecutionRuleTypeToLogRuleType(_:_:)(unsigned __int8 a1, char a2)
{
  if (a1 == 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4;
    v3 = 9;
    v4 = 7;
    if (a2)
    {
      v4 = 10;
    }

    if (a1 != 6)
    {
      v3 = v4;
    }

    v5 = 6;
    if (a1 != 4)
    {
      v5 = 8;
    }

    if (a1 <= 5u)
    {
      v3 = v5;
    }

    v6 = 2;
    if (a1 != 2)
    {
      v6 = 3;
    }

    if (a1)
    {
      v2 = 1;
    }

    if (a1 > 1u)
    {
      v2 = v6;
    }

    if (a1 > 3u)
    {
      v2 = v3;
    }
  }

  return v2 | ((a1 == 8) << 32);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
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
        v5 = MEMORY[0x1E69E7CC0];
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

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(*(v0 + 40) + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 120))(v4, v3, v1, v2, ObjectType, v5);
  v7 = *(v0 + 8);

  return v7();
}

void static ServiceBridgeDelegate.fetchContextsDefault(for:includesNearByDevices:requestId:serviceHelper:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v31 = a7;
    v30 = a2;
    v16 = swift_slowAlloc();
    v29 = a3;
    v17 = a5;
    v18 = a6;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v16 = 136315138;
    v20 = Set.description.getter();
    v22 = a4;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);

    *(v16 + 4) = v23;
    a4 = v22;
    _os_log_impl(&dword_1DC659000, v14, v15, "Trying to fetch context for keys: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v24 = v19;
    a6 = v18;
    a5 = v17;
    a3 = v29;
    MEMORY[0x1E12A2F50](v24, -1, -1);
    v25 = v16;
    a2 = v30;
    a7 = v31;
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  if ([a5 respondsToSelector_])
  {
    v26.super.isa = Set._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      v27 = MEMORY[0x1E12A1410](a3, a4);
    }

    else
    {
      v27 = 0;
    }

    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    aBlock[3] = &block_descriptor_9_0;
    v28 = _Block_copy(aBlock);

    [a5 fetchContextsForKeys:v26.super.isa forRequestID:v27 includesNearbyDevices:a2 & 1 completion:v28];
    _Block_release(v28);
  }
}

uint64_t ConversationBridgeProcessorDelegate.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 80);
    v11 = *(Strong + 88);
    v12 = *(v4 + 24);

    static ServiceBridgeDelegate.fetchContextsDefault(for:includesNearByDevices:requestId:serviceHelper:completion:)(a1, a2 & 1, v10, v11, v12, a3, a4);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationBridge);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      v19 = Set.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DC659000, v15, v16, "ConversationRequestProcessor already released, ignoring fetchContexts of %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    return a3(0);
  }
}

uint64_t closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[26];
  if (v3 == 1)
  {

    v4 = v2[1];

    return v4();
  }

  if (v3)
  {
    swift_beginAccess();
    v6 = specialized Set._Variant.remove(_:)(v3);
    swift_endAccess();
    if (v6)
    {
    }

    else
    {
      v11 = *(v2[30] + 280);
      if (v11)
      {
        if (*(v3 + 112) == *(v11 + 112) && *(v3 + 120) == *(v11 + 120))
        {
          outlined consume of RemoteConversationClient??(v3);
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined consume of RemoteConversationClient??(v3);
          if ((v13 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        *(v2[30] + 280) = 0;

        goto LABEL_9;
      }
    }

    outlined consume of RemoteConversationClient??(v3);
  }

LABEL_9:
  v7 = static MessageBusActor.shared;
  v2[35] = static MessageBusActor.shared;
  v8 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

  v9 = swift_task_alloc();
  v2[36] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGy14SiriKitRuntime24RemoteConversationClientCSgGMd, &_sScGy14SiriKitRuntime24RemoteConversationClientCSgGMR);
  *v9 = v2;
  v9[1] = closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);

  return MEMORY[0x1EEE6D8A0](v2 + 26, v7, v8, v10);
}

uint64_t RequestContextData.isDeviceInStarkMode.getter(void (*a1)(uint64_t))
{
  v3 = type metadata accessor for DeviceRestrictions();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))(v8);
  a1(v11);
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x1E69D3610], MEMORY[0x1E69D3618]);
  v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v10, v3);
  return v12 & 1;
}

uint64_t lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[34] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v4, 0);
}

uint64_t objectdestroy_61Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t objectdestroy_61Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t partial apply for closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = type metadata accessor for RequestType();
  v7[28] = v8;
  v7[29] = *(v8 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v7[38] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:), v9, 0);
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:)()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  *(v0 + 312) = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v7 = *(v4 + 16);
  *(v0 + 320) = v7;
  *(v0 + 328) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46 = v6;
  v45 = v7;
  v7(v2, v5 + v6, v3);
  *(v0 + 384) = *MEMORY[0x1E69D0528];
  v8 = *(v4 + 104);
  *(v0 + 336) = v8;
  *(v0 + 344) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v44 = v8;
  (v8)(v1);
  *(v0 + 352) = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 64) == *(v0 + 80) && *(v0 + 72) == *(v0 + 88))
  {
    v47 = 1;
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v9 = *(v0 + 288);
  v10 = *(v0 + 296);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v12 + 8);
  *(v0 + 360) = v13;
  *(v0 + 368) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v11);
  v13(v10, v11);

  if (v47)
  {
LABEL_10:
    if (one-time initialization token for rraasWaitTimeMillis != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 200);
    v22 = type metadata accessor for DispatchTimeInterval();
    v23 = __swift_project_value_buffer(v22, static ServerFallbackCapableRequestProcessor.rraasWaitTimeMillis);
    v48 = (*(*v21 + 1392) + **(*v21 + 1392));
    v24 = swift_task_alloc();
    *(v0 + 376) = v24;
    *v24 = v0;
    v24[1] = closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:);

    return v48(v23);
  }

  v14 = *(v0 + 272);
  v15 = *(v0 + 224);
  v45(*(v0 + 280), v5 + v46, v15);
  v16 = *MEMORY[0x1E69D0558];
  v44(v14, v16, v15);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = *(v0 + 272);
  v18 = *(v0 + 280);
  v19 = *(v0 + 224);
  if (*(v0 + 96) == *(v0 + 112) && *(v0 + 104) == *(v0 + 120))
  {
    v13(*(v0 + 272), *(v0 + 224));
    v13(v18, v19);

    goto LABEL_10;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13(v17, v19);
  v13(v18, v19);

  if (v20)
  {
    goto LABEL_10;
  }

  v26 = *(v0 + 384);
  v27 = *(v0 + 336);
  v28 = *(v0 + 256);
  v29 = *(v0 + 224);
  (*(v0 + 320))(*(v0 + 264), *(v0 + 192) + *(v0 + 312), v29);
  v27(v28, v26, v29);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v30 = *(v0 + 360);
  v32 = *(v0 + 256);
  v31 = *(v0 + 264);
  v33 = *(v0 + 224);
  if (*(v0 + 128) == *(v0 + 144) && *(v0 + 136) == *(v0 + 152))
  {
    v30(*(v0 + 256), *(v0 + 224));
    v30(v31, v33);
    v34 = 1;
LABEL_25:

    v36 = v34;
    goto LABEL_26;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v30(v32, v33);
  v30(v31, v33);

  if ((v35 & 1) == 0)
  {
    v37 = *(v0 + 336);
    v38 = *(v0 + 240);
    v39 = *(v0 + 224);
    (*(v0 + 320))(*(v0 + 248), *(v0 + 192) + *(v0 + 312), v39);
    v37(v38, v16, v39);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 160) == *(v0 + 176) && *(v0 + 168) == *(v0 + 184))
    {
      v34 = 1;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v40 = *(v0 + 360);
    v41 = *(v0 + 248);
    v42 = *(v0 + 224);
    v40(*(v0 + 240), v42);
    v40(v41, v42);
    goto LABEL_25;
  }

  v36 = 1;
LABEL_26:
  (*(**(v0 + 208) + 512))(v36 & 1, *(v0 + 216));

  v43 = *(v0 + 8);

  return v43();
}

{
  v1 = *(*v0 + 304);

  return MEMORY[0x1EEE6DFA0](closure #1 in ServerFallbackCapableRequestProcessor.handleAceRunSiriKitExecutor(_:executionContextInfo:plannerInvocationId:reply:), v1, 0);
}

{

  v1 = *(v0 + 384);
  v2 = *(v0 + 336);
  v3 = *(v0 + 256);
  v4 = *(v0 + 224);
  (*(v0 + 320))(*(v0 + 264), *(v0 + 192) + *(v0 + 312), v4);
  v2(v3, v1, v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = *(v0 + 360);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 224);
  if (*(v0 + 128) == *(v0 + 144) && *(v0 + 136) == *(v0 + 152))
  {
    v5(*(v0 + 256), *(v0 + 224));
    v5(v6, v8);
    v9 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v5(v7, v8);
    v5(v6, v8);

    if (v10)
    {
      v11 = 1;
      goto LABEL_12;
    }

    v12 = *(v0 + 336);
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    (*(v0 + 320))(*(v0 + 248), *(v0 + 192) + *(v0 + 312), v14);
    v12(v13, *MEMORY[0x1E69D0558], v14);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 160) == *(v0 + 176) && *(v0 + 168) == *(v0 + 184))
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v15 = *(v0 + 360);
    v16 = *(v0 + 248);
    v17 = *(v0 + 224);
    v15(*(v0 + 240), v17);
    v15(v16, v17);
  }

  v11 = v9;
LABEL_12:
  (*(**(v0 + 208) + 512))(v11 & 1, *(v0 + 216));

  v18 = *(v0 + 8);

  return v18();
}

void RunSiriKitExecutorProcessor.handle(sendStartExecutionTurn:overrideRequestContextData:)(char a1, void *a2)
{
  v3 = v2;
  v176 = a2;
  v175 = type metadata accessor for UUID();
  v174 = *(v175 - 1);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v164 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v165 = &v162 - v9;
  v167 = type metadata accessor for UserID();
  v169 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v11 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v168 = &v162 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v162 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v166 = &v162 - v18;
  v172 = type metadata accessor for RequestType();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v180 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v179 = &v162 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v178 = &v162 - v25;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.conversationBridge);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v181 = v16;
  if (v30)
  {
    v31 = v11;
    v32 = v27;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v185[0] = v34;
    *v33 = 136315138;
    if (*(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source))
    {
      v35 = 0xE600000000000000;
      if (*(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source) == 1)
      {
        v36 = 0x65746F6D6572;
      }

      else
      {
        v36 = 0x726576726573;
      }
    }

    else
    {
      v35 = 0xE500000000000000;
      v36 = 0x6C61636F6CLL;
    }

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v185);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1DC659000, v28, v29, "Handling RSKE from source: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);

    v27 = v32;
    v11 = v31;
    v16 = v181;
  }

  else
  {
  }

  v163 = v11;
  if (a1)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DC659000, v38, v39, "Sending StartExecutionTurn to Execution before RSKE", v40, 2u);
      MEMORY[0x1E12A2F50](v40, -1, -1);
    }

    v41 = v3[18];
    if (v41)
    {
      v177 = v27;
      v42 = v3[17];
      v43 = v41;
    }

    else
    {
      v44 = [v3[3] requestID];
      if (!v44)
      {
        v181 = Logger.logObject.getter();
        v104 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v181, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&dword_1DC659000, v181, v104, "The requestId is missing", v105, 2u);
          MEMORY[0x1E12A2F50](v105, -1, -1);
        }

        v106 = v181;

        return;
      }

      v177 = v27;
      v45 = v44;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v46;
    }

    v47 = *(*v3 + 536);
    swift_bridgeObjectRetain_n();
    v47(v42, v43);

    v48 = v178;
    outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, v178, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v49 = v179;
    outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, v179, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    started = type metadata accessor for StartExecutionTurn(0);
    v51 = objc_allocWithZone(started);
    v52 = &v51[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
    *v52 = v42;
    v52[1] = v43;
    v53 = &v51[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
    *v53 = 0;
    v53[1] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v48, &v51[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v49, &v51[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    v51[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = 0;
    v51[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = 0;
    v182.receiver = v51;
    v182.super_class = started;
    v54 = objc_msgSendSuper2(&v182, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v55 = v3[10];
    v56 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v55);
    (*(v56 + 8))(v54, *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate), &protocol witness table for RunSiriKitExecutorProcessorExecutionDelegate, v55, v56);
    v57 = v54;
    v27 = v177;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      *(v60 + 4) = v57;
      *v61 = v57;
      v62 = v57;
      _os_log_impl(&dword_1DC659000, v58, v59, "Successfully sent: %@", v60, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v61, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      MEMORY[0x1E12A2F50](v60, -1, -1);
      v57 = v58;
      v58 = v62;
    }

    v16 = v181;
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v185[0] = v66;
    *v65 = 136315138;
    v67 = [v3[2] debugDescription];
    v68 = v16;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = v69;
    v16 = v68;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, v185);

    *(v65 + 4) = v73;
    _os_log_impl(&dword_1DC659000, v63, v64, "Handling %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1E12A2F50](v66, -1, -1);
    MEMORY[0x1E12A2F50](v65, -1, -1);
  }

  v74 = v3[2];
  [v74 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  if (swift_dynamicCast())
  {
    v75 = v183;
    if ((*(*v3 + 504))(v183))
    {
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_1DC659000, v76, v77, "🫨 Gesture invocation detected, ignoring RSKE", v78, 2u);
        MEMORY[0x1E12A2F50](v78, -1, -1);
      }

      return;
    }

    v97 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage);
    v179 = v75;
    v177 = v27;
    v178 = v74;
    if (!v97)
    {
      goto LABEL_52;
    }

    (*(v171 + 104))(v170, *MEMORY[0x1E69D0538], v172);
    _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
    v175 = v97;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v185[0] == v183 && v185[1] == v184)
    {
      (*(v171 + 8))(v170, v172);

      v98 = v167;
      v99 = v169;
      v100 = v168;
    }

    else
    {
      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v171 + 8))(v170, v172);

      v98 = v167;
      v99 = v169;
      v100 = v168;
      if ((v101 & 1) == 0)
      {
LABEL_37:
        v103 = v164;
        outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId, v164, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        if ((*(v99 + 48))(v103, 1, v98) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v103, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        }

        else
        {
          (*(v99 + 32))(v100, v103, v98);
          v123 = v163;
          (*(v99 + 16))(v163, v100, v98);
          v124 = v98;
          v125 = v100;
          v126 = Logger.logObject.getter();
          v127 = v123;
          v128 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v126, v128))
          {
            v129 = v124;
            v130 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            v185[0] = v181;
            *v130 = 136315138;
            _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08E0]);
            v131 = dispatch thunk of CustomStringConvertible.description.getter();
            v133 = v132;
            v134 = *(v99 + 8);
            v134(v127, v129);
            v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, v185);

            *(v130 + 4) = v135;
            _os_log_impl(&dword_1DC659000, v126, v128, "User found within the session :%s", v130, 0xCu);
            v136 = v181;
            __swift_destroy_boxed_opaque_existential_1Tm(v181);
            MEMORY[0x1E12A2F50](v136, -1, -1);
            MEMORY[0x1E12A2F50](v130, -1, -1);

            v134(v168, v129);
          }

          else
          {

            v141 = *(v99 + 8);
            v141(v123, v124);
            v141(v125, v124);
          }
        }

LABEL_52:
        v139 = 0;
LABEL_55:
        (*(*v3 + 536))(v3[17], v3[18]);
        outlined init with copy of ReferenceResolutionClientProtocol((v3 + 7), v185);
        v144 = v186;
        v143 = v187;
        __swift_project_boxed_opaque_existential_1(v185, v186);
        v145 = outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, v180, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        v146 = v176;
        v147 = v139;
        if (v176)
        {
          v148 = v176;
        }

        else
        {
          v149 = (*(*v3 + 640))(v145);
          v146 = v176;
          v148 = v149;
        }

        v150 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession);
        v151 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate);
        v152 = *(v143 + 64);
        v153 = v146;
        v161 = v143;
        v154 = v180;
        v152(v179, v180, v148, v147, v147, v150, v151, &protocol witness table for RunSiriKitExecutorProcessorExecutionDelegate, v144, v161);

        outlined destroy of ReferenceResolutionClientProtocol?(v154, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v185);

        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          *v157 = 138412290;
          v159 = v178;
          *(v157 + 4) = v178;
          *v158 = v159;
          v160 = v159;
          _os_log_impl(&dword_1DC659000, v155, v156, "Successfully sent: %@", v157, 0xCu);
          outlined destroy of ReferenceResolutionClientProtocol?(v158, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v158, -1, -1);
          MEMORY[0x1E12A2F50](v157, -1, -1);
        }

        return;
      }
    }

    v102 = v165;
    UserSessionState.activeUserSharedUserId.getter();
    if ((*(v99 + 48))(v102, 1, v98) != 1)
    {
      v107 = v166;
      (*(v99 + 32))(v166, v102, v98);
      (*(v99 + 16))(v16, v107, v98);
      v108 = v98;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = v16;
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v185[0] = v113;
        *v112 = 136315138;
        _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08E0]);
        v114 = dispatch thunk of CustomStringConvertible.description.getter();
        v115 = v108;
        v117 = v116;
        v118 = *(v99 + 8);
        v119 = v111;
        v98 = v115;
        v118(v119, v115);
        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v117, v185);

        *(v112 + 4) = v120;
        _os_log_impl(&dword_1DC659000, v109, v110, "#user-session: using active user %s for local request", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        MEMORY[0x1E12A2F50](v113, -1, -1);
        v121 = v112;
        v122 = v118;
        MEMORY[0x1E12A2F50](v121, -1, -1);
      }

      else
      {

        v137 = v16;
        v122 = *(v99 + 8);
        v122(v137, v98);
      }

      LOBYTE(v185[0]) = 5;
      v138 = v175;
      v139 = UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v175, v185, 2);
      if (v139)
      {
        v140 = UserSpecificInfo.saUserSessionState.getter();
      }

      else
      {
        v140 = 0;
      }

      [v179 setUserSessionState_];

      v122(v166, v98);
      v142 = v139;
      goto LABEL_55;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    goto LABEL_37;
  }

  v79 = v3[4];
  if (v79)
  {
    v80 = v3[5];
    v81 = objc_allocWithZone(MEMORY[0x1E69C7778]);

    v82 = [v81 init];
    v83 = v173;
    UUID.init()();
    v84 = UUID.uuidString.getter();
    v86 = v85;
    (*(v174 + 8))(v83, v175);
    v87 = MEMORY[0x1E12A1410](v84, v86);

    [v82 setAceId_];

    v88 = v82;
    v89 = [v74 aceId];
    [v88 setRefId_];

    [v88 setErrorCode_];
    v90 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA87280);
    [v88 setReason_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = 0x6567617373654DLL;
    v92 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 0xD000000000000013;
    *(inited + 56) = 0x80000001DCA87280;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of ReferenceResolutionClientProtocol?(v92, &_sSS_yptMd, &_sSS_yptMR);
    v93 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v94 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v96 = [v93 initWithDomain:v94 code:-1 userInfo:isa];

    v79(v88, v96);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v79, v80);
  }
}

uint64_t RunSiriKitExecutorProcessor.isGestureInvocation(rske:)(void *a1)
{
  v1 = [a1 parse];
  if (v1 && (v2 = v1, v3 = [v1 directInvocation], v2, v3) && (v4 = objc_msgSend(v3, sel_invocationIdentifier), v3, v4))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == static SiriKitDirectInvocationPayloads.headGestureIdentifier.getter() && v7 == v8)
    {

      return 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v10 & 1;
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Unable to get the payload identifier, not a gesture invocation", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return 0;
  }
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.logStartOfExecutionForRSKE(requestId:)(Swift::String_optional requestId)
{
  v2 = v1;
  object = requestId.value._object;
  countAndFlagsBits = requestId.value._countAndFlagsBits;
  if (((*(*v1 + 400))() & 1) == 0)
  {
    if (object)
    {
      v5 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil);
      v6 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source);
      v7 = (*(*v1 + 424))();
      (*(*v5 + 136))(1, v6, 8, countAndFlagsBits, object, countAndFlagsBits, object, v7, v8, 0);
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.conversationBridge);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1DC659000, v10, v11, "RequestId is missing while handling RSKE request and logging to SELF", v12, 2u);
        MEMORY[0x1E12A2F50](v12, -1, -1);
      }
    }

    v13 = *(*v2 + 408);

    v13(1);
  }
}

uint64_t RunSiriKitExecutorProcessor.loggedStartOfCall.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:)(v2, v3, v4, v5, v7, v6);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return ConversationService.bridge(didReceiveRequestContextData:from:)(a4, a5, a6);
}

char *RequestContextData.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RequestPositionInSession();
  v259 = *(v2 - 8);
  v260 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v258 = &v252 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for Restrictions();
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v254 = &v252 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceRestrictions();
  v264 = *(v5 - 8);
  v265 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v263 = &v252 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v262 = &v252 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v252 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v252 - v13;
  v15 = type metadata accessor for RequestContextData(0);
  v270.receiver = v0;
  v270.super_class = v15;
  v16 = objc_msgSendSuper2(&v270, sel_debugDescription);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v267[0] = v17;
  v267[1] = v19;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v20 = v267[0];
  v21 = v267[1];
  strcpy(v267, "inputOrigin: ");
  HIWORD(v267[1]) = -4864;
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin], *&v1[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v22 = v267[0];
  v23 = v267[1];
  v267[0] = v20;
  v267[1] = v21;

  MEMORY[0x1E12A1580](v22, v23);

  v25 = v267[0];
  v24 = v267[1];
  strcpy(v267, "audioSource: ");
  HIWORD(v267[1]) = -4864;
  v266 = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], v14, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v26 = type metadata accessor for AudioSource();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v14, 1, v26) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    v28 = 0xE500000000000000;
    v29 = 0x3E6C696E3CLL;
  }

  else
  {
    v29 = AudioSource.aceValue.getter();
    v28 = v30;
    (*(v27 + 8))(v14, v26);
  }

  MEMORY[0x1E12A1580](v29, v28);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v31 = v267[0];
  v32 = v267[1];
  v267[0] = v25;
  v267[1] = v24;

  MEMORY[0x1E12A1580](v31, v32);

  v34 = v267[0];
  v33 = v267[1];
  v261 = 0xD000000000000012;
  v267[0] = 0xD000000000000012;
  v267[1] = 0x80000001DCA86920;
  v35 = v266;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v266[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], v11, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v36 = type metadata accessor for AudioDestination();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v11, 1, v36) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v38 = 0xE500000000000000;
    v39 = 0x3E6C696E3CLL;
  }

  else
  {
    v40 = AudioDestination.aceValue.getter();
    v38 = v41;
    (*(v37 + 8))(v11, v36);
    v39 = v40;
  }

  MEMORY[0x1E12A1580](v39, v38);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v42 = v267[0];
  v43 = v267[1];
  v267[0] = v34;
  v267[1] = v33;

  MEMORY[0x1E12A1580](v42, v43);

  v44 = v267[0];
  v45 = v267[1];
  strcpy(v267, "responseMode: ");
  HIBYTE(v267[1]) = -18;
  v46 = ResponseMode.aceValue.getter();
  MEMORY[0x1E12A1580](v46);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v47 = v267[0];
  v48 = v267[1];
  v267[0] = v44;
  v267[1] = v45;

  MEMORY[0x1E12A1580](v47, v48);

  v49 = v267[0];
  v50 = v267[1];
  v51 = v35[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree];
  strcpy(v267, "isEyesFree: ");
  BYTE5(v267[1]) = 0;
  HIWORD(v267[1]) = -5120;
  if (v51)
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  v53 = 0xE500000000000000;
  if (v51)
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v52, v54);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v55 = v267[0];
  v56 = v267[1];
  v267[0] = v49;
  v267[1] = v50;

  MEMORY[0x1E12A1580](v55, v56);

  v57 = v267[0];
  v58 = v267[1];
  v257 = 0xD000000000000010;
  v267[0] = 0xD000000000000010;
  v267[1] = 0x80000001DCA86940;
  if (v266[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction])
  {
    v59 = 1702195828;
  }

  else
  {
    v59 = 0x65736C6166;
  }

  if (v266[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction])
  {
    v60 = 0xE400000000000000;
  }

  else
  {
    v60 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v59, v60);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v61 = v267[0];
  v62 = v267[1];
  v267[0] = v57;
  v267[1] = v58;

  MEMORY[0x1E12A1580](v61, v62);

  v63 = v267[0];
  v64 = v267[1];
  v267[0] = 0xD000000000000017;
  v267[1] = 0x80000001DCA86960;
  if (v266[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled])
  {
    v65 = 1702195828;
  }

  else
  {
    v65 = 0x65736C6166;
  }

  if (v266[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled])
  {
    v66 = 0xE400000000000000;
  }

  else
  {
    v66 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v65, v66);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v67 = v267[0];
  v68 = v267[1];
  v267[0] = v63;
  v267[1] = v64;

  MEMORY[0x1E12A1580](v67, v68);

  v69 = v267[0];
  v70 = v267[1];
  v267[0] = 0xD000000000000017;
  v267[1] = 0x80000001DCA86980;
  if (v266[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled])
  {
    v71 = 1702195828;
  }

  else
  {
    v71 = 0x65736C6166;
  }

  if (v266[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled])
  {
    v72 = 0xE400000000000000;
  }

  else
  {
    v72 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v71, v72);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v73 = v267[0];
  v74 = v267[1];
  v267[0] = v69;
  v267[1] = v70;

  MEMORY[0x1E12A1580](v73, v74);

  v76 = v267[0];
  v77 = v267[1];
  v253 = 0xD000000000000015;
  v267[0] = 0xD000000000000015;
  v267[1] = 0x80000001DCA869A0;
  v78 = MEMORY[0x1E69E7D40];
  v79 = (*((*MEMORY[0x1E69E7D40] & *v266) + 0x140))(v75);
  v80 = (v79 & 1) == 0;
  if (v79)
  {
    v81 = 1702195828;
  }

  else
  {
    v81 = 0x65736C6166;
  }

  if (v80)
  {
    v82 = 0xE500000000000000;
  }

  else
  {
    v82 = 0xE400000000000000;
  }

  MEMORY[0x1E12A1580](v81, v82);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v83 = v267[0];
  v84 = v267[1];
  v267[0] = v76;
  v267[1] = v77;

  MEMORY[0x1E12A1580](v83, v84);

  v86 = v267[0];
  v87 = v267[1];
  v267[0] = v261;
  v267[1] = 0x80000001DCA869C0;
  v88 = (*((*v78 & *v266) + 0x148))(v85);
  v89 = (v88 & 1) == 0;
  if (v88)
  {
    v90 = 1702195828;
  }

  else
  {
    v90 = 0x65736C6166;
  }

  if (v89)
  {
    v91 = 0xE500000000000000;
  }

  else
  {
    v91 = 0xE400000000000000;
  }

  v92 = v266;
  MEMORY[0x1E12A1580](v90, v91);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v93 = v267[0];
  v94 = v267[1];
  v267[0] = v86;
  v267[1] = v87;

  MEMORY[0x1E12A1580](v93, v94);

  v96 = v267[0];
  v95 = v267[1];
  strcpy(v267, "peerInfo: ");
  BYTE3(v267[1]) = 0;
  HIDWORD(v267[1]) = -369098752;
  v97 = *(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  if (v97)
  {
    v98 = [v97 debugDescription];
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v100;

    v101 = 0x3E6C696E3CLL;
  }

  else
  {
    v101 = 0x3E6C696E3CLL;
    v99 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v99, v53);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v102 = v267[0];
  v103 = v267[1];
  v267[0] = v96;
  v267[1] = v95;

  MEMORY[0x1E12A1580](v102, v103);

  v105 = v267[0];
  v104 = v267[1];
  strcpy(v267, "endpointInfo: ");
  HIBYTE(v267[1]) = -18;
  v106 = *(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
  if (v106)
  {
    v107 = [v106 debugDescription];
    v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v109;
  }

  else
  {
    v110 = 0xE500000000000000;
    v108 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v108, v110);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v111 = v267[0];
  v112 = v267[1];
  v267[0] = v105;
  v267[1] = v104;

  MEMORY[0x1E12A1580](v111, v112);

  v114 = v267[0];
  v113 = v267[1];
  strcpy(v267, "instanceInfo: ");
  HIBYTE(v267[1]) = -18;
  v115 = *(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo);
  if (v115)
  {
    v116 = [v115 debugDescription];
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;
  }

  else
  {
    v119 = 0xE500000000000000;
    v117 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v117, v119);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v120 = v267[0];
  v121 = v267[1];
  v267[0] = v114;
  v267[1] = v113;

  MEMORY[0x1E12A1580](v120, v121);

  v122 = v267[0];
  v123 = v267[1];
  strcpy(v267, "bargeInModes: ");
  HIBYTE(v267[1]) = -18;
  v124 = MEMORY[0x1E12A16D0](*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes), MEMORY[0x1E69E6158]);
  MEMORY[0x1E12A1580](v124);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v125 = v267[0];
  v126 = v267[1];
  v267[0] = v122;
  v267[1] = v123;

  MEMORY[0x1E12A1580](v125, v126);

  v128 = v267[0];
  v127 = v267[1];
  v267[0] = 0xD000000000000020;
  v267[1] = 0x80000001DCA869E0;
  v129 = v262;
  outlined init with copy of ReferenceResolutionClientProtocol?(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval, v262, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v130 = type metadata accessor for DateInterval();
  v131 = *(v130 - 8);
  if ((*(v131 + 48))(v129, 1, v130) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v129, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v132 = 0xE500000000000000;
    v133 = 0x3E6C696E3CLL;
  }

  else
  {
    v134 = DateInterval.debugDescription.getter();
    v132 = v135;
    (*(v131 + 8))(v129, v130);
    v133 = v134;
  }

  MEMORY[0x1E12A1580](v133, v132);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v136 = v267[0];
  v137 = v267[1];
  v267[0] = v128;
  v267[1] = v127;

  MEMORY[0x1E12A1580](v136, v137);

  v140 = v267[0];
  v139 = v267[1];
  v268 = 0xD000000000000014;
  v269 = 0x80000001DCA86A10;
  v141 = v263;
  (*((*v78 & *v92) + 0x150))(v138);
  v142 = DeviceRestrictions.aceSet.getter();
  (*(v264 + 8))(v141, v265);
  v143 = *(v142 + 16);
  if (v143)
  {
    v265 = v140;
    v144 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v143, 0);
    v145 = specialized Sequence._copySequenceContents(initializing:)(v267, v144 + 4, v143, v142);
    v146 = v267[0];

    outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v146);
    if (v145 != v143)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v140 = v265;
    v92 = v266;
    v101 = 0x3E6C696E3CLL;
  }

  else
  {
    v144 = MEMORY[0x1E69E7CC0];
  }

  v267[0] = v144;
  specialized MutableCollection<>.sort(by:)(v267);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v147 = BidirectionalCollection<>.joined(separator:)();
  v149 = v148;

  MEMORY[0x1E12A1580](v147, v149);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v150 = v268;
  v151 = v269;
  v267[0] = v140;
  v267[1] = v139;

  MEMORY[0x1E12A1580](v150, v151);

  v153 = v267[0];
  v152 = v267[1];
  strcpy(v267, "restrictions: ");
  HIBYTE(v267[1]) = -18;
  (*(v255 + 16))(v254, v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions, v256);
  v154 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v154);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v155 = v267[0];
  v156 = v267[1];
  v267[0] = v153;
  v267[1] = v152;

  MEMORY[0x1E12A1580](v155, v156);

  v158 = v267[0];
  v157 = v267[1];
  v267[0] = 0xD000000000000011;
  v267[1] = 0x80000001DCA86A30;
  v159 = *(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome);
  v266 = 0xD000000000000011;
  if (v159)
  {
    v160 = [v159 debugDescription];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v162 = v161;
  }

  else
  {
    v162 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v101, v162);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v163 = v267[0];
  v164 = v267[1];
  v267[0] = v158;
  v267[1] = v157;

  MEMORY[0x1E12A1580](v163, v164);

  v166 = v267[0];
  v165 = v267[1];
  v267[0] = 0xD00000000000001ALL;
  v267[1] = 0x80000001DCA86A50;
  MEMORY[0x1E12A1580](*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId), *(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8));
  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v167 = v267[0];
  v168 = v267[1];
  v267[0] = v166;
  v267[1] = v165;

  MEMORY[0x1E12A1580](v167, v168);

  v170 = v267[0];
  v169 = v267[1];
  v267[0] = 0xD000000000000017;
  v267[1] = 0x80000001DCA86A70;
  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup))
  {
    v171 = 1702195828;
  }

  else
  {
    v171 = 0x65736C6166;
  }

  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup))
  {
    v172 = 0xE400000000000000;
  }

  else
  {
    v172 = 0xE500000000000000;
  }

  v173 = v92;
  MEMORY[0x1E12A1580](v171, v172);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v174 = v267[0];
  v175 = v267[1];
  v267[0] = v170;
  v267[1] = v169;

  MEMORY[0x1E12A1580](v174, v175);

  v177 = v267[0];
  v176 = v267[1];
  v267[0] = 0xD00000000000001FLL;
  v267[1] = 0x80000001DCA86A90;
  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer))
  {
    v178 = 1702195828;
  }

  else
  {
    v178 = 0x65736C6166;
  }

  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer))
  {
    v179 = 0xE400000000000000;
  }

  else
  {
    v179 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v178, v179);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v180 = v267[0];
  v181 = v267[1];
  v267[0] = v177;
  v267[1] = v176;

  MEMORY[0x1E12A1580](v180, v181);

  v183 = v267[0];
  v182 = v267[1];
  v267[0] = v266;
  v267[1] = 0x80000001DCA86AB0;
  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest))
  {
    v184 = 1702195828;
  }

  else
  {
    v184 = 0x65736C6166;
  }

  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest))
  {
    v185 = 0xE400000000000000;
  }

  else
  {
    v185 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v184, v185);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v186 = v267[0];
  v187 = v267[1];
  v267[0] = v183;
  v267[1] = v182;

  MEMORY[0x1E12A1580](v186, v187);

  v189 = v267[0];
  v188 = v267[1];
  v265 = 0xD000000000000019;
  v267[0] = 0xD000000000000019;
  v267[1] = 0x80000001DCA86AD0;
  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall))
  {
    v190 = 1702195828;
  }

  else
  {
    v190 = 0x65736C6166;
  }

  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall))
  {
    v191 = 0xE400000000000000;
  }

  else
  {
    v191 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v190, v191);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v192 = v267[0];
  v193 = v267[1];
  v267[0] = v189;
  v267[1] = v188;

  MEMORY[0x1E12A1580](v192, v193);

  v195 = v267[0];
  v194 = v267[1];
  v267[0] = 0xD000000000000017;
  v267[1] = 0x80000001DCA86AF0;
  v268 = *(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
  v196 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v196);

  v197 = v267[0];
  v198 = v267[1];
  v267[0] = v195;
  v267[1] = v194;

  MEMORY[0x1E12A1580](v197, v198);

  v200 = v267[0];
  v199 = v267[1];
  v267[0] = 0xD00000000000001BLL;
  v267[1] = 0x80000001DCA86B10;
  v264 = 0xD00000000000001BLL;
  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled))
  {
    v201 = 1702195828;
  }

  else
  {
    v201 = 0x65736C6166;
  }

  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled))
  {
    v202 = 0xE400000000000000;
  }

  else
  {
    v202 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v201, v202);

  v203 = v267[0];
  v204 = v267[1];
  v267[0] = v200;
  v267[1] = v199;

  MEMORY[0x1E12A1580](v203, v204);

  v206 = v267[0];
  v205 = v267[1];
  v267[0] = v253;
  v267[1] = 0x80000001DCA86B30;
  LODWORD(v268) = *(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
  v207 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v207);

  v208 = v267[0];
  v209 = v267[1];
  v267[0] = v206;
  v267[1] = v205;

  MEMORY[0x1E12A1580](v208, v209);

  v211 = v267[0];
  v210 = v267[1];
  v267[0] = v265;
  v267[1] = 0x80000001DCA86B50;
  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled))
  {
    v212 = 1702195828;
  }

  else
  {
    v212 = 0x65736C6166;
  }

  if (*(v92 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled))
  {
    v213 = 0xE400000000000000;
  }

  else
  {
    v213 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v212, v213);

  v214 = v267[0];
  v215 = v267[1];
  v267[0] = v211;
  v267[1] = v210;

  MEMORY[0x1E12A1580](v214, v215);

  v217 = v267[0];
  v216 = v267[1];
  v267[0] = 0xD00000000000001BLL;
  v267[1] = 0x80000001DCA86B70;
  if (*(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported))
  {
    v218 = 1702195828;
  }

  else
  {
    v218 = 0x65736C6166;
  }

  if (*(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported))
  {
    v219 = 0xE400000000000000;
  }

  else
  {
    v219 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v218, v219);

  v220 = v267[0];
  v221 = v267[1];
  v267[0] = v217;
  v267[1] = v216;

  MEMORY[0x1E12A1580](v220, v221);

  v223 = v267[0];
  v222 = v267[1];
  strcpy(v267, "isInAmbient: ");
  HIWORD(v267[1]) = -4864;
  if (*(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient))
  {
    v224 = 1702195828;
  }

  else
  {
    v224 = 0x65736C6166;
  }

  if (*(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient))
  {
    v225 = 0xE400000000000000;
  }

  else
  {
    v225 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v224, v225);

  v226 = v267[0];
  v227 = v267[1];
  v267[0] = v223;
  v267[1] = v222;

  MEMORY[0x1E12A1580](v226, v227);

  v229 = v267[0];
  v228 = v267[1];
  v267[0] = 0xD000000000000013;
  v267[1] = 0x80000001DCA86B90;
  (*(v259 + 16))(v258, v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession, v260);
  v230 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v230);

  v231 = v267[0];
  v232 = v267[1];
  v267[0] = v229;
  v267[1] = v228;

  MEMORY[0x1E12A1580](v231, v232);

  v234 = v267[0];
  v233 = v267[1];
  v267[0] = v266;
  v267[1] = 0x80000001DCA86BB0;
  v268 = *(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
  v235 = v268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
  v236 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v236);

  v237 = v267[0];
  v238 = v267[1];
  v267[0] = v234;
  v267[1] = v233;

  MEMORY[0x1E12A1580](v237, v238);

  v240 = v267[0];
  v239 = v267[1];
  v267[0] = v264;
  v267[1] = 0x80000001DCA86BD0;
  if (*(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen))
  {
    v241 = 1702195828;
  }

  else
  {
    v241 = 0x65736C6166;
  }

  if (*(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen))
  {
    v242 = 0xE400000000000000;
  }

  else
  {
    v242 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v241, v242);

  v243 = v267[0];
  v244 = v267[1];
  v267[0] = v240;
  v267[1] = v239;

  MEMORY[0x1E12A1580](v243, v244);

  v246 = v267[0];
  v245 = v267[1];
  v267[0] = v257;
  v267[1] = 0x80000001DCA86BF0;
  if (*(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked))
  {
    v247 = 1702195828;
  }

  else
  {
    v247 = 0x65736C6166;
  }

  if (*(v173 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked))
  {
    v248 = 0xE400000000000000;
  }

  else
  {
    v248 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v247, v248);

  v249 = v267[0];
  v250 = v267[1];
  v267[0] = v246;
  v267[1] = v245;

  MEMORY[0x1E12A1580](v249, v250);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v267[0];
}

uint64_t RunSiriKitExecutorProcessor.loggedStartOfCall.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConversationRuntimeClient.sendRunSiriKitExecutor(_:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:withBridgeDelegate:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v45 = a8;
  v46 = a5;
  v47 = a7;
  v48 = a1;
  v44 = a6;
  v49 = a3;
  v50 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v43 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationRuntimeClient.swift", 46, 2, "sendRunSiriKitExecutor(_:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:withBridgeDelegate:)", 174, 2);
  v18 = *(v8 + 24);
  v17 = *(v8 + 32);
  v43 = *(v9 + 40);
  v19 = v43;
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v15, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v17;
  v23[4] = v19;
  v24 = v48;
  v23[5] = v48;
  outlined init with take of SessionConfiguration?(v15, v23 + v20);
  v26 = v49;
  v25 = v50;
  *(v23 + v21) = v49;
  *(v23 + v22) = v25;
  v27 = v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = v46;
  v29 = v47;
  *v27 = v46;
  v27[8] = v44 & 1;
  v30 = (v23 + ((v22 + 31) & 0xFFFFFFFFFFFFFFF8));
  v31 = v45;
  *v30 = v29;
  v30[1] = v31;
  v32 = v28;
  swift_unknownObjectRetain();

  v33 = v43;

  v34 = v24;
  v35 = v26;
  v36 = v25;
  v37 = StaticString.description.getter();
  v39 = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = v18;
  *(v40 + 24) = v17;
  *(v40 + 32) = v33;
  *(v40 + 40) = "bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)";
  *(v40 + 48) = 157;
  *(v40 + 56) = 2;
  *(v40 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  *(v40 + 72) = v23;
  v41 = *(*v17 + 208);

  v41(v37, v39, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v40);
}

uint64_t sub_1DC689214()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for SessionConfiguration();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t RequestContextData.deviceRestrictions.getter()
{
  return Restrictions.deviceRestrictions.getter();
}

{
  return MEMORY[0x1EEE3B1F0]();
}

uint64_t outlined init with take of SessionConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
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

uint64_t SiriKitEventContext.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t InvocationScopedSiriKitEventSender.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AceServiceInvokerImpl.__deallocating_deinit()
{
  AceServiceInvokerImpl.deinit();

  return swift_deallocClassInstance();
}