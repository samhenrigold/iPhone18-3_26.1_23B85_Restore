uint64_t RemoteConversationXPC.sendableWrapper.getter()
{
  type metadata accessor for SendableRemoteConversationXPCWrapper();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v2 = specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  **(v0 + 32) = *(v0 + 16);
  return (*(v0 + 8))();
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v2 = specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

id outlined copy of Result<RemoteConversation?, Error>(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void outlined consume of Result<RemoteConversation?, Error>(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = v6[14];
    v8 = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);
  }

  else
  {
    v9 = v6[14];

    v6[18] = a2;
    v6[19] = a1;
    v8 = specialized closure #1 in InterruptibleTaskManager.perform<A>(_:);
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v8 = *(v10 + 8);

  return v8();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyAE18RemoteConversation_pSgG_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t partial apply for closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:), v9, 0);
}

uint64_t closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)()
{
  v1 = (*(v0[2] + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_turnDataProvider))(v0[3], v0[4]);
  if (v1)
  {
    v2 = v1;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "Starting turn from pre-cached turn data", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];

    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;

    RemoteConversationService.startTurn(turnData:bridge:reply:)(v2, v9, partial apply for closure #1 in closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:), v10);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "No pre-cached turn data available, it will need to be re-sent.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    v15 = v0[6];

    v15(0, 0);
  }

  v16 = v0[1];

  return v16();
}

char *closure #2 in closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v5 = SharedFlowPluginService.CurrentTurnCache.getIfMatches(executionRequestId:)(a1, a2);

  return v5;
}

char *SharedFlowPluginService.CurrentTurnCache.getIfMatches(executionRequestId:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "Trying to recover turn data from cache, but not in a turn", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    return 0;
  }

  v4 = *&v3[OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId] == a1 && *&v3[OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId + 8] == a2;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v10 = one-time initialization token for executor;
    v11 = v3;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Trying to recover turn data from cache, but request ID does not match", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return 0;
  }

  v5 = v3;
  return v3;
}

uint64_t RemoteConversationService.startTurn(turnData:bridge:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "startTurn(turnData:bridge:reply:)", 33, 2);
  swift_getObjectType();
  v13 = ServiceBridge.errorHandlingProxy.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = one-time initialization token for shared;

  v16 = a1;

  if (v15 != -1)
  {
    swift_once();
  }

  v18 = static ConversationActor.shared;
  v19 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v17, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v5;
  v20[5] = v16;
  v20[6] = v13;
  v20[7] = a3;
  v20[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:), v20);
}

uint64_t sub_1DC746090()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 288) = a1;
  *(v5 + 296) = a2;
  *(v5 + 368) = a3;
  *(v5 + 304) = v3;

  if (v3)
  {
    v6 = *(v5 + 248);
    v7 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v8 = *(v5 + 248);

    v7 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v5 = *v4;
  *(v5 + 344) = a1;
  *(v5 + 352) = a2;
  *(v5 + 369) = a3;
  *(v5 + 360) = v3;

  if (v3)
  {
    v6 = *(v5 + 248);
    v7 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v8 = *(v5 + 248);

    v7 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t partial apply for closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v9 = type metadata accessor for UUID();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = type metadata accessor for RemoteConversationService.State(0);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  type metadata accessor for RemoteConversationTurnData(0);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;
  v8[32] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:), v10, 0);
}

void outlined consume of InterruptibleTaskResult<RemoteConversation?>(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v5 = v4[21];
    v6 = SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  }

  else
  {
    v7 = v4[21];

    v6 = SharedFlowPluginServiceClient.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with copy of MultiUserState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiUserState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  else
  {
    v6 = closure #1 in RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  outlined destroy of UUID?(v5);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  }

  else
  {
    v7 = RemoteFlowPluginBundleConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for RemoteConversationTurnData(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.startTurn(turnData:bridge:), v3, 0);
}

uint64_t RemoteConversationClient.startTurn(turnData:bridge:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "startTurn(turnData:bridge:)", 27, 2);
  if (*(v1 + 184) == 2)
  {
    *(v1 + 184) = *(*(v0 + 16) + *(*(v0 + 48) + 44));
  }

  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v6[20];
  v15 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v6 + 16, v6[19]);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(v7, v3, type metadata accessor for RemoteConversationTurnData);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  outlined init with take of RemoteConversationTurnData(v3, v10 + v9);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v11 = swift_allocObject();
  *(v0 + 80) = v11;
  *(v11 + 16) = &async function pointer to partial apply for closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  *(v11 + 24) = v10;
  v12 = *(v8 + 8);
  swift_unknownObjectRetain();
  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = RemoteConversationClient.startTurn(turnData:bridge:);

  return v16();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = RemoteConversationClient.startTurn(turnData:bridge:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = RemoteConversationClient.startTurn(turnData:bridge:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DC747834()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;

  v4 = v1[6];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v16 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[7];
  v9 = type metadata accessor for SessionConfiguration();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[9];
  if (!v7(v3 + v11, 1, v5))
  {
    (*(v6 + 8))(v3 + v11, v5);
  }

  v12 = (v3 + v1[13]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v12, v13);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v17, ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1DC747AA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *vtable thunk for OrderedForest.push(value:parentNode:) dispatching to InstrumentedStack.push(value:parentNode:)(uint64_t *a1, uint64_t a2)
{
  v4 = specialized OrderedForest.push(value:parentNode:)(*a1, a2);
  v5 = InstrumentedStack.getTrackedFlow(from:)(a2);
  v6 = v4[2];
  type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  swift_allocObject();

  v8 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v7, v5);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v6, isUniquelyReferenced_nonNull_native);
  *(v2 + 40) = v11;
  swift_endAccess();

  return v4;
}

uint64_t protocol witness for AceServiceInvoker.currentStartRequestId() in conformance AceServiceInvokerImpl()
{
  v1 = *v0;
  if (*(*v0 + 64))
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = *(v1 + 40);
  }

  return v2;
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(void *a1)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Input.parse.getter();
  dispatch thunk of FlowPluginExtended.findFlowForX(parse:)();
  return (*(v3 + 8))(v5, v2);
}

void *specialized OrderedForest.push(value:parentNode:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();

  v4 = specialized Node.init(value:parent:)(v3, a2);
  if (a2)
  {
    swift_beginAccess();

    MEMORY[0x1E12A1680](v5);
    if (*((*(a2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  specialized OrderedForest._push(_:)(v4);
  return v4;
}

void *specialized Node.init(value:parent:)(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  swift_weakInit();
  v2[6] = 0;
  v2[2] = a1;
  swift_beginAccess();
  swift_weakAssign();

  v2[4] = MEMORY[0x1E69E7CC0];
  swift_weakAssign();
  v2[6] = 0;

  return v2;
}

uint64_t specialized OrderedForest._push(_:)(uint64_t a1)
{
  if (v1[2] && v1[3])
  {
    swift_weakAssign();
    v3 = v1[3];
    if (v3)
    {
      *(v3 + 48) = a1;
    }

    v1[3] = a1;
  }

  else
  {
    v1[3] = a1;
    swift_retain_n();

    v1[2] = a1;
  }

  result = swift_beginAccess();
  v5 = v1[4];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v7;
  }

  return result;
}

uint64_t InstrumentedStack.getTrackedFlow(from:)(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 16);
    swift_beginAccess();
    if (*(*(v1 + 40) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v2), (v3 & 1) != 0))
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v32 = *(*(v7 + 56) + 16 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = MEMORY[0x1E12A23D0](*(v9 + 40), v22);
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 16 * v17) = v32;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v30 = 1 << *(v7 + 32);
      if (v30 >= 64)
      {
        bzero((v7 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v30;
      }

      *(v7 + 16) = 0;
    }

    v5 = v31;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UserID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

void *specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DCA66060;

  v10 = ObjectIdentifier.hashValue.getter();
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = MEMORY[0x1E69E6530];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  v12 = 0xE300000000000000;
  v13 = String.init(format:_:)();
  v15 = v14;

  v2[2] = v13;
  v2[3] = v15;
  if (a2)
  {
    v16 = a2[2];
    v12 = a2[3];
  }

  else
  {
    v16 = 7104878;
  }

  v2[4] = v16;
  v2[5] = v12;

  v17 = AnyFlow.description.getter();
  v19 = v18;

  v2[6] = v17;
  v2[7] = v19;
  if (a2)
  {
    v21 = a2[8];
    v20 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v20)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = 0;
  if (v20)
  {
    goto LABEL_10;
  }

LABEL_6:
  v2[8] = v22;
  if (one-time initialization token for executor != -1)
  {
LABEL_11:
    swift_once();
  }

  v23 = static Log.executor;
  OSSignpostID.init(log:)();
  (*(v6 + 32))(v3 + OBJC_IVAR____TtCC14SiriKitRuntime17InstrumentedStackP33_D2D0045FA6DDADCCE44653D1D402214316TrackedFlowAgent_signpostId, v8, v5);
  v39 = static os_signpost_type_t.begin.getter();
  v38 = OBJC_IVAR____TtCC14SiriKitRuntime17InstrumentedStackP33_D2D0045FA6DDADCCE44653D1D402214316TrackedFlowAgent_signpostId;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DCA69C10;
  v25 = v3[6];
  v26 = v3[7];
  v27 = MEMORY[0x1E69E6158];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  v28 = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v29 = v3[8];
  v30 = MEMORY[0x1E69E6530];
  *(v24 + 96) = MEMORY[0x1E69E6530];
  v31 = MEMORY[0x1E69E65A8];
  *(v24 + 64) = v28;
  *(v24 + 72) = v29;
  v32 = v3[2];
  v33 = v3[3];
  *(v24 + 136) = v27;
  *(v24 + 144) = v28;
  *(v24 + 104) = v31;
  *(v24 + 112) = v32;
  *(v24 + 120) = v33;
  v34 = v3[4];
  v35 = v3[5];
  *(v24 + 176) = v27;
  *(v24 + 184) = v28;
  *(v24 + 152) = v34;
  *(v24 + 160) = v35;

  v36 = MEMORY[0x1E12A15C0](v25, v26);
  *(v24 + 216) = v30;
  *(v24 + 224) = v31;
  *(v24 + 192) = v36;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v39, &dword_1DC659000, v23, "flow-stack-node", 15, 2, v3 + v38, "START name=%{public}s depth=%lu id=%{public}s parentId=%{public}s flowTypeId=%lx", 80, 2, v24);

  return v3;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B18_Nlu_External_TaskV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Task();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0958]);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ConversationCanHandleResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for Input();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v17 = MEMORY[0x1E12A1410](0x6E656449776F6C66, 0xEE00726569666974);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v17];

    (*(v13 + 8))(v15, v12);
  }

  v18 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported);
  v19 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A870);
  [(objc_class *)with.super.isa encodeBool:v18 forKey:v19];

  v20 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude);
  v21 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeBool:v20 forKey:v21];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput, v6, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v22 = v31;
  v23 = (*(v31 + 48))(v6, 1, v7);
  v24 = v30;
  if (v23 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    (*(v22 + 32))(v30, v6, v7);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0108]);
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v27 = v26;

    v28 = Data._bridgeToObjectiveC()().super.isa;
    v29 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A890);
    [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];
    outlined consume of Data._Representation(v25, v27);

    (*(v22 + 8))(v24, v7);
  }
}

uint64_t closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0110]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 192);

  (*(v4 + 32))(v1, v2, v3);
  outlined init with copy of ReferenceResolutionClientProtocol(v5 + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C6Plugin_pMd, &_s11SiriKitFlow0C6Plugin_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C14PluginExtended_pMd, &_s11SiriKitFlow0C14PluginExtended_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 288);
    v7 = *(v0 + 272);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v31 = *(v0 + 240);
    v32 = *(v0 + 264);
    v10 = *(v0 + 192);
    v28 = *(v0 + 176);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 16);
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    Input.identifier.getter();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = v0 + 16;
    *(v11 + 32) = v6;
    *(v11 + 40) = v28;
    dispatch thunk of ConversationSELFHelper.withExecutionFlowPluginFindFlowTime<A>(rcId:hypothesisId:_:)();

    (*(v9 + 8))(v8, v31);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    (*(v7 + 8))(v6, v32);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s11SiriKitFlow0C14PluginExtended_pSgMd, &_s11SiriKitFlow0C14PluginExtended_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Warning: Old flow plugin that doesn't support findFlowForX. Cannot safely ask it if it will handle input, so assuming it will.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v16 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 216);
    v33 = *(v0 + 288);
    v29 = v16;
    v30 = *(v0 + 176);

    (*(v18 + 56))(v20, 1, 1, v19);
    (*(v17 + 56))(v22, 1, 1, v16);
    outlined init with copy of ReferenceResolutionClientProtocol?(v20, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    CanHandleResult = type metadata accessor for ConversationCanHandleResult(0);
    v24 = objc_allocWithZone(CanHandleResult);
    v24[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
    v24[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
    outlined init with copy of ReferenceResolutionClientProtocol?(v22, &v24[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v21, &v24[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *(v0 + 136) = v24;
    *(v0 + 144) = CanHandleResult;
    v25 = objc_msgSendSuper2((v0 + 136), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v30(v25);

    (*(v17 + 8))(v33, v29);
  }

  v26 = *(v0 + 8);

  return v26();
}

void specialized TaskLoggingService.logSELFFlowTask(activityType:eventContext:eventTime:task:taskType:app:attribute:domainContext:parameterName:responseId:statusReasonDescription:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      specialized TaskLoggingService.updateFlowTaskState(aceServiceInvoker:taskName:interactionId:taskId:)((a2 + 32), a5, a6, *(a2 + 96), *(a2 + 104), *(a4 + 16), *(a4 + 24));
      goto LABEL_12;
    }

    if (a1 != 2)
    {
      goto LABEL_12;
    }
  }

  else if ((a1 - 4) >= 2 && a1 != 128)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.instrumentation);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v109[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v109);
    *(v23 + 12) = 2080;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a4 + 16), *(a4 + 24), v109);
    *(v23 + 22) = 1024;
    *(v23 + 24) = a1;
    _os_log_impl(&dword_1DC659000, v21, v22, "#TaskLoggingService - sending update context to reset FlowTaskState for TaskType: %s, TaskId: %s, ActivityType: %d", v23, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  specialized TaskLoggingService.resetFlowTaskState(aceServiceInvoker:)((a2 + 32));
LABEL_12:
  v104 = a5;
  v106 = a6;
  v25 = SiriKitEventContext.resultCandidateId.getter();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 13101;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE200000000000000;
  }

  v30 = *(a2 + 80);
  v29 = *(a2 + 88);
  v31 = *(a4 + 16);
  v108 = *(a4 + 24);
  v32 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (!v32)
  {
    goto LABEL_33;
  }

  v105 = v32;
  v33 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
  if (!v33)
  {

LABEL_33:
    v58 = v31;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.instrumentation);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v30;
      v64 = swift_slowAlloc();
      v109[0] = v64;
      *v62 = 136315650;
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v109);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2080;
      *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v108, v109);
      *(v62 + 22) = 2080;
      *(v62 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v29, v109);
      _os_log_impl(&dword_1DC659000, v60, v61, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v64, -1, -1);
      MEMORY[0x1E12A2F50](v62, -1, -1);

      return;
    }

    goto LABEL_38;
  }

  v34 = v33;
  v99 = v31;
  v35 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v27, v28, v30, v29, v31, v108);
  if (v35)
  {
    v97 = v35;
    v36 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
    v100 = v29;
    v98 = v30;
    if (v36)
    {
      v37 = v36;
      (*(v107 + 144))(v109, a7);
      v39 = v110;
      v38 = v111;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      v40 = (*(v38 + 8))(v39, v38);
      if (v41)
      {
        v42 = v41;
      }

      else
      {
        v40 = 0x6C7070615F746F6ELL;
        v42 = 0xEE00656C62616369;
      }

      v43 = MEMORY[0x1E12A1410](v40, v42);

      [v37 setBundleId_];

      v44 = v110;
      v45 = v111;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      v46 = *(v45 + 16);
      v47 = v45;
      v30 = v98;
      v48 = v46(v44, v47);
      if (v49)
      {
        v50 = v49;
      }

      else
      {
        v48 = 0x6C7070615F746F6ELL;
        v50 = 0xEE00656C62616369;
      }

      v51 = MEMORY[0x1E12A1410](v48, v50);

      [v37 setAppVersion_];

      v29 = v100;
      [v34 setAppContext_];

      __swift_destroy_boxed_opaque_existential_1Tm(v109);
    }

    v103 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(a13, a14);
    v53 = v52;
    v54 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
    if (v54)
    {
      v55 = v54;
      v56 = MEMORY[0x1E12A1410](v104, v106);
      [v55 setCurrentTaskName_];

      if (a9)
      {
        v57 = MEMORY[0x1E12A1410](a8);
      }

      else
      {
        v57 = 0;
      }

      [v55 setCurrentTaskType_];

      [v55 setFlowStateType_];
      v73 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
      v29 = v100;
      if (v73)
      {
        v74 = v73;
        if ((a15 & 0x100000000) != 0)
        {
          v75 = 0;
        }

        else
        {
          v75 = a15;
        }

        [v73 setStatusReason_];
        [v55 setFlowStateReason_];
      }

      if (a12)
      {
        v76 = MEMORY[0x1E12A1410](a11);
      }

      else
      {
        v76 = 0;
      }

      [v55 setResolvedSlotName_];

      if (v53)
      {
        v77 = MEMORY[0x1E12A1410](v103, v53);
      }

      else
      {
        v77 = 0;
      }

      [v55 setFlowStateReasonDescription_];

      [v34 setFlowState_];
      v30 = v98;
      v72 = a10;
      if (a10)
      {
        goto LABEL_62;
      }
    }

    else
    {

      v72 = a10;
      if (a10)
      {
LABEL_62:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_1DCA70640;
        *(v78 + 32) = v72;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, 0x1E69CEB10);
        v79 = v72;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v34 setDomainContexts_];

        v29 = v100;
      }
    }

    Date.timeIntervalSince1970.getter();
    if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v81 > -9.22337204e18)
    {
      if (v81 < 9.22337204e18)
      {
        [v34 setTimestampMs_];
        [v34 setSequenceNum_];

        [v105 setFlowStep_];
        [v105 setEventMetadata_];

        if (one-time initialization token for instrumentation == -1)
        {
LABEL_67:
          v82 = type metadata accessor for Logger();
          __swift_project_value_buffer(v82, static Logger.instrumentation);

          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v109[0] = v86;
            *v85 = 136315906;
            if (a1 > 0xD0)
            {
              v87 = @"FLOWSTATETYPE_UNKNOWN";
              v88 = @"FLOWSTATETYPE_UNKNOWN";
            }

            else
            {
              v87 = off_1E86455C8[a1];
              v88 = off_1E8645C50[a1];
            }

            v91 = v87;
            v92 = v88;
            v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v95 = v94;

            v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, v109);

            *(v85 + 4) = v96;
            *(v85 + 12) = 2080;
            v90 = v99;
            v89 = v108;
            *(v85 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v108, v109);
            *(v85 + 22) = 2080;
            *(v85 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v109);
            *(v85 + 32) = 2080;
            *(v85 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 96), *(a2 + 104), v109);
            _os_log_impl(&dword_1DC659000, v83, v84, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v85, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v86, -1, -1);
            MEMORY[0x1E12A2F50](v85, -1, -1);

            v29 = v100;
            v30 = v98;
          }

          else
          {

            v89 = v108;
            v90 = v99;
          }

          (*(v107 + 96))(v105);
          TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v30, v29, v90, v89);

          return;
        }

LABEL_77:
        swift_once();
        goto LABEL_67;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.instrumentation);

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v109[0] = v70;
    *v69 = 136315650;
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v109);

    *(v69 + 4) = v71;
    *(v69 + 12) = 2080;
    *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v108, v109);
    *(v69 + 22) = 2080;
    *(v69 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v109);
    _os_log_impl(&dword_1DC659000, v67, v68, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v69, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v70, -1, -1);
    MEMORY[0x1E12A2F50](v69, -1, -1);

    return;
  }

LABEL_38:
}

Swift::Void __swiftcall RemoteConversationSpeechData.encode(with:)(NSCoder with)
{
  v2 = v1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v70 = v65 - v6;
  v7 = type metadata accessor for FlowRedirectContext();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  MEMORY[0x1EEE9AC00](v66);
  v65[2] = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v65 - v11;
  v13 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  v69 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId), *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8), v14);
  v18 = MEMORY[0x1E12A1410](1682531186, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice);
  v20 = MEMORY[0x1E12A1410](0x7665446E4F727361, 0xEB00000000656369);
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
  v22 = MEMORY[0x1E12A1410](0xD000000000000021, 0x80000001DCA81A40);
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  v23 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v24 = MEMORY[0x1E12A1410](0xD00000000000002ELL, 0x80000001DCA81A70);
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession);
  v26 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA81AC0);
  [(objc_class *)with.super.isa encodeBool:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage);
  v28 = MEMORY[0x1E12A1410](0x6150686365657073, 0xED00006567616B63);
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance + 8))
  {
    v29 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance));
  }

  else
  {
    v29 = 0;
  }

  v30 = MEMORY[0x1E12A1410](0x636E617265747475, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v29 forKey:v30];
  swift_unknownObjectRelease();

  v31 = v72;
  v32 = v69;
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant + 8))
  {
    v33 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant));
  }

  else
  {
    v33 = 0;
  }

  v34 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA86090);
  [(objc_class *)with.super.isa encodeObject:v33 forKey:v34];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant + 8))
  {
    v35 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant));
  }

  else
  {
    v35 = 0;
  }

  v36 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA860B0);
  [(objc_class *)with.super.isa encodeObject:v35 forKey:v36];
  swift_unknownObjectRelease();

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v37 = JSONEncoder.init()();
  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason, v12, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v38 = (*(v32 + 48))(v12, 1, v13);
  v74 = v37;
  if (v38 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  }

  else
  {
    (*(v32 + 32))(v16, v12, v13);
    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type NLRoutingDecisionMessage.GenAIFallbackSuppressReason and conformance NLRoutingDecisionMessage.GenAIFallbackSuppressReason, MEMORY[0x1E69D0390], MEMORY[0x1E69D0398]);
    v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v41 = v40;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v39, v41);
    v43 = isa;
    v44 = MEMORY[0x1E12A1410](0xD00000000000001BLL, 0x80000001DCA86110);
    [(objc_class *)with.super.isa encodeObject:v43 forKey:v44];

    (*(v32 + 8))(v16, v13);
  }

  v45 = v73;
  v46 = v70;
  v47 = v71;
  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext, v70, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  if ((*(v31 + 48))(v46, 1, v45) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  }

  else
  {
    (*(v31 + 32))(v47, v46, v45);
    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type FlowRedirectContext and conformance FlowRedirectContext, MEMORY[0x1E69CFB38], MEMORY[0x1E69CFB40]);
    v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v49 = v47;
    v51 = v50;
    v52 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v48, v51);
    v53 = v52;
    v54 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA81AE0);
    [(objc_class *)with.super.isa encodeObject:v53 forKey:v54];

    (*(v31 + 8))(v49, v45);
  }

  type metadata accessor for ExecutionLocation();
  lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation, MEMORY[0x1E69D35D8], MEMORY[0x1E69D35E0]);
  v55 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v57 = v56;
  v58 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v55, v57);
  v59 = MEMORY[0x1E12A1410](0x7461636F4C727361, 0xEB000000006E6F69);
  [(objc_class *)with.super.isa encodeObject:v58 forKey:v59];

  v60 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v62 = v61;
  v63 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v60, v62);
  v64 = MEMORY[0x1E12A1410](0x697461636F4C6C6ELL, 0xEA00000000006E6FLL);
  [(objc_class *)with.super.isa encodeObject:v63 forKey:v64];
}

Swift::Void __swiftcall FlowAgent.complete()()
{
  v1 = type metadata accessor for FlowTraceEvent();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SiriEnvironment();
  v5 = *(v0 + 112);
  v7[0] = v5;
  type metadata accessor for AnyFlow();
  lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF978]);
  swift_retain_n();
  static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)();

  if (*(v0 + 120))
  {
    outlined init with copy of Any(v8, v7);

    dispatch thunk of AnyChildCompletion.completion(exitValue:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_sypSgMd, &_sypSgMR);
  }

  *v4 = v5;
  outlined init with copy of Any(v8, (v4 + 1));
  (*(v2 + 104))(v4, *MEMORY[0x1E69CFB18], v1);
  static FlowTrace.trace(event:)();
  (*(v2 + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t Conversation.removeNode(node:)(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](Conversation.removeNode(node:), v1, 0);
}

uint64_t Conversation.removeNode(node:)()
{
  v39 = v0;
  v1 = *(v0[15] + 112);
  v2 = *(*v1 + 216);
  v3 = v2();
  if (v3)
  {
    v4 = *(v3 + 16);

    v5 = *(v4 + 152);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v0[16] = (*(*v1 + 240))(v0[14]);
  flushProcessWideSiriEnvironmentCache()();
  v6 = v2();
  if (v6)
  {
    v7 = *(v6 + 16);
    v0[17] = v7;

    v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B18_Nlu_External_TaskV_Tt1g5(*(v7 + 152), v5);

    if ((v8 & 1) == 0)
    {
      v9 = v0[15] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[18] = Strong;
      if (Strong)
      {
        v11 = v0[15];
        v12 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        v14 = *(v7 + 152);
        v0[19] = v14;
        v15 = (v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
        swift_beginAccess();
        v17 = *v15;
        v16 = v15[1];
        v0[20] = v16;
        v18 = *(v12 + 24);

        v37 = (v18 + *v18);
        v19 = swift_task_alloc();
        v0[21] = v19;
        *v19 = v0;
        v19[1] = Conversation.removeNode(node:);
        v20 = v14;
        v21 = v17;
        v22 = v16;
LABEL_14:

        return v37(v20, v21, v22, ObjectType, v12);
      }
    }
  }

  else
  {
    v26 = *(v5 + 16);

    if (v26)
    {
      v27 = v0[15] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
      swift_beginAccess();
      v28 = swift_unknownObjectWeakLoadStrong();
      v0[22] = v28;
      if (v28)
      {
        v29 = v0[15];
        v12 = *(v27 + 8);
        ObjectType = swift_getObjectType();
        v30 = (v29 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
        swift_beginAccess();
        v32 = *v30;
        v31 = v30[1];
        v0[23] = v31;
        v33 = *(v12 + 24);

        v37 = (v33 + *v33);
        v34 = swift_task_alloc();
        v0[24] = v34;
        *v34 = v0;
        v34[1] = Conversation.removeNode(node:);
        v20 = MEMORY[0x1E69E7CC0];
        v21 = v32;
        v22 = v31;
        goto LABEL_14;
      }
    }

    v35 = *(v0[15] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);
    OS_dispatch_semaphore.wait()();
    closure #1 in JetsamHelper.releaseJetsamTransaction()(v35, &v38);
    v36 = v0[15];
    OS_dispatch_semaphore.signal()();
    *(v36 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
  }

  v23 = v0[1];
  v24 = v0[16];

  return v23(v24);
}

{
  v1 = *(*v0 + 120);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.removeNode(node:), v1, 0);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

{
  v1 = *(*v0 + 120);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.removeNode(node:), v1, 0);
}

{
  v7 = v0;
  v1 = *(v0[15] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.releaseJetsamTransaction()(v1, &v6);
  v2 = v0[15];
  OS_dispatch_semaphore.signal()();
  *(v2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;

  v3 = v0[1];
  v4 = v0[16];

  return v3(v4);
}

unint64_t specialized OrderedForest._recursiveRemove(_:)(uint64_t a1)
{
  result = (*(*a1 + 152))();
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    specialized OrderedForest._remove(_:)(a1);
    return a1;
  }

  result = __CocoaSet.count.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E12A1FE0](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      specialized OrderedForest._recursiveRemove(_:)(v6);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t InstrumentedStack.remove(node:)(void *a1)
{
  specialized OrderedForest._recursiveRemove(_:)(a1);
  specialized OrderedForest._detachFromParent(_:)(a1);
  InstrumentedStack.removeTrackedFlow(for:)(a1);
}

uint64_t specialized OrderedForest._remove(_:)(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (v4 == v3)
    {
      v1[2] = 0;

      v1[3] = 0;
    }

    else
    {
      v1[2] = *(a1 + 48);
    }

    goto LABEL_20;
  }

  if (v3)
  {
    v6 = v3 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 48) = 0;
    }

    else
    {
    }

    v9 = swift_weakLoadStrong();

    v1[3] = v9;
    goto LABEL_20;
  }

  v7 = swift_weakLoadStrong();
  if (v7)
  {
    *(v7 + 48) = *(a1 + 48);
  }

  if (*(a1 + 48))
  {
    swift_weakLoadStrong();
    swift_weakAssign();
LABEL_20:
  }

  swift_weakAssign();
  *(a1 + 48) = 0;

  result = swift_beginAccess();
  v11 = v1[4];
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v13;
  }

  return result;
}

unint64_t specialized OrderedForest._detachFromParent(_:)(uint64_t a1)
{
  result = (*(*a1 + 128))();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(*result + 152);
  v5 = (v4)();
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6)
  {
LABEL_4:
    v8 = (v4)(v7);
    v4 = v8;
    v15 = MEMORY[0x1E69E7CC0];
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_6;
    }

    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_6:
      v14 = v3;
      v3 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E12A1FE0](v3, v4);
          v11 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v12 = v15;
            v3 = v14;
            goto LABEL_25;
          }
        }

        else
        {
          if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            v13 = __CocoaSet.count.getter();

            if (!v13)
            {
              goto LABEL_20;
            }

            goto LABEL_4;
          }

          v10 = *(v4 + 8 * v3 + 32);

          v11 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        if (v10 == a1)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v3;
        if (v11 == v9)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_24:
    v12 = MEMORY[0x1E69E7CC0];
LABEL_25:

    swift_beginAccess();
    *(v3 + 32) = v12;

    swift_beginAccess();
    return swift_weakAssign();
  }

  else
  {
LABEL_20:
  }
}

uint64_t InstrumentedStack.removeTrackedFlow(for:)(void *a1)
{
  v2 = (*(*a1 + 152))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E12A1FE0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      InstrumentedStack.removeTrackedFlow(for:)(v6);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v8 = a1[2];
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(v8);
  swift_endAccess();
}

uint64_t closure #2 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return RemoteConversationService.sendActiveTasks(_:rcId:)(a5, a6, a7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1)
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

  return closure #2 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t RemoteConversationService.sendActiveTasks(_:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  updated = type metadata accessor for ContextUpdateScope();
  v4[22] = updated;
  v4[23] = *(updated - 8);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v4[27] = swift_task_alloc();
  type metadata accessor for RemoteConversationService.State(0);
  v4[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;
  v4[29] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.sendActiveTasks(_:rcId:), v6, 0);
}

uint64_t FlowPluginInfo.init(coder:)(void *a1)
{
  v2 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA83CC0);
  v3 = [a1 containsValueForKey_];

  if (v3)
  {
    v4 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA83CC0);
    v5 = [a1 decodeBoolForKey_];

    v6 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83CE0);
    v7 = [a1 containsValueForKey_];

    if (v7)
    {
      v8 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83CE0);
      v9 = [a1 decodeBoolForKey_];
    }

    else
    {
      v9 = 1;
    }

    v15 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83D00);
    v16 = [a1 containsValueForKey_];

    if (v16)
    {
      v17 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83D00);
      v18 = [a1 decodeIntegerForKey_];
    }

    else
    {
      v18 = 0;
    }

    ObjectType = swift_getObjectType();
    v20 = (*(ObjectType + 112))(v5, v9, v18, 0, 2);

    swift_deallocPartialClassInstance();
    return v20;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Could not deserialize suppportsNLv4Parses in FlowPluginInfo", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t RemoteConversationService.sendActiveTasks(_:rcId:)(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[30];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Sent active task list to SiriRequestDispatcher", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

  v7 = v1[1];

  return v7();
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(char a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(a1, a2, v2 + v6, v10, v2 + v9, v12, v13);
}

uint64_t protocol witness for ConversationHandler.findConversation(for:rcId:) in conformance RemoteFlowPluginBundleConversationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:)(a1, a2, a3, a4);
}

uint64_t RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[10] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v5[11] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:), v6, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:)(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[8];
  Input.identifier.getter();
  v4 = type metadata accessor for UUID();
  v1[12] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v1[13] = v6;
  v1[14] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v2, 0, 1, v4);
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  v7[1] = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  v8 = v1[10];
  v9 = v1[7];

  return RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(v9, v3, v8);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  outlined destroy of UUID?(v5);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  }

  else
  {
    v7 = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[11];
  if (v1)
  {
    v6 = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  }

  else
  {
    v4[20] = a1;
    v6 = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:)()
{
  if (v0[16])
  {
    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = RemoteFlowPluginBundleConversationHandler.findConversation(for:rcId:);
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[6];

    return RemoteConversationClient.canHandle(input:rcId:)(v4, v2, v3);
  }

  else
  {
    v6 = v0[13];
    v7 = v0[12];
    v8 = v0[5];

    v9 = type metadata accessor for ConversationSearchResult(0);
    v10 = *(v9 + 24);
    v11 = type metadata accessor for Input();
    (*(*(v11 - 8) + 56))(v8 + v10, 1, 1, v11);
    v6(v8 + *(v9 + 28), 1, 1, v7);
    *v8 = 0;
    *(v8 + 8) = 1;

    v12 = v0[1];

    return v12();
  }
}

{
  v1 = v0[20];
  v2 = v0[16];

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v2);

  v3 = v0[1];

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Input();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.canHandle(input:rcId:), v3, 0);
}

uint64_t RemoteConversationClient.canHandle(input:rcId:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v19 = v0[4];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "canHandle(input:rcId:)", 22, 2);
  v9 = v5[20];
  v18 = v5[19];
  __swift_project_boxed_opaque_existential_1(v5 + 16, v18);
  (*(v4 + 16))(v1, v7, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v0[11] = v11;
  (*(v4 + 32))(v11 + v10, v1, v3);
  v12 = (v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v19;
  v12[1] = v6;
  v13 = *(v9 + 8);

  v17 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[12] = v14;
  CanHandleResult = type metadata accessor for ConversationCanHandleResult(0);
  *v14 = v0;
  v14[1] = RemoteConversationClient.canHandle(input:rcId:);

  return (v17)(v0 + 2, &async function pointer to partial apply for closure #1 in RemoteConversationClient.canHandle(input:rcId:), v11, CanHandleResult, v18, v9);
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = RemoteConversationClient.canHandle(input:rcId:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = RemoteConversationClient.canHandle(input:rcId:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DC74E688()
{
  v1 = type metadata accessor for Input();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for Input() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.canHandle(input:rcId:)(a1, a2, a3, v3 + v9, v11, v12);
}

uint64_t closure #1 in RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for Input();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v6[11] = *(v8 + 64);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.canHandle(input:rcId:), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.canHandle(input:rcId:)()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v15 = *(v0 + 32);
  (*(v4 + 16))(v1, *(v0 + 48), v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 104) = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v15;
  v10 = (v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v6;
  v10[1] = v5;
  swift_unknownObjectRetain();

  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:);
  *(v11 + 24) = v9;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  CanHandleResult = type metadata accessor for ConversationCanHandleResult(0);
  *v12 = v0;
  v12[1] = closure #1 in RemoteConversationClient.canHandle(input:rcId:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v11, CanHandleResult);
}

{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.canHandle(input:rcId:), 0, 0);
  }

  else
  {
    v3 = v2[3];

    *v3 = v2[2];

    v4 = v2[1];

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DC74EAF8()
{
  v1 = type metadata accessor for Input();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Input() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:)(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1DC74ED84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t partial apply for closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = v14;
  v8[26] = v15;
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v10 = type metadata accessor for Input();
  v8[33] = v10;
  v8[34] = *(v10 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:), v11, 0);
}

uint64_t lazy protocol witness table accessor for type RemoteConversationClient and conformance RemoteConversationClient(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void TaskLoggingService.logDomainPerfContext(eventContext:eventTime:task:taskType:domainPerfContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, id a6)
{
  v12 = [a6 flowDomainExecutionContext];
  if (!v12)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v26))
    {
      goto LABEL_20;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315650;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v36);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), &v36);
    *(v27 + 22) = 2080;
    *(v27 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[12], a1[13], &v36);
    _os_log_impl(&dword_1DC659000, oslog, v26, "Ignoring domainPerfContext is not set for taskType: %s, taskId: %s, interactionId:%s", v27, 0x20u);
    goto LABEL_19;
  }

  v34 = a2;

  v13 = SiriKitEventContext.resultCandidateId.getter();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 13101;
    v15 = 0xE200000000000000;
  }

  v32 = a1[11];
  v33 = a1[10];
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  oslog = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v13, v15, v33, v32, v16, v17);

  if (!oslog)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v30))
    {
      goto LABEL_20;
    }

    v31 = v16;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v36);
    *(v27 + 12) = 2080;
    *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v17, &v36);
    _os_log_impl(&dword_1DC659000, oslog, v30, "#TaskLoggingService SELF Log - unable to construct metaData, not logging DomainPerfContext data for taskType: %s with taskId: %s", v27, 0x16u);
LABEL_19:
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v28, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);

    return;
  }

  [a6 setEventMetadata_];
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.instrumentation);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = a4;
    v24 = v22;
    v36 = v22;
    *v21 = 136315650;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, a5, &v36);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);
    *(v21 + 22) = 2080;
    *(v21 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[12], a1[13], &v36);
    _os_log_impl(&dword_1DC659000, v19, v20, "#TaskLoggingService SELF Log - logging DomainPerfContext data for taskType: %s, with taskId: %s, interactionId:%s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  [objc_msgSend(objc_opt_self() sharedStream)];
  swift_unknownObjectRelease();
  TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v33, v32, v16, v17);
LABEL_20:
}

id protocol witness for AceServiceInvoker.peerInfo() in conformance AceServiceInvokerImpl@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(*(*v1 + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v3 = type metadata accessor for PeerInfoProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, 255, type metadata accessor for PeerInfoProvider, &protocol conformance descriptor for PeerInfoProvider);
  *a1 = v4;

  return v6;
}

Swift::String_optional __swiftcall PeerInfoProvider.getIdsIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_idsIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id EndpointInfoProvider.getIdentifier()(SEL *a1)
{
  if (!*(v1 + 16))
  {
    return 0;
  }

  result = [*(v1 + 16) *a1];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  return result;
}

uint64_t ConversationCanHandleResult.toConversationSearchResult(remoteConversationClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Input();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported) == 1)
  {
    v12 = OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier;
    v13 = type metadata accessor for ConversationSearchResult(0);
    (*(v9 + 56))(a2 + *(v13 + 24), 1, 1, v8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v2 + v12, a2 + *(v13 + 28), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *a2 = a1;
    *(a2 + 8) = 1;
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput, v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v15 = 1;
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v15 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude);
      v16 = type metadata accessor for ConversationSearchResult(0);
      (*(v9 + 56))(a2 + *(v16 + 24), 1, 1, v8);
    }

    else
    {
      v17 = *(v9 + 32);
      v17(v11, v7, v8);
      v16 = type metadata accessor for ConversationSearchResult(0);
      v18 = *(v16 + 24);
      v17((a2 + v18), v11, v8);
      (*(v9 + 56))(a2 + v18, 0, 1, v8);
    }

    v19 = *(v16 + 28);
    v20 = type metadata accessor for UUID();
    result = (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
    *a2 = 0;
    *(a2 + 8) = v15;
  }

  return result;
}

uint64_t RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for UserInputResult(0);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:), v3, 0);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(a1, a2, a3, v3 + v9, v10);
}

uint64_t closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:), 0, 0);
}

void partial apply for closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMd, &_sScCy14SiriKitRuntime15UserInputResultOs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.acceptInitialInput(inputIdentifier:speechData:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  aBlock[3] = &block_descriptor_149;
  v15 = _Block_copy(aBlock);

  [a2 acceptInitialInputWithInputIdentifier:isa speechData:a5 reply:v15];
  _Block_release(v15);
}

uint64_t partial apply for closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[73] = a8;
  v8[72] = a7;
  v8[71] = a6;
  v8[70] = a5;
  v8[69] = a4;
  v9 = type metadata accessor for DispatchTimeInterval();
  v8[74] = v9;
  v8[75] = *(v9 - 8);
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v10 = type metadata accessor for Parse();
  v8[79] = v10;
  v8[80] = *(v10 - 8);
  v8[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  v8[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  v8[83] = swift_task_alloc();
  v11 = type metadata accessor for Input();
  v8[84] = v11;
  v8[85] = *(v11 - 8);
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v8[88] = type metadata accessor for RemoteConversationService.State(0);
  v8[89] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static ConversationActor.shared;
  v8[90] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:), v12, 0);
}

uint64_t RemoteConversationService.FlowAndInputRegistry.getRegisteredActingFlow(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
    v11 = *(v10 - 8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v9 + *(v11 + 72) * v8, a2, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t RemoteConversationService.FlowAndInputRegistry.getRegisteredFlow(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    v11 = *(v10 - 8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v9 + *(v11 + 72) * v8, a2, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t FlowPluginInfo.__allocating_init(pluginBundle:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v47 - v5;
  v53 = type metadata accessor for HandcraftedPluginManifestEntry();
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v47 - v8;
  v63 = type metadata accessor for IntentTopic.IntentTopicType();
  v9 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v47 - v12;
  v66 = type metadata accessor for IntentTopic();
  v13 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  result = dispatch thunk of FlowPluginBundle.supportedTopics.getter();
  v17 = 0;
  v68 = *(result + 16);
  v61 = v13 + 16;
  v60 = *MEMORY[0x1E69CFD50];
  v58 = v9 + 8;
  v59 = (v9 + 104);
  v56 = v13 + 8;
  v57 = v13;
  v62 = result;
  v18 = v64;
  v19 = (v9 + 8);
  do
  {
    v20 = v17;
    if (v68 == v17)
    {
      break;
    }

    if (v17 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v21 = v57;
    v22 = v66;
    (*(v57 + 16))(v18, result + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17++, v66);
    v23 = v65;
    IntentTopic.type.getter();
    v24 = *v59;
    v69 = v20;
    v25 = v67;
    v26 = v63;
    v24(v67, v60, v63);
    lazy protocol witness table accessor for type IntentTopic.IntentTopicType and conformance IntentTopic.IntentTopicType(&lazy protocol witness table cache variable for type IntentTopic.IntentTopicType and conformance IntentTopic.IntentTopicType, MEMORY[0x1E69CFD58], MEMORY[0x1E69CFD60]);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *v19;
    v29 = v25;
    v20 = v69;
    (*v19)(v29, v26);
    v28(v23, v26);
    (*(v21 + 8))(v18, v22);
    result = v62;
  }

  while ((v27 & 1) == 0);
  v30 = v20;

  v31 = v54;
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  dispatch thunk of FlowPluginBundle.bundlePath.getter();
  v32 = v52;
  static HandcraftedPluginManifestEntry.fromPluginBundleIdOrPath(_:)();

  v33 = v55;
  v34 = *(v55 + 48);
  v35 = v53;
  if (v34(v32, 1, v53) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
    v36 = 1;
  }

  else
  {
    v37 = v48;
    (*(v33 + 32))(v48, v32, v35);
    v36 = HandcraftedPluginManifestEntry.isPersonalDomain.getter();
    (*(v33 + 8))(v37, v35);
  }

  v38 = v50;
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  dispatch thunk of FlowPluginBundle.bundlePath.getter();
  static HandcraftedPluginManifestEntry.fromPluginBundleIdOrPath(_:)();

  if (v34(v38, 1, v35) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
    v40 = 0;
  }

  else
  {
    v41 = v55;
    v42 = v49;
    (*(v55 + 32))(v49, v38, v35);
    v40 = HandcraftedPluginManifestEntry.sensitivityPolicy.getter();
    (*(v41 + 8))(v42, v35);
  }

  v43 = v51;
  v44 = v68 != v30;
  v45 = specialized static FlowPluginInfo.isEmergencyRequest(bundle:)(v31, v39);
  v46 = (*(v43 + 112))(v44, v36 & 1, v40, 0, v45 & 1);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v46;
}

uint64_t lazy protocol witness table accessor for type IntentTopic.IntentTopicType and conformance IntentTopic.IntentTopicType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static FlowPluginInfo.isEmergencyRequest(bundle:)(void *a1, double a2)
{
  v3 = type metadata accessor for HandcraftedPluginManifestEntry();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow30HandcraftedPluginManifestEntryOSg_ADtMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSg_ADtMR);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of FlowPluginBundle.bundlePath.getter();
  static HandcraftedPluginManifestEntry.fromPluginBundleIdOrPath(_:)();

  (*(v4 + 104))(v15, *MEMORY[0x1E69D00A8], v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  outlined init with copy of HandcraftedPluginManifestEntry?(v18, v9);
  outlined init with copy of HandcraftedPluginManifestEntry?(v15, &v9[v19]);
  v20 = *(v4 + 48);
  if (v20(v9, 1, v3) != 1)
  {
    outlined init with copy of HandcraftedPluginManifestEntry?(v9, v12);
    if (v20(&v9[v19], 1, v3) != 1)
    {
      v22 = &v9[v19];
      v23 = v27;
      (*(v4 + 32))(v27, v22, v3);
      lazy protocol witness table accessor for type IntentTopic.IntentTopicType and conformance IntentTopic.IntentTopicType(&lazy protocol witness table cache variable for type HandcraftedPluginManifestEntry and conformance HandcraftedPluginManifestEntry, MEMORY[0x1E69D00B0], MEMORY[0x1E69D00B8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v4 + 8);
      v24(v23, v3);
      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
      v24(v12, v3);
      outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
      return v21 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  if (v20(&v9[v19], 1, v3) != 1)
  {
LABEL_6:
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSg_ADtMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSg_ADtMR);
    v21 = 0;
    return v21 & 1;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  v21 = 1;
  return v21 & 1;
}

uint64_t outlined init with copy of HandcraftedPluginManifestEntry?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMd, &_s11SiriKitFlow30HandcraftedPluginManifestEntryOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id FlowPluginInfo.__allocating_init(supportsOnDeviceNL:isPersonalRequest:sensitivityPolicy:isEmergencyRequest:)(char a1, unsigned __int8 a2, uint64_t a3, char a4, char a5)
{
  v11 = a2;
  v12 = objc_allocWithZone(v5);
  v12[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL] = a1;
  v12[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest] = (v11 == 2) | a2 & 1;
  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  *&v12[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy] = v13;
  v12[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isEmergencyRequest] = a5 & 1;
  v15.receiver = v12;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t type metadata accessor for JetsamHelper(uint64_t a1)
{
  result = type metadata singleton initialization cache for JetsamHelper;
  if (!type metadata singleton initialization cache for JetsamHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:), 0, 0);
  }
}

uint64_t specialized AceServiceInvokerImpl.getResponse<A>(from:)()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  }

  else
  {
    v2 = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v25 = v0;
  v1 = v0[2];
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ace);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v23 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v3;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v4, v5, "AceServiceInvokerImpl received a response from command handling: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = v0[7];
  v13 = interpretResponse<A>(_:)(v1, v0[4]);
  if (v12)
  {

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_1DC659000, v17, v18, "Type-interpreted response: %@", v19, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    v22 = v0[1];

    return v22(v16);
  }
}

{
  return (*(v0 + 8))();
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  }

  else
  {
    v2 = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v25 = v0;
  v1 = v0[2];
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.ace);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v23 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v3;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v4, v5, "AceServiceInvokerImpl received a response from command handling: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = v0[6];
  v13 = specialized interpretResponse<A>(_:)(v1);
  if (v12)
  {

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_1DC659000, v17, v18, "Type-interpreted response: %@", v19, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    v22 = v0[1];

    return v22(v16);
  }
}

{
  return (*(v0 + 8))();
}

id interpretResponse<A>(_:)(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [objc_opt_self() aceObjectWithGenericCommand_];
    if (!v4)
    {
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {

      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }
  }

  else
  {
    v6 = a1;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = MEMORY[0x1E69CFF88];
    v6 = v8;
LABEL_10:
    v10 = type metadata accessor for SubmitCommandError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
    swift_allocError();
    *v11 = v6;
    (*(*(v10 - 8) + 104))(v11, *v9, v10);
    return swift_willThrow();
  }

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {
    v9 = MEMORY[0x1E69CFF90];
    goto LABEL_10;
  }

  return result;
}

uint64_t AceServiceInvokerImpl._submitExecute<A>(_:)(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[8] = v1;

  if (v1)
  {
    v4 = AceServiceInvokerImpl._submitExecute<A>(_:);
  }

  else
  {
    v4 = AceServiceInvokerImpl._submitExecute<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void AceServiceInvokerImpl._submitExecute<A>(_:)()
{
  v6 = v0;
  v1 = v0[8];
  v2 = *(*(v0[6] + 160) + 16);
  os_unfair_lock_lock(v2 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v5);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 6);
  }

  else
  {
    v3 = v0[3];
    os_unfair_lock_unlock(v2 + 6);

    v4 = v0[1];

    v4(v3);
  }
}

uint64_t specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 432) = a5;
  *(v8 + 144) = a4;
  *(v8 + 152) = a6;
  *(v8 + 128) = a1;
  *(v8 + 136) = a3;
  *(v8 + 176) = type metadata accessor for RemoteConversationService.State(0);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for UserInputResult(0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = type metadata accessor for SiriRequest(0);
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  *(v8 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  *(v8 + 288) = swift_task_alloc();
  v11 = type metadata accessor for RequestPositionInSession();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 40) = type metadata accessor for Conversation(0);
  *(v8 + 48) = &protocol witness table for Conversation;
  *(v8 + 16) = a2;
  v12 = one-time initialization token for shared;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static ConversationActor.shared;
  *(v8 + 320) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v13, 0);
}

{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 432) = a5;
  *(v8 + 144) = a4;
  *(v8 + 152) = a6;
  *(v8 + 128) = a1;
  *(v8 + 136) = a3;
  *(v8 + 176) = type metadata accessor for RemoteConversationService.State(0);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for UserInputResult(0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = type metadata accessor for SiriRequest(0);
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  *(v8 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  *(v8 + 288) = swift_task_alloc();
  v11 = type metadata accessor for RequestPositionInSession();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 40) = type metadata accessor for EncoreConversation(0);
  *(v8 + 48) = &protocol witness table for EncoreConversation;
  *(v8 + 16) = a2;
  v12 = one-time initialization token for shared;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static ConversationActor.shared;
  *(v8 + 320) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v13, 0);
}

{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 432) = a5;
  *(v8 + 144) = a4;
  *(v8 + 152) = a6;
  *(v8 + 128) = a1;
  *(v8 + 136) = a3;
  *(v8 + 176) = type metadata accessor for RemoteConversationService.State(0);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for UserInputResult(0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = type metadata accessor for SiriRequest(0);
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  *(v8 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  *(v8 + 288) = swift_task_alloc();
  v11 = type metadata accessor for RequestPositionInSession();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 40) = v16;
  *(v8 + 48) = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 16));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, a2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static ConversationActor.shared;
  *(v8 + 320) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v13, 0);
}

uint64_t AceServiceInvokerImpl.submit<A>(_:setRefId:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = AceServiceInvokerImpl.submit<A>(_:setRefId:);
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = AceServiceInvokerImpl.submit<A>(_:setRefId:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:)()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = AceServiceInvokerImpl._submitToCompanionPrep<A>(_:setRefId:responseType:)(*(v0 + 16), *(v0 + 72), *(v0 + 24), *(v0 + 24));
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:);
  v3 = *(v0 + 24);

  return AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)(v1, v3);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitToRemote<A>(_:_:setRefId:) in conformance AceServiceInvokerImpl(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v185 = a2;
  v190 = a1;
  v187 = type metadata accessor for ResponseMode();
  v192 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v176 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v174 - v9;
  v194 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v178 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v177 = &v174 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v174 - v16;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment16UserSessionStateVSgMd, _s19SiriFlowEnvironment16UserSessionStateVSgMR);
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v174 - v18;
  v19 = type metadata accessor for MultiUserContext();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v184 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v174 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v174 - v25;
  v27 = type metadata accessor for MultiUserState();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v181 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v174 - v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v174 - v34;
  v36 = *(a4 + 48);
  v199 = v4;
  v193 = a3;
  v198 = a4;
  v197 = a4 + 48;
  v196 = v36;
  (v36)(v205, a3, a4, v33);
  v37 = v206;
  v38 = v207;
  __swift_project_boxed_opaque_existential_1(v205, v206);
  (*(v38 + 64))(v37, v38);
  v188 = v20;
  v39 = *(v20 + 48);
  v189 = v19;
  v180 = v20 + 48;
  v179 = v39;
  v40 = v39(v31, 1, v19);
  outlined destroy of MultiUserState(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v205);
  v195 = v35;
  if (v40 == 1 && (v41 = *(v190 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser)) != 0)
  {
    v42 = one-time initialization token for executor;
    v43 = v41;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.executor);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1DC659000, v45, v46, "Getting multi-user state from UserSpecificInfo", v47, 2u);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    LODWORD(v200) = (*((*MEMORY[0x1E69E7D40] & *v43) + 0x128))();
    v48 = *(v43 + OBJC_IVAR___SKEUserSpecificInfo_meCard);
    if (v48)
    {
      v49 = v48;
      v50 = SAPerson.contact.getter();
      v51 = type metadata accessor for DefaultMeCardProxy();
      v52 = swift_allocObject();
      *(v52 + 16) = v50;

      v53 = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy, type metadata accessor for DefaultMeCardProxy, &protocol conformance descriptor for DefaultMeCardProxy);
    }

    else
    {
      v52 = 0;
      v51 = 0;
      v53 = 0;
      v205[1] = 0;
      v205[2] = 0;
    }

    v54 = v198;
    v205[0] = v52;
    v206 = v51;
    v207 = v53;

    UserSpecificInfo.sfeUserSessionState.getter(v175);
    MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:userSessionState:)();

    v58 = v188;
    v59 = v195;
    v60 = v26;
    v61 = v189;
    (*(v188 + 32))(v195, v60, v189);
    (*(v58 + 56))(v59, 0, 1, v61);
    v55 = v193;
  }

  else
  {
    v54 = v198;
    v55 = v193;
    v196(v205, v193, v198);
    v56 = v206;
    v57 = v207;
    __swift_project_boxed_opaque_existential_1(v205, v206);
    (*(v57 + 64))(v56, v57);
    __swift_destroy_boxed_opaque_existential_1Tm(v205);
  }

  v62 = *(*((*(v54 + 64))(v55, v54) + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v63 = type metadata accessor for PeerInfoProvider();
  v64 = swift_allocObject();
  *(v64 + 16) = v62;
  v206 = v63;
  v207 = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, type metadata accessor for PeerInfoProvider, &protocol conformance descriptor for PeerInfoProvider);
  v65 = v62;

  v205[0] = v64;
  v67 = static ConversationTurnState.computeCompanionName(_:)(v205, v66);
  v69 = v68;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  v71 = __swift_project_value_buffer(v70, static Logger.executor);

  v200 = v71;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();

  v74 = os_log_type_enabled(v72, v73);
  v191 = v10;
  v183 = v69;
  v182 = v67;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v202 = v76;
    *v75 = 136315138;
    if (v69)
    {
      v77 = v67;
    }

    else
    {
      v77 = 7104878;
    }

    if (v69)
    {
      v78 = v69;
    }

    else
    {
      v78 = 0xE300000000000000;
    }

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v202);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_1DC659000, v72, v73, "CurrentRequest companionName resolved to: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    MEMORY[0x1E12A2F50](v76, -1, -1);
    MEMORY[0x1E12A2F50](v75, -1, -1);
  }

  v80 = v199;
  v81 = v194;
  v82 = v17;
  v83 = *(v194 + 2);
  v83(v17, v199, v55);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 67109120;
    v196(&v202, v55, v198);
    v87 = v203;
    v88 = v204;
    __swift_project_boxed_opaque_existential_1(&v202, v203);
    v89 = *(v88 + 232);
    v90 = v87;
    v80 = v199;
    v91 = v88;
    v92 = v194;
    v93 = v89(v90, v91);
    __swift_destroy_boxed_opaque_existential_1Tm(&v202);
    v94 = v17;
    v95 = *(v92 + 1);
    v95(v94, v55);
    *(v86 + 4) = v93 & 1;
    _os_log_impl(&dword_1DC659000, v84, v85, "CurrentRequestForSiriEnvironment isSystemApertureEnabled: %{BOOL}d", v86, 8u);
    MEMORY[0x1E12A2F50](v86, -1, -1);
  }

  else
  {
    v95 = *(v81 + 1);
    v95(v82, v55);
  }

  v96 = v177;

  v83(v96, v80, v55);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v177 = v83;
    v100 = v95;
    v101 = v96;
    v102 = v99;
    *v99 = 67109120;
    v196(&v202, v55, v198);
    v103 = v203;
    v104 = v204;
    __swift_project_boxed_opaque_existential_1(&v202, v203);
    v105 = v103;
    v80 = v199;
    v106 = (*(v104 + 240))(v105, v104);
    __swift_destroy_boxed_opaque_existential_1Tm(&v202);
    v107 = v101;
    v95 = v100;
    v83 = v177;
    v95(v107, v55);
    *(v102 + 1) = v106 & 1;
    _os_log_impl(&dword_1DC659000, v97, v98, "CurrentRequestForSiriEnvironment isLiveActivitiesSupported: %{BOOL}d", v102, 8u);
    MEMORY[0x1E12A2F50](v102, -1, -1);
  }

  else
  {
    v95(v96, v55);
  }

  v108 = v178;

  v83(v108, v80, v55);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v194 = v95;
    v112 = v108;
    v113 = v111;
    *v111 = 67109120;
    v196(&v202, v55, v198);
    v114 = v203;
    v115 = v204;
    __swift_project_boxed_opaque_existential_1(&v202, v203);
    v116 = v114;
    v80 = v199;
    v117 = (*(v115 + 248))(v116, v115);
    __swift_destroy_boxed_opaque_existential_1Tm(&v202);
    v194(v112, v55);
    *(v113 + 1) = v117 & 1;
    _os_log_impl(&dword_1DC659000, v109, v110, "CurrentRequestForSiriEnvironment isInAmbient: %{BOOL}d", v113, 8u);
    MEMORY[0x1E12A2F50](v113, -1, -1);
  }

  else
  {
    v95(v108, v55);
  }

  v118 = v191;
  v119 = v195;
  v120 = v189;
  v121 = v188;
  v122 = v186;
  v123 = v181;

  outlined init with copy of MultiUserState(v119, v123);
  v124 = v179(v123, 1, v120);
  v125 = v187;
  v126 = v184;
  if (v124 == 1)
  {
    outlined destroy of MultiUserState(v123);
  }

  else
  {
    (*(v121 + 32))(v122, v123, v120);
    (*(v121 + 16))(v126, v122, v120);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = v126;
      v131 = swift_slowAlloc();
      v202 = v131;
      *v129 = 136315138;
      MultiUserContext.userSessionState.getter();
      v132 = String.init<A>(describing:)();
      v134 = v133;
      v135 = *(v121 + 8);
      v135(v130, v120);
      v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v202);
      v80 = v199;

      *(v129 + 4) = v136;
      _os_log_impl(&dword_1DC659000, v127, v128, "#user-session: CurrentRequestForSiriEnvironment SfeUserSessionState=%s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v131);
      v137 = v131;
      v125 = v187;
      MEMORY[0x1E12A2F50](v137, -1, -1);
      v138 = v129;
      v118 = v191;
      MEMORY[0x1E12A2F50](v138, -1, -1);

      v135(v186, v120);
    }

    else
    {

      v139 = *(v121 + 8);
      v139(v126, v120);
      v139(v122, v120);
    }
  }

  v140 = v193;
  v141 = v198;
  v196(&v202, v193, v198);
  v142 = v203;
  v143 = v204;
  __swift_project_boxed_opaque_existential_1(&v202, v203);
  (*(v143 + 56))(v142, v143);
  __swift_destroy_boxed_opaque_existential_1Tm(&v202);
  (*(v141 + 56))(&v202, v140, v141);
  __swift_project_boxed_opaque_existential_1(&v202, v203);
  v144 = dispatch thunk of DeviceState.isHomePod.getter();
  v145 = v182;
  if ((v144 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v202);
    goto LABEL_44;
  }

  v146 = v176;
  static ResponseMode.displayForward.getter();
  v147 = static ResponseMode.== infix(_:_:)();
  v148 = *(v192 + 8);
  v148(v146, v125);
  if (v147)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v202);
  }

  else
  {
    static ResponseMode.displayOnly.getter();
    v149 = static ResponseMode.== infix(_:_:)();
    v148(v146, v125);
    __swift_destroy_boxed_opaque_existential_1Tm(&v202);
    if ((v149 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v202 = v153;
    *v152 = 136315138;
    swift_beginAccess();
    _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x1E69D3550], MEMORY[0x1E69D01A8]);
    v154 = dispatch thunk of CustomStringConvertible.description.getter();
    v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, &v202);

    *(v152 + 4) = v156;
    v80 = v199;
    _os_log_impl(&dword_1DC659000, v150, v151, "HomePod has wrong interface idiom in response mode: %s. Reverting to voiceOnly.", v152, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v153);
    v157 = v153;
    v118 = v191;
    MEMORY[0x1E12A2F50](v157, -1, -1);
    v158 = v152;
    v146 = v176;
    MEMORY[0x1E12A2F50](v158, -1, -1);
  }

  static ResponseMode.voiceOnly.getter();
  swift_beginAccess();
  (*(v192 + 40))(v118, v146, v125);
  v141 = v198;
LABEL_44:
  v159 = type metadata accessor for CurrentRequest();
  MEMORY[0x1EEE9AC00](v159);
  *(&v174 - 10) = v140;
  *(&v174 - 9) = v141;
  *(&v174 - 8) = v80;
  *(&v174 - 7) = v205;
  v160 = v195;
  *(&v174 - 6) = v118;
  *(&v174 - 5) = v160;
  *(&v174 - 4) = v190;
  *(&v174 - 3) = v145;
  v161 = v185;
  *(&v174 - 2) = v183;
  *(&v174 - 1) = v161;
  _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest, MEMORY[0x1E69CE570], MEMORY[0x1E69CE448]);
  static Buildable.withBuilder(_:)();

  v162 = v202;

  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v201 = v166;
    *v165 = 136315394;
    v167 = ObjectIdentifier.debugDescription.getter();
    v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v168, &v201);

    *(v165 + 4) = v169;
    *(v165 + 12) = 2080;
    swift_beginAccess();
    _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x1E69D3550], MEMORY[0x1E69D01A8]);
    v170 = dispatch thunk of CustomStringConvertible.description.getter();
    v172 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v171, &v201);

    *(v165 + 14) = v172;
    _os_log_impl(&dword_1DC659000, v163, v164, "Created CurrentRequest %s with responseMode %s", v165, 0x16u);
    swift_arrayDestroy();
    v160 = v195;
    MEMORY[0x1E12A2F50](v166, -1, -1);
    MEMORY[0x1E12A2F50](v165, -1, -1);
  }

  (*(v192 + 8))(v118, v125);
  __swift_destroy_boxed_opaque_existential_1Tm(v205);
  outlined destroy of MultiUserState(v160);
  return v162;
}

void *static ConversationTurnState.computeCompanionName(_:)(void *a1, double a2)
{
  v3 = type metadata accessor for DeviceIdiom();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of PeerInfoProviding.getDeviceIdiom()();
  (*(v4 + 104))(v6, *MEMORY[0x1E69D34A8], v3);
  LOBYTE(a1) = static DeviceIdiom.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v9, v3);
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Request is not interacting with a HomePod, companion name is nil.";
    goto LABEL_11;
  }

  if (MGGetSInt32Answer() == 7)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Request is executing on a HomePod and not in companion mode. Companion name not known, setting as nil.";
LABEL_11:
    _os_log_impl(&dword_1DC659000, v12, v13, v15, v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
LABEL_12:

    return 0;
  }

  result = MGGetStringAnswer();
  if (result)
  {
    v18 = result;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for InvocationState.responseMode.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ResponseMode();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t closure #2 in ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v152 = a8;
  v151 = a7;
  v160 = a6;
  v148 = a5;
  v147 = a4;
  KeyPath = a3;
  v154 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v139 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v155 = &v139 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v153 = &v139 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v150 = &v139 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v149 = &v139 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v146 = &v139 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment14MultiUserStateOSgMd, &_s19SiriFlowEnvironment14MultiUserStateOSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v145 = &v139 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v144 = &v139 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v143 = &v139 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v141 = &v139 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v140 = &v139 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v139 = &v139 - v36;
  v37 = *a1;
  swift_getKeyPath();
  v161 = a11;
  v162 = a2;
  v38 = *(a11 + 48);
  v171 = a10;
  v38(&v167, a10, a11);
  v39 = v169;
  v40 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  v165 = (*(v40 + 8))(v39, v40);
  v166 = v41;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v42 = v161;
  v38(&v167, a10, v161);
  v158 = a11 + 48;
  v43 = v169;
  v44 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  v165 = (*(v44 + 16))(v43, v44);
  v166 = v45;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v46 = v171;
  v167 = (*(v42 + 8))(v171, v42);
  v168 = v47;
  Builder.subscript.setter();
  swift_getKeyPath();
  v157 = v38;
  v38(&v167, v46, v42);
  v48 = v169;
  v49 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  v165 = (*(v49 + 72))(v48, v49);
  v166 = v50;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(KeyPath, KeyPath[3]);
  v167 = dispatch thunk of PeerInfoProviding.getPeerName()();
  v168 = v51;
  Builder.subscript.setter();
  KeyPath = swift_getKeyPath();
  v52 = v171;
  v38(&v167, v171, v42);
  v53 = v169;
  v54 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  v55 = v139;
  (*(v54 + 24))(v53, v54);
  v56 = type metadata accessor for InputOrigin();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  KeyPath = swift_getKeyPath();
  v57 = v52;
  v157(&v167, v52, v42);
  v58 = v169;
  v59 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  v60 = v140;
  (*(v59 + 32))(v58, v59);
  v61 = type metadata accessor for InteractionType();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  v159 = v37;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  KeyPath = swift_getKeyPath();
  v62 = v157;
  v157(&v167, v57, v42);
  v63 = v169;
  v64 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  v165 = (*(v64 + 152))(v63, v64);
  v166 = v65;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  KeyPath = swift_getKeyPath();
  v62(&v167, v57, v42);
  v66 = v169;
  v67 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  (*(v67 + 40))(v66, v67);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  KeyPath = swift_getKeyPath();
  v62(&v167, v57, v161);
  v68 = v62;
  v69 = v169;
  v70 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  (*(v70 + 48))(v69, v70);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v71 = v147;
  swift_beginAccess();
  v72 = type metadata accessor for ResponseMode();
  v73 = *(v72 - 8);
  v74 = v144;
  (*(v73 + 16))(v144, v71, v72);
  (*(v73 + 56))(v74, 0, 1, v72);
  Builder.subscript.setter();
  swift_getKeyPath();
  v75 = v145;
  outlined init with copy of MultiUserState(v148, v145);
  v76 = type metadata accessor for MultiUserState();
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  Builder.subscript.setter();
  swift_getKeyPath();
  v77 = v161;
  v68(&v167, v171, v161);
  v78 = v169;
  v79 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  (*(v79 + 176))(v78, v79);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v80 = v171;
  (*(v77 + 72))(&v167, v171, v77);
  Builder.subscript.setter();
  swift_getKeyPath();
  v68(&v167, v80, v77);
  v81 = v169;
  v82 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  (*(v82 + 200))(v81, v82);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v83 = v160;
  v167 = *(v160 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage);
  v84 = v167;
  Builder.subscript.setter();
  swift_getKeyPath();
  v85 = *(v83 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId + 8);
  v167 = *(v83 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v168 = v85;

  Builder.subscript.setter();
  swift_getKeyPath();
  LOBYTE(v167) = *(v83 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice);
  Builder.subscript.setter();
  v149 = swift_getKeyPath();
  v86 = v161;
  v87 = v171;
  v88 = v157;
  v157(&v167, v171, v161);
  v89 = v169;
  v90 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  v163 = (*(v90 + 208))(v89, v90);
  v164 = v91;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  v149 = swift_getKeyPath();
  v92 = v87;
  v93 = v88;
  v88(&v167, v92, v86);
  v94 = v169;
  v95 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  v163 = (*(v95 + 216))(v94, v95);
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v167 = v151;
  v168 = v152;

  Builder.subscript.setter();
  swift_getKeyPath();
  v96 = v171;
  v93(&v167, v171, v86);
  v97 = v169;
  v98 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  LOBYTE(v163) = (*(v98 + 104))(v97, v98) & 1;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v99 = type metadata accessor for FlowTaskMetadata();
  (*(*(v99 - 8) + 56))(v150, 1, 1, v99);
  Builder.subscript.setter();
  swift_getKeyPath();
  v100 = v96;
  v101 = v161;
  v93(&v167, v100, v161);
  v102 = v169;
  v103 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  LODWORD(v163) = (*(v103 + 224))(v102, v103);
  BYTE4(v163) = 0;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v104 = *(v160 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance + 8);
  v167 = *(v160 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance);
  v168 = v104;

  Builder.subscript.setter();
  swift_getKeyPath();
  v105 = v171;
  v106 = v101;
  v107 = v101;
  v108 = v157;
  v157(&v167, v171, v107);
  v109 = v169;
  v110 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  LOBYTE(v163) = (*(v110 + 232))(v109, v110) & 1;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  v152 = swift_getKeyPath();
  v108(&v167, v105, v106);
  v111 = v169;
  v112 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  LOBYTE(v163) = (*(v112 + 240))(v111, v112) & 1;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v108(&v167, v105, v106);
  v113 = v169;
  v114 = v170;
  __swift_project_boxed_opaque_existential_1(&v167, v169);
  LOBYTE(v163) = (*(v114 + 248))(v113, v114) & 1;
  Builder.subscript.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  swift_getKeyPath();
  v115 = type metadata accessor for RequestPositionInSession();
  v116 = *(v115 - 8);
  v117 = v153;
  (*(v116 + 16))(v153, v154, v115);
  (*(v116 + 56))(v117, 0, 1, v115);
  Builder.subscript.setter();
  swift_getKeyPath();
  v169 = &type metadata for SiriAceLocationProvider;
  v170 = lazy protocol witness table accessor for type SiriAceLocationProvider and conformance SiriAceLocationProvider();
  Builder.subscript.setter();
  swift_getKeyPath();
  v118 = v160;
  v119 = *(v160 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant + 8);
  v167 = *(v160 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant);
  v168 = v119;

  Builder.subscript.setter();
  swift_getKeyPath();
  v120 = v118;
  v121 = *(v118 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant + 8);
  v167 = *(v118 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant);
  v168 = v121;

  Builder.subscript.setter();
  swift_getKeyPath();
  v122 = OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation;
  v123 = type metadata accessor for ExecutionLocation();
  v124 = *(v123 - 8);
  v125 = *(v124 + 16);
  v126 = v120 + v122;
  v127 = v155;
  v125(v155, v126, v123);
  v128 = *(v124 + 56);
  v128(v127, 0, 1, v123);
  Builder.subscript.setter();
  swift_getKeyPath();
  v125(v127, v160 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation, v123);
  v128(v127, 0, 1, v123);
  Builder.subscript.setter();
  swift_getKeyPath();
  v129 = v161;
  v130 = v171;
  v167 = (*(v161 + 16))(v171, v161);
  v168 = v131;
  Builder.subscript.setter();
  swift_getKeyPath();
  v132 = v156;
  (*(v129 + 24))(v130, v129);
  v133 = type metadata accessor for UUID();
  v134 = *(v133 - 8);
  if ((*(v134 + 48))(v132, 1, v133) == 1)
  {
    outlined destroy of UUID?(v132);
    v135 = 0;
    v136 = 0;
  }

  else
  {
    v135 = UUID.uuidString.getter();
    v136 = v137;
    (*(v134 + 8))(v132, v133);
  }

  v167 = v135;
  v168 = v136;
  Builder.subscript.setter();
  swift_getKeyPath();
  LOBYTE(v167) = *(v160 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession);
  return Builder.subscript.setter();
}

uint64_t sub_1DC756458@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.interactionId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC7564CC@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.currentDeviceAssistantId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC7564F8@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.voiceTriggerEventInfo.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC756524@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.companionName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC756550@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.isRecognizeMyVoiceEnabled.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC7565A4@<X0>(_DWORD *a1@<X8>)
{
  result = CurrentRequest.voiceAudioSessionId.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC7565D0@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.utterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC7565FC@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.isSystemApertureEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC75662C@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.isLiveActivitiesSupported.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC75665C@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.isInAmbient.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC7566F0@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.responseLanguageVariant.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC756734@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.requestLanguageVariant.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC7567C0@<X0>(uint64_t *a2@<X8>)
{
  result = CurrentRequest.rootRequestId.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC7567EC@<X0>(uint64_t *a2@<X8>)
{
  result = CurrentRequest.sessionId.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC756818@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.remoteRequestWasMadeInSession.getter();
  *a1 = result & 1;
  return result;
}

uint64_t specialized TaskLoggingService.resetFlowTaskState(aceServiceInvoker:)(void *a1)
{
  v2 = type metadata accessor for NLContextUpdate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NLContextUpdate.init()();
  NLContextUpdate.shouldResetFlowTaskState.setter();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.instrumentation);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "#TaskLoggingService signalling server to reset FlowTaskState", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = NLContextUpdate.toAceContextUpdate()();
  AceServiceInvokerAsync.submitAndForget(_:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for InvocationState.refId.getter in conformance InvocationStateImpl()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t protocol witness for AffinityScoring.bundleIdentifier.getter in conformance AffinityScorerManager.DefaultAffinityScorer()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for InvocationState.sessionHandOffContinuityID.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t protocol witness for InvocationState.inputOrigin.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for InputOrigin();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for InvocationState.interactionType.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for InteractionType();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for InvocationState.interactionId.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 88));

  return v2;
}

uint64_t protocol witness for InvocationState.currentDeviceAssistantId.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 112));

  return v2;
}

unint64_t lazy protocol witness table accessor for type SiriAceLocationProvider and conformance SiriAceLocationProvider()
{
  result = lazy protocol witness table cache variable for type SiriAceLocationProvider and conformance SiriAceLocationProvider;
  if (!lazy protocol witness table cache variable for type SiriAceLocationProvider and conformance SiriAceLocationProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriAceLocationProvider and conformance SiriAceLocationProvider);
  }

  return result;
}

uint64_t protocol witness for ConversationTurnState.rootRequestId.getter in conformance ConversationTurnStateImpl()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t protocol witness for ConversationTurnState.sessionConfiguration.getter in conformance ConversationTurnStateImpl@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v4, a1, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
}

uint64_t protocol witness for ConversationTurnState.scopedRRData.getter in conformance ConversationTurnStateImpl()
{
  v1 = *v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData;
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t RemoteConversationService.makeRequestIdentities(from:)(uint64_t a1, uint64_t a2)
{
  v2[174] = a2;
  v2[173] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v2[175] = swift_task_alloc();
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  v2[180] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v2[181] = swift_task_alloc();
  v3 = type metadata accessor for Locale();
  v2[182] = v3;
  v2[183] = *(v3 - 8);
  v2[184] = swift_task_alloc();
  v2[185] = swift_task_alloc();
  v4 = type metadata accessor for IdentifiedUser();
  v2[186] = v4;
  v2[187] = *(v4 - 8);
  v2[188] = swift_task_alloc();
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v2[193] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;
  v2[194] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.makeRequestIdentities(from:), v5, 0);
}

uint64_t RemoteConversationService.makeRequestIdentities(from:)()
{
  v70 = v0;
  if (AFSupportsMultiUser())
  {
    v1 = v0[174];
    v2 = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
    v0[195] = v2;
    v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v0[196] = v3;
    if (v3)
    {
      v4 = OBJC_IVAR___SKEUserSpecificInfo_userId;
      v0[197] = OBJC_IVAR___SKEUserSpecificInfo_userId;
      v5 = &v3[v4];
      v6 = *v5;
      v7 = *(v5 + 1);
      v8 = v3;

      v9 = MEMORY[0x1E12A1410](v6, v7);
      v0[198] = v9;

      v0[50] = v0;
      v0[55] = v0 + 167;
      v0[51] = RemoteConversationService.makeRequestIdentities(from:);
      v10 = swift_continuation_init();
      v0[105] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
      v0[102] = v10;
      v0[98] = MEMORY[0x1E69E9820];
      v0[99] = 1107296256;
      v0[100] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
      v0[101] = &block_descriptor_284;
      [v2 getSharedUserInfoForSharedUserID:v9 completion:v0 + 98];
      v11 = v0 + 50;
    }

    else
    {
      v0[10] = v0;
      v0[15] = v0 + 172;
      v0[11] = RemoteConversationService.makeRequestIdentities(from:);
      v34 = swift_continuation_init();
      v0[89] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
      v0[86] = v34;
      v0[82] = MEMORY[0x1E69E9820];
      v0[83] = 1107296256;
      v0[84] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
      v0[85] = &block_descriptor_19;
      [v2 getMultiUserSettingsForRecognizedUserWithCompletion_];
      v11 = v0 + 10;
    }

    return MEMORY[0x1EEE6DEC8](v11);
  }

  else
  {
    v12 = v0[184];
    v13 = v0[180];
    v14 = v0[179];
    v15 = v0[174];
    v16 = *(v15 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v17 = v16;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v16, 0, 0, v12, v13);
    v18 = *(v15 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v19 = v18;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v18, 0, 0, v12, v14);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v20 = v0[180];
    v21 = v0[178];
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v20, v21, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[187];
      v26 = v0[186];
      v27 = v0[178];
      v28 = v0[177];
      v29 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v69 = v67;
      *v29 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v27, v28, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v30 = *(v25 + 48);
      if (v30(v28, 1, v26) == 1)
      {
        v31 = v0[186];
        v32 = v0[177];
        IdentifiedUser.init()();
        if (v30(v32, 1, v31) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v0[177], &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(v0[187] + 32))(v0[189], v0[177], v0[186]);
      }

      v35 = v0[189];
      v36 = v0[187];
      v37 = v0[186];
      v38 = v0[178];
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v36 + 8))(v35, v37);
      outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v69);

      *(v29 + 4) = v42;
      _os_log_impl(&dword_1DC659000, v23, v24, "#user-session: proposedIdentityOfRecognizedUser=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x1E12A2F50](v67, -1, -1);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    else
    {
      v33 = v0[178];

      outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v0[179], v0[176], &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v0[187];
      v46 = v0[186];
      v47 = v0[176];
      v48 = v0[175];
      v49 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v68;
      *v49 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v47, v48, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v50 = *(v45 + 48);
      if (v50(v48, 1, v46) == 1)
      {
        v51 = v0[186];
        v52 = v0[175];
        IdentifiedUser.init()();
        if (v50(v52, 1, v51) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v0[175], &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(v0[187] + 32))(v0[188], v0[175], v0[186]);
      }

      v54 = v0[188];
      v55 = v0[187];
      v56 = v0[186];
      v57 = v0[176];
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v55 + 8))(v54, v56);
      outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v69);

      *(v49 + 4) = v61;
      _os_log_impl(&dword_1DC659000, v43, v44, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1E12A2F50](v68, -1, -1);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    else
    {
      v53 = v0[176];

      outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v62 = v0[179];
    v63 = v0[173];
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v0[180], v63, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v64 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v62, v63 + *(v64 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v63 + *(v64 + 24)) = MEMORY[0x1E69E7CC0];
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);

    v65 = v0[1];

    return v65();
  }
}

{
  v1 = *(*v0 + 1552);

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.makeRequestIdentities(from:), v1, 0);
}

{
  v1 = v0[198];
  v2 = v0[195];
  v3 = (v0[196] + v0[197]);
  v0[199] = v0[167];

  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x1E12A1410](v4, v5);
  v0[200] = v6;

  v0[18] = v0;
  v0[23] = v0 + 170;
  v0[19] = RemoteConversationService.makeRequestIdentities(from:);
  v7 = swift_continuation_init();
  v0[137] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
  v0[134] = v7;
  v0[130] = MEMORY[0x1E69E9820];
  v0[131] = 1107296256;
  v0[132] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
  v0[133] = &block_descriptor_287;
  [v2 getMultiUserSettingsForSharedUserID:v6 completion:v0 + 130];

  return MEMORY[0x1EEE6DEC8](v0 + 18);
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1608) = v2;
  v3 = *(v1 + 1552);
  if (v2)
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 1600);

  v2 = *(v0 + 1360);
  *(v0 + 1632) = *(v0 + 1592);
  *(v0 + 1624) = v2;
  v3 = *(*(v0 + 1392) + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  *(v0 + 1640) = v3;
  v4 = *(v0 + 1560);
  if (v3)
  {
    v5 = OBJC_IVAR___SKEUserSpecificInfo_userId;
    *(v0 + 1648) = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v6 = &v3[v5];
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = v3;

    v10 = MEMORY[0x1E12A1410](v7, v8);
    *(v0 + 1656) = v10;

    *(v0 + 592) = v0;
    *(v0 + 632) = v0 + 1328;
    *(v0 + 600) = RemoteConversationService.makeRequestIdentities(from:);
    v11 = swift_continuation_init();
    *(v0 + 1288) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
    *(v0 + 1264) = v11;
    *(v0 + 1232) = MEMORY[0x1E69E9820];
    *(v0 + 1240) = 1107296256;
    *(v0 + 1248) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
    *(v0 + 1256) = &block_descriptor_278;
    [v4 getSharedUserInfoForSharedUserID:v10 completion:v0 + 1232];
    v12 = v0 + 592;
  }

  else
  {
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1368;
    *(v0 + 216) = RemoteConversationService.makeRequestIdentities(from:);
    v13 = swift_continuation_init();
    *(v0 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    *(v0 + 752) = v13;
    *(v0 + 720) = MEMORY[0x1E69E9820];
    *(v0 + 728) = 1107296256;
    *(v0 + 736) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    *(v0 + 744) = &block_descriptor_263;
    [v4 getMultiUserSettingsForRecognizedUserWithCompletion_];
    v12 = v0 + 208;
  }

  return MEMORY[0x1EEE6DEC8](v12);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1616) = v2;
  v3 = *(v1 + 1552);
  if (v2)
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[172];
  v0[204] = 0;
  v0[203] = v1;
  v2 = *(v0[174] + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v0[205] = v2;
  v3 = v0[195];
  if (v2)
  {
    v4 = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v0[206] = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v5 = &v2[v4];
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = v2;

    v9 = MEMORY[0x1E12A1410](v6, v7);
    v0[207] = v9;

    v0[74] = v0;
    v0[79] = v0 + 166;
    v0[75] = RemoteConversationService.makeRequestIdentities(from:);
    v10 = swift_continuation_init();
    v0[161] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
    v0[158] = v10;
    v0[154] = MEMORY[0x1E69E9820];
    v0[155] = 1107296256;
    v0[156] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
    v0[157] = &block_descriptor_278;
    [v3 getSharedUserInfoForSharedUserID:v9 completion:v0 + 154];
    v11 = v0 + 74;
  }

  else
  {
    v0[26] = v0;
    v0[31] = v0 + 171;
    v0[27] = RemoteConversationService.makeRequestIdentities(from:);
    v12 = swift_continuation_init();
    v0[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    v0[94] = v12;
    v0[90] = MEMORY[0x1E69E9820];
    v0[91] = 1107296256;
    v0[92] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    v0[93] = &block_descriptor_263;
    [v3 getMultiUserSettingsForRecognizedUserWithCompletion_];
    v11 = v0 + 26;
  }

  return MEMORY[0x1EEE6DEC8](v11);
}

{
  v1 = *(*v0 + 1552);

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.makeRequestIdentities(from:), v1, 0);
}

{
  v1 = v0[207];
  v2 = v0[195];
  v3 = (v0[205] + v0[206]);
  v0[208] = v0[166];

  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x1E12A1410](v4, v5);
  v0[209] = v6;

  v0[2] = v0;
  v0[7] = v0 + 165;
  v0[3] = RemoteConversationService.makeRequestIdentities(from:);
  v7 = swift_continuation_init();
  v0[153] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
  v0[150] = v7;
  v0[146] = MEMORY[0x1E69E9820];
  v0[147] = 1107296256;
  v0[148] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
  v0[149] = &block_descriptor_281;
  [v2 getMultiUserSettingsForSharedUserID:v6 completion:v0 + 146];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1680) = v2;
  v3 = *(v1 + 1552);
  if (v2)
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 1672);

  v2 = *(v0 + 1320);
  *(v0 + 1704) = *(v0 + 1664);
  *(v0 + 1696) = v2;
  v3 = *(v0 + 1560);
  *(v0 + 272) = v0;
  *(v0 + 312) = v0 + 1352;
  *(v0 + 280) = RemoteConversationService.makeRequestIdentities(from:);
  v4 = swift_continuation_init();
  *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8SAPersonCGs5Error_pGMd, &_sSccySDySSSo8SAPersonCGs5Error_pGMR);
  *(v0 + 880) = v4;
  *(v0 + 848) = MEMORY[0x1E69E9820];
  *(v0 + 856) = 1107296256;
  *(v0 + 864) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [String : SAPerson];
  *(v0 + 872) = &block_descriptor_266;
  [v3 homeUserIdToNames_];

  return MEMORY[0x1EEE6DEC8](v0 + 272);
}

{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1688) = v2;
  v3 = *(v1 + 1552);
  if (v2)
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[171];
  v0[213] = 0;
  v0[212] = v1;
  v2 = v0[195];
  v0[34] = v0;
  v0[39] = v0 + 169;
  v0[35] = RemoteConversationService.makeRequestIdentities(from:);
  v3 = swift_continuation_init();
  v0[113] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8SAPersonCGs5Error_pGMd, &_sSccySDySSSo8SAPersonCGs5Error_pGMR);
  v0[110] = v3;
  v0[106] = MEMORY[0x1E69E9820];
  v0[107] = 1107296256;
  v0[108] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [String : SAPerson];
  v0[109] = &block_descriptor_266;
  [v2 homeUserIdToNames_];

  return MEMORY[0x1EEE6DEC8](v0 + 34);
}

{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 1712) = v2;
  v3 = *(v1 + 1552);
  if (v2)
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v85 = v0;
  v1 = *(v0 + 1352);
  *(v0 + 1720) = v1;
  v2 = *(v1 + 32);
  *(v0 + 1824) = v2;
  v3 = -1;
  v4 = -1 << v2;
  v5 = *(v1 + 64);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  *(v0 + 1728) = MEMORY[0x1E69E7CC0];
  v6 = v3 & v5;
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 1744) = v7;
    *(v0 + 1736) = v6;
    v10 = *(v0 + 1560);
    v11 = __clz(__rbit64(v6)) | (v7 << 6);
    v12 = *(v1 + 56);
    v13 = (*(v1 + 48) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v12 + 8 * v11);
    *(v0 + 1752) = v16;

    v17 = v16;
    v18 = MEMORY[0x1E12A1410](v14, v15);
    *(v0 + 1760) = v18;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1296;
    *(v0 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v19 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v0 + 944) = v19;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 936) = &block_descriptor_269;
    [v10 getSharedUserIdForHomeUserId:v18 completion:v0 + 912];

    return MEMORY[0x1EEE6DEC8](v0 + 336);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v4) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v1 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v83 = *(v0 + 1728);
    v20 = *(v0 + 1704);
    v21 = *(v0 + 1696);
    v22 = *(v0 + 1632);
    v23 = *(v0 + 1472);
    v24 = *(v0 + 1440);
    v25 = *(v0 + 1432);
    v26 = *(v0 + 1392);
    v27 = *(v26 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v82 = *(v0 + 1624);
    v28 = v27;
    v81 = v22;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v27, v22, 0, v23, v24);
    v29 = *(v26 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v80 = v21;
    v30 = v29;
    v79 = v20;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v29, v20, 0, v23, v25);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 1440);
    v32 = *(v0 + 1424);
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v31, v32, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 1496);
      v37 = *(v0 + 1488);
      v38 = *(v0 + 1424);
      v39 = *(v0 + 1416);
      v40 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v84 = v77;
      *v40 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v38, v39, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v41 = *(v36 + 48);
      if (v41(v39, 1, v37) == 1)
      {
        v42 = *(v0 + 1488);
        v43 = *(v0 + 1416);
        IdentifiedUser.init()();
        if (v41(v43, 1, v42) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1512), *(v0 + 1416), *(v0 + 1488));
      }

      v45 = *(v0 + 1512);
      v46 = *(v0 + 1496);
      v47 = *(v0 + 1488);
      v48 = *(v0 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v46 + 8))(v45, v47);
      outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v84);

      *(v40 + 4) = v52;
      _os_log_impl(&dword_1DC659000, v34, v35, "#user-session: proposedIdentityOfRecognizedUser=%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x1E12A2F50](v77, -1, -1);
      MEMORY[0x1E12A2F50](v40, -1, -1);
    }

    else
    {
      v44 = *(v0 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 1432), *(v0 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 1496);
      v56 = *(v0 + 1488);
      v57 = *(v0 + 1408);
      v58 = *(v0 + 1400);
      v59 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84 = v78;
      *v59 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v57, v58, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v60 = *(v55 + 48);
      if (v60(v58, 1, v56) == 1)
      {
        v61 = *(v0 + 1488);
        v62 = *(v0 + 1400);
        IdentifiedUser.init()();
        if (v60(v62, 1, v61) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1504), *(v0 + 1400), *(v0 + 1488));
      }

      v64 = *(v0 + 1504);
      v65 = *(v0 + 1496);
      v66 = *(v0 + 1488);
      v67 = *(v0 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v65 + 8))(v64, v66);
      outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v84);

      *(v59 + 4) = v71;
      _os_log_impl(&dword_1DC659000, v53, v54, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1E12A2F50](v78, -1, -1);
      MEMORY[0x1E12A2F50](v59, -1, -1);
    }

    else
    {
      v63 = *(v0 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v72 = *(v0 + 1432);
    v73 = *(v0 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 1440), v73, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v74 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v72, v73 + *(v74 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v73 + *(v74 + 24)) = v83;
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);

    v75 = *(v0 + 8);

    return v75();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 368);
  *(*v0 + 1768) = v2;
  v3 = *(v1 + 1552);
  if (v2)
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[220];
  v2 = v0[195];
  v3 = v0[162];
  v0[222] = v3;
  v4 = v0[163];
  v0[223] = v4;

  v5 = MEMORY[0x1E12A1410](v3, v4);
  v0[224] = v5;
  v0[58] = v0;
  v0[63] = v0 + 168;
  v0[59] = RemoteConversationService.makeRequestIdentities(from:);
  v6 = swift_continuation_init();
  v0[129] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
  v0[126] = v6;
  v0[122] = MEMORY[0x1E69E9820];
  v0[123] = 1107296256;
  v0[124] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
  v0[125] = &block_descriptor_272;
  [v2 getSharedUserInfoForSharedUserID:v5 completion:v0 + 122];

  return MEMORY[0x1EEE6DEC8](v0 + 58);
}

{
  v1 = *(*v0 + 1552);

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.makeRequestIdentities(from:), v1, 0);
}

{
  v91 = v1;
  v3 = *(v1 + 1344);
  *(v1 + 1800) = v3;
  if (v3)
  {
    v4 = v1 + 528;
    v5 = *(v1 + 1784);
    v6 = *(v1 + 1776);
    v7 = *(v1 + 1560);

    v8 = MEMORY[0x1E12A1410](v6, v5);
    *(v1 + 1808) = v8;

    *(v1 + 528) = v1;
    *(v1 + 568) = v1 + 1312;
    *(v1 + 536) = RemoteConversationService.makeRequestIdentities(from:);
    v9 = swift_continuation_init();
    *(v1 + 1160) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    *(v1 + 1136) = v9;
    *(v1 + 1104) = MEMORY[0x1E69E9820];
    *(v1 + 1112) = 1107296256;
    *(v1 + 1120) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    *(v1 + 1128) = &block_descriptor_275;
    [v7 getMultiUserSettingsForSharedUserID:v8 completion:v1 + 1104];
LABEL_10:

    return MEMORY[0x1EEE6DEC8](v4);
  }

  v10 = *(v1 + 1792);

  v11 = *(v1 + 1744);
  v12 = (*(v1 + 1736) - 1) & *(v1 + 1736);
  if (v12)
  {
    v2 = *(v1 + 1720);
LABEL_9:
    v4 = v1 + 336;
    *(v1 + 1744) = v11;
    *(v1 + 1736) = v12;
    v14 = *(v1 + 1560);
    v15 = __clz(__rbit64(v12)) | (v11 << 6);
    v16 = v2[7];
    v17 = (v2[6] + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v16 + 8 * v15);
    *(v1 + 1752) = v20;

    v21 = v20;
    v22 = MEMORY[0x1E12A1410](v18, v19);
    *(v1 + 1760) = v22;

    *(v1 + 336) = v1;
    *(v1 + 376) = v1 + 1296;
    *(v1 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v23 = swift_continuation_init();
    *(v1 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v1 + 944) = v23;
    *(v1 + 912) = MEMORY[0x1E69E9820];
    *(v1 + 920) = 1107296256;
    *(v1 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v1 + 936) = &block_descriptor_269;
    [v14 getSharedUserIdForHomeUserId:v22 completion:v1 + 912];
    goto LABEL_10;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    v2 = *(v1 + 1720);
    if (v13 >= (((1 << *(v1 + 1824)) + 63) >> 6))
    {
      break;
    }

    v12 = v2[v13 + 8];
    ++v11;
    if (v12)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  v89 = *(v1 + 1728);
  v24 = *(v1 + 1704);
  v25 = *(v1 + 1696);
  v26 = *(v1 + 1632);
  v27 = *(v1 + 1472);
  v28 = *(v1 + 1440);
  v29 = *(v1 + 1432);
  v30 = *(v1 + 1392);
  v31 = *(v30 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
  v88 = *(v1 + 1624);
  v32 = v31;
  v87 = v26;
  static Locale.autoupdatingCurrent.getter();
  IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v31, v26, 0, v27, v28);
  v33 = *(v30 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v0 = v25;
  v34 = v33;
  v2 = v24;
  static Locale.autoupdatingCurrent.getter();
  IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v33, v24, 0, v27, v29);
  if (one-time initialization token for executor == -1)
  {
    goto LABEL_14;
  }

LABEL_32:
  swift_once();
LABEL_14:
  v35 = *(v1 + 1440);
  v36 = *(v1 + 1424);
  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v35, v36, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v85 = v2;
  v86 = v0;
  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v1 + 1496);
    v41 = *(v1 + 1488);
    v42 = *(v1 + 1424);
    v43 = *(v1 + 1416);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v90 = v45;
    *v44 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v42, v43, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v46 = *(v40 + 48);
    v83 = v45;
    if (v46(v43, 1, v41) == 1)
    {
      v47 = *(v1 + 1488);
      v48 = *(v1 + 1416);
      IdentifiedUser.init()();
      if (v46(v48, 1, v47) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      }
    }

    else
    {
      (*(*(v1 + 1496) + 32))(*(v1 + 1512), *(v1 + 1416), *(v1 + 1488));
    }

    v50 = *(v1 + 1512);
    v51 = *(v1 + 1496);
    v52 = *(v1 + 1488);
    v53 = *(v1 + 1424);
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    (*(v51 + 8))(v50, v52);
    outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v90);

    *(v44 + 4) = v57;
    _os_log_impl(&dword_1DC659000, v38, v39, "#user-session: proposedIdentityOfRecognizedUser=%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1E12A2F50](v83, -1, -1);
    MEMORY[0x1E12A2F50](v44, -1, -1);

    v2 = v85;
    v0 = v86;
  }

  else
  {
    v49 = *(v1 + 1424);

    outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(*(v1 + 1432), *(v1 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v1 + 1496);
    v61 = *(v1 + 1488);
    v62 = *(v1 + 1408);
    v63 = *(v1 + 1400);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v90 = v65;
    *v64 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v62, v63, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v66 = *(v60 + 48);
    v84 = v65;
    if (v66(v63, 1, v61) == 1)
    {
      v67 = *(v1 + 1488);
      v68 = *(v1 + 1400);
      IdentifiedUser.init()();
      if (v66(v68, 1, v67) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      }
    }

    else
    {
      (*(*(v1 + 1496) + 32))(*(v1 + 1504), *(v1 + 1400), *(v1 + 1488));
    }

    v70 = *(v1 + 1504);
    v71 = *(v1 + 1496);
    v72 = *(v1 + 1488);
    v73 = *(v1 + 1408);
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    (*(v71 + 8))(v70, v72);
    outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v90);

    *(v64 + 4) = v77;
    _os_log_impl(&dword_1DC659000, v58, v59, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x1E12A2F50](v84, -1, -1);
    MEMORY[0x1E12A2F50](v64, -1, -1);
  }

  else
  {
    v69 = *(v1 + 1408);

    outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  }

  v78 = *(v1 + 1432);
  v79 = *(v1 + 1384);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v1 + 1440), v79, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v80 = type metadata accessor for SiriRequestIdentities(0);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v78, v79 + *(v80 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  *(v79 + *(v80 + 24)) = v89;
  (*(*(v80 - 8) + 56))(v79, 0, 1, v80);

  v81 = *(v1 + 8);

  return v81();
}

{
  v1 = *v0;
  v2 = *(*v0 + 560);
  *(*v0 + 1816) = v2;
  v3 = *(v1 + 1552);
  if (v2)
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  else
  {
    v4 = RemoteConversationService.makeRequestIdentities(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v128 = v0;
  v1 = *(v0 + 1312);

  v2 = *(v0 + 1800);
  v3 = *(v0 + 1752);
  v4 = v1;
  v5 = v3;
  v6 = v2;
  static Locale.autoupdatingCurrent.getter();
  IdentifiedUser.init()();
  v7 = v5;
  IdentifiedUser.person.setter();
  v125 = v4;
  if (v4)
  {
    v8 = [v4 temperatureUnit];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 1800);
  v10 = *(v0 + 1464);
  v11 = *(v0 + 1456);
  v12 = *(v0 + 1448);
  IdentifiedUser.preferredTemperatureUnitName.setter();
  IdentifiedUser.extractLocale(userSpecificInfo:settings:defaultLocale:)(0, v1, v12);
  (*(v10 + 56))(v12, 0, 1, v11);
  IdentifiedUser.locale.setter();
  v13 = [v9 iCloudAltDSID];
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = *(v0 + 1800);
  IdentifiedUser.iCloudAltDSID.setter();
  v16 = [v15 homeUserId];
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  IdentifiedUser.homeUserID.setter();
  IdentifiedUser.sharedUserId.getter();
  if (v18)
  {
  }

  else
  {
    v19 = [*(v0 + 1800) sharedUserId];
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    IdentifiedUser.sharedUserId.setter();
  }

  v117 = *(v0 + 1752);
  v120 = *(v0 + 1544);
  v21 = *(v0 + 1536);
  v22 = *(v0 + 1528);
  v122 = *(v0 + 1520);
  v23 = *(v0 + 1496);
  v24 = *(v0 + 1488);
  v25 = *(v0 + 1480);
  v26 = *(v0 + 1464);
  v27 = *(v0 + 1456);
  v28 = *(v0 + 1800);
  IdentifiedUser.sharedUserInfo.setter();

  (*(v26 + 8))(v25, v27);
  v29 = *(v23 + 32);
  v29(v21, v22, v24);
  v118 = v29;
  v29(v120, v21, v24);
  (*(v23 + 16))(v122, v120, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v0 + 1728);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_44:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = *(v0 + 1800);
  v35 = *(v0 + 1544);
  v36 = *(v0 + 1520);
  v37 = *(v0 + 1496);
  v38 = *(v0 + 1488);

  (*(v37 + 8))(v35, v38);
  *(v31 + 2) = v33 + 1;
  v118(&v31[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33], v36, v38);
  v39 = *(v0 + 1744);
  v40 = *(v0 + 1736);
  *(v0 + 1728) = v31;
  v41 = (v40 - 1) & v40;
  if (v41)
  {
    v42 = *(v0 + 1720);
LABEL_21:
    *(v0 + 1744) = v39;
    *(v0 + 1736) = v41;
    v44 = *(v0 + 1560);
    v45 = __clz(__rbit64(v41)) | (v39 << 6);
    v46 = *(v42 + 56);
    v47 = (*(v42 + 48) + 16 * v45);
    v48 = *v47;
    v49 = v47[1];
    v50 = *(v46 + 8 * v45);
    *(v0 + 1752) = v50;

    v51 = v50;
    v52 = MEMORY[0x1E12A1410](v48, v49);
    *(v0 + 1760) = v52;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1296;
    *(v0 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v53 = swift_continuation_init();
    *(v0 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v0 + 944) = v53;
    *(v0 + 912) = MEMORY[0x1E69E9820];
    *(v0 + 920) = 1107296256;
    *(v0 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v0 + 936) = &block_descriptor_269;
    [v44 getSharedUserIdForHomeUserId:v52 completion:v0 + 912];

    return MEMORY[0x1EEE6DEC8](v0 + 336);
  }

  else
  {
    while (1)
    {
      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      v42 = *(v0 + 1720);
      if (v43 >= (((1 << *(v0 + 1824)) + 63) >> 6))
      {
        break;
      }

      v41 = *(v42 + 8 * v43 + 64);
      ++v39;
      if (v41)
      {
        v39 = v43;
        goto LABEL_21;
      }
    }

    v126 = *(v0 + 1728);
    v54 = *(v0 + 1704);
    v55 = *(v0 + 1696);
    v56 = *(v0 + 1632);
    v57 = *(v0 + 1472);
    v58 = *(v0 + 1440);
    v59 = *(v0 + 1432);
    v60 = *(v0 + 1392);
    v61 = *(v60 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v124 = *(v0 + 1624);
    v62 = v61;
    v123 = v56;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v61, v56, 0, v57, v58);
    v63 = *(v60 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v64 = v55;
    v65 = v63;
    v66 = v54;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v63, v54, 0, v57, v59);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v67 = *(v0 + 1440);
    v68 = *(v0 + 1424);
    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v67, v68, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    v119 = v66;
    v121 = v64;
    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v0 + 1496);
      v73 = *(v0 + 1488);
      v74 = *(v0 + 1424);
      v75 = *(v0 + 1416);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v127 = v77;
      *v76 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v74, v75, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v78 = *(v72 + 48);
      v115 = v77;
      if (v78(v75, 1, v73) == 1)
      {
        v79 = *(v0 + 1488);
        v80 = *(v0 + 1416);
        IdentifiedUser.init()();
        if (v78(v80, 1, v79) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1512), *(v0 + 1416), *(v0 + 1488));
      }

      v82 = *(v0 + 1512);
      v83 = *(v0 + 1496);
      v84 = *(v0 + 1488);
      v85 = *(v0 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      (*(v83 + 8))(v82, v84);
      outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v127);

      *(v76 + 4) = v89;
      _os_log_impl(&dword_1DC659000, v70, v71, "#user-session: proposedIdentityOfRecognizedUser=%s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      MEMORY[0x1E12A2F50](v115, -1, -1);
      MEMORY[0x1E12A2F50](v76, -1, -1);

      v66 = v119;
      v64 = v121;
    }

    else
    {
      v81 = *(v0 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 1432), *(v0 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = *(v0 + 1496);
      v93 = *(v0 + 1488);
      v94 = *(v0 + 1408);
      v95 = *(v0 + 1400);
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v127 = v97;
      *v96 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v94, v95, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v98 = *(v92 + 48);
      v116 = v97;
      if (v98(v95, 1, v93) == 1)
      {
        v99 = *(v0 + 1488);
        v100 = *(v0 + 1400);
        IdentifiedUser.init()();
        if (v98(v100, 1, v99) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v0 + 1496) + 32))(*(v0 + 1504), *(v0 + 1400), *(v0 + 1488));
      }

      v102 = *(v0 + 1504);
      v103 = *(v0 + 1496);
      v104 = *(v0 + 1488);
      v105 = *(v0 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v108 = v107;
      (*(v103 + 8))(v102, v104);
      outlined destroy of ReferenceResolutionClientProtocol?(v105, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, &v127);

      *(v96 + 4) = v109;
      _os_log_impl(&dword_1DC659000, v90, v91, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x1E12A2F50](v116, -1, -1);
      MEMORY[0x1E12A2F50](v96, -1, -1);
    }

    else
    {
      v101 = *(v0 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v110 = *(v0 + 1432);
    v111 = *(v0 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 1440), v111, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v112 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v110, v111 + *(v112 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v111 + *(v112 + 24)) = v126;
    (*(*(v112 - 8) + 56))(v111, 0, 1, v112);

    v113 = *(v0 + 8);

    return v113();
  }
}

uint64_t IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for IdentifiedUser.Classification();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UserSessionState();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - v17;
  v19 = type metadata accessor for IdentifiedUser();
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 && !a2 && !v20 && !a3)
  {
    v23 = type metadata accessor for Locale();
    (*(*(v23 - 8) + 8))(a4, v23);
    v24 = *(v57 + 56);

    return v24(a5, 1, 1, v19);
  }

  v49 = v12;
  v26 = a2;
  v55 = a4;
  v56 = v20;
  v52 = a5;
  IdentifiedUser.init()();
  v51 = a3;
  v27 = v19;
  if (!a1)
  {
    v31 = a3;
    IdentifiedUser.person.setter();
LABEL_15:
    v30 = v56;
    if (v56)
    {
      v32 = [v56 temperatureUnit];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (*&a1[OBJC_IVAR___SKEUserSpecificInfo_meCard])
  {
    v28 = *&a1[OBJC_IVAR___SKEUserSpecificInfo_meCard];
  }

  else
  {
    v28 = a3;
  }

  v29 = v28;
  IdentifiedUser.person.setter();
  if (!*&a1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8])
  {
    goto LABEL_15;
  }

  v30 = v56;
LABEL_18:
  IdentifiedUser.preferredTemperatureUnitName.setter();
  v33 = v55;
  IdentifiedUser.extractLocale(userSpecificInfo:settings:defaultLocale:)(a1, v30, v18);
  v34 = type metadata accessor for Locale();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v50 = v34;
  v36(v18, 0, 1);
  IdentifiedUser.locale.setter();
  if (a1)
  {
    v37 = a1;
    v59 = 0;
    IdentifiedUser.voiceIDScore.setter();
    if ((v37[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] & 1) == 0)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    IdentifiedUser.belongsToHome.setter();
    IdentifiedUser.wasSpeechProfileUsedByASR.setter();
    v58 = v37[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4];
    IdentifiedUser.lowConfidenceThreshold.setter();

    IdentifiedUser.sharedUserId.setter();

    IdentifiedUser.personaId.setter();
    IdentifiedUser.meetsUserSessionThreshold.setter();
    IdentifiedUser.meetsPersonalRequestThreshold.setter();
    IdentifiedUser.hasActiveUserSession.setter();
    (*(v53 + 16))(v15, &v37[OBJC_IVAR___SKEUserSpecificInfo_userSessionState], v54);
    IdentifiedUser.userSessionState.setter();
    v38 = v37[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification];
    if (v38 <= 1)
    {
      v33 = v55;
      if (v37[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification])
      {
        static IdentifiedUser.Classification.known.getter();
      }

      else
      {
        static IdentifiedUser.Classification.confident.getter();
      }
    }

    else
    {
      v33 = v55;
      if (v38 == 2)
      {
        static IdentifiedUser.Classification.unsure1.getter();
      }

      else if (v38 == 3)
      {
        static IdentifiedUser.Classification.unsureN.getter();
      }

      else
      {
        static IdentifiedUser.Classification.unknown.getter();
      }
    }

    IdentifiedUser.voiceConfidenceClassification.setter();
  }

  if (v26)
  {
    v39 = v26;
    v40 = [v39 iCloudAltDSID];
    if (v40)
    {
      v41 = v40;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    IdentifiedUser.iCloudAltDSID.setter();
    v42 = [v39 homeUserId];
    if (v42)
    {
      v43 = v42;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    IdentifiedUser.homeUserID.setter();
    IdentifiedUser.sharedUserId.getter();
    if (v44)
    {
    }

    else
    {
      v45 = [v39 sharedUserId];
      if (v45)
      {
        v46 = v45;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      IdentifiedUser.sharedUserId.setter();
    }

    v47 = v39;
    IdentifiedUser.sharedUserInfo.setter();

    (*(v35 + 8))(v33, v50);
  }

  else
  {
    (*(v35 + 8))(v33, v50);
  }

  v48 = v52;
  (*(v57 + 32))(v52, v22, v27);
  return (*(v57 + 56))(v48, 0, 1, v27);
}

uint64_t partial apply for closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);

  return closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(a1, v4, v5, v6);
}

uint64_t closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 80) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for UserInputResult(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), 0, 0);
}

uint64_t protocol witness for Conversational.accept(request:) in conformance Conversation(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.accept(request:)(a1, a2);
}

uint64_t Conversation.accept(request:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v3[20] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for Conversation.State(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v2, 0);
}

uint64_t Conversation.State.assertReady(function:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  outlined init with copy of Conversation.State(v3, v18 - v8, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of Conversation.State(v9, type metadata accessor for Conversation.State);
  if (EnumCaseMultiPayload == 5)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    strcpy(v18, "Cannot call ");
    BYTE5(v18[1]) = 0;
    HIWORD(v18[1]) = -5120;
    v11 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v11);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7E5A0);
    v12 = v18[0];
    v13 = v18[1];
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
  }

  else
  {
    outlined init with copy of Conversation.State(v3, v6, type metadata accessor for Conversation.State);
    v14 = swift_getEnumCaseMultiPayload();
    result = outlined destroy of Conversation.State(v6, type metadata accessor for Conversation.State);
    if (v14 == 4)
    {
      return result;
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x1E12A1580](0x6320746F6E6E6143, 0xEC000000206C6C61);
    v16 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v16);

    MEMORY[0x1E12A1580](0xD00000000000002BLL, 0x80000001DCA7E570);
    v12 = v18[0];
    v13 = v18[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  }

  swift_allocError();
  *v17 = v12;
  v17[1] = v13;
  return swift_willThrow();
}

char *initializeWithCopy for SiriRequestIdentities(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for IdentifiedUser();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  if (v8(&a2[v10], 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

uint64_t destroy for SiriRequestIdentities(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiedUser();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v7 = *(a2 + 20);
  if (!v6(a1 + v7, 1, v4))
  {
    (*(v5 + 8))(a1 + v7, v4);
  }
}

void *initializeBufferWithCopyOfBuffer for SiriKitBiomeDonator.DonationEvent(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t destroy for SiriKitBiomeDonator.DonationEvent(id *a1)
{
}

uint64_t FlowAgent.on(input:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for FlowTraceEvent();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FlowAgent.on(input:), v1, 0);
}

uint64_t partial apply for closure #1 in FlowAgent.on(input:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in FlowAgent.on(input:)(a1, v5, v4);
}

uint64_t closure #1 in FlowAgent.on(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for OSSignpostID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.on(input:), 0, 0);
}

uint64_t destroy for ConversationHelperInput(id *a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);

  v5 = type metadata accessor for RemoteConversationTurnData(0);
  v6 = v5[6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(&v4[v6], 1, v7))
  {
    (*(v8 + 8))(&v4[v6], v7);
  }

  v10 = v5[7];
  v11 = type metadata accessor for SessionConfiguration();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v4[v10], 1, v11))
  {
    (*(v12 + 8))(&v4[v10], v11);
  }

  v13 = v5[9];
  if (!v9(&v4[v13], 1, v7))
  {
    (*(v8 + 8))(&v4[v13], v7);
  }

  v14 = &v4[v5[13]];
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v14, v15);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1DC75AF54()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t partial apply for closure #3 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
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

  return closure #3 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #3 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(a3, 1, a4, a5 + v13, a6, a7, 0);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for RemoteConversationClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v18 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14SiriKitRuntime24RemoteConversationClientC_Tt1g5(v7, result + 1);
      v19 = *(v18 + 16);
      if (*(v18 + 24) <= v19)
      {
        specialized _NativeSet.resize(capacity:)(v19 + 1);
      }

      specialized _NativeSet._unsafeInsertNew(_:)(v20, v18);

      *v3 = v18;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v6 + 48) + 8 * v12);
      v15 = *(v14 + 112) == *(a2 + 112) && *(v14 + 120) == *(a2 + 120);
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for RemoteConversationClient();
    do
    {
      v11 = *(*(v8 + 48) + 8 * a2);
      if (*(v11 + 112) == *(v5 + 112) && *(v11 + 120) == *(v5 + 120))
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1DC75C148()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.prepare(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.prepare(bridge:)(a1, a2, a3, v9, v8);
}

uint64_t closure #1 in RemoteConversationClient.prepare(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.prepare(bridge:), 0, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.prepare(bridge:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  ObjectType = swift_getObjectType();
  v13 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a5);
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in RemoteConversationClient.prepare(bridge:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_138;
  v16 = _Block_copy(aBlock);

  [a2 prepareWithBridge:v13 reply:v16];
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1)
{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR, specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:));
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return Optional<A>.encode(to:)();
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, &_s7SiriCam0B5ParseOSgMd, &_s7SiriCam0B5ParseOSgMR, specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:));
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  return Optional<A>.encode(to:)();
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, &_sSiSgMd, &_sSiSgMR, MEMORY[0x1E69E6538]);
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, &_sSdSgMd, &_sSdSgMR, MEMORY[0x1E69E63C0]);
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1);
}

uint64_t lazy protocol witness table accessor for type Parse and conformance Parse(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DecisionEngineCurareStream.insert(jsonStr:interactionId:)(Swift::String jsonStr, Swift::String interactionId)
{
  object = interactionId._object;
  countAndFlagsBits = interactionId._countAndFlagsBits;
  v5 = jsonStr._object;
  v6 = jsonStr._countAndFlagsBits;
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = objc_allocWithZone(MEMORY[0x1E699C0D0]);
  v8 = MEMORY[0x1E12A1410](v6, v5);
  v9 = MEMORY[0x1E12A1410](countAndFlagsBits, object);
  v10 = [v7 initWithJsonStr:v8 interactionId:v9 dataVersion:0];

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v13 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
  v14 = MEMORY[0x1E12A1410](v12, v11);
  v15 = [v13 initWithStreamId_];

  if (!v15)
  {
    __break(1u);
  }

  v19[0] = 0;
  v16 = [v15 insert:v10 error:v19];

  if (v16)
  {
    v17 = v19[0];
  }

  else
  {
    v18 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t @objc ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = one-time initialization token for shared;
  v13 = a3;
  swift_retain_n();
  v14 = v13;
  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v17);
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:), v6, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.flowPluginWillExecute(flowPluginInfo:)()
{
  v1 = v0[6];
  v2 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 96))(v1, ObjectType, v2);
  v4 = v0[1];

  return v4();
}

void RunSiriKitExecutorProcessorExecutionDelegate.flowPluginWillExecute(flowPluginInfo:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 624))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_1DC659000, v5, v6, "RunSiriKitExecutorProcessor already released, ignoring flowPluginWillExecute of %@", v7, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

void RunSiriKitExecutorProcessor.flowPluginWillExecute(flowPluginInfo:)(void *a1)
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
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1DC659000, v6, v7, "Received FlowPluginInfo: %@", v8, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v11 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = v5;
  v5;

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled) == 1)
  {
    MEMORY[0x1EEE9AC00](v13);
    v14 = objc_allocWithZone(type metadata accessor for FlowPluginInfoMessage());
    v15 = FlowPluginInfoMessage.init(build:)();
    if (v15)
    {
      v16 = v15;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher + 24));
      dispatch thunk of MessagePublishing.postMessage(_:)();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1DC659000, v17, v18, "Posted FlowPluginInfo message to the bus", v19, 2u);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }
    }

    else
    {
      v17 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1DC659000, v17, v20, "Could not init FlowPluginInfoMessage", v21, 2u);
        MEMORY[0x1E12A2F50](v21, -1, -1);
      }
    }
  }
}

void RecentDialogTracker.handleEndRequest(sessionState:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId + 8);
  if (v2)
  {
    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestHasTrackedDialogs) == 1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime19RecentDialogTracker_currentRequestId);
      v5 = one-time initialization token for conversationBridge;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.conversationBridge);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v15 = v10;
        *v9 = 136315138;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v2, &v15);
        _os_log_impl(&dword_1DC659000, v7, v8, "RecentDialogTracker: requesting session snapshot for request %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1E12A2F50](v10, -1, -1);
        MEMORY[0x1E12A2F50](v9, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of ConversationSessionState.createSnapshot(requestId:)();
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v12, "RecentDialogTracker: handleEndRequest called when currentRequestId is not set", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }
}

uint64_t ConversationRequestProcessorTurnState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v4 = type metadata accessor for InputOrigin();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  outlined consume of ConversationRequestProcessorTurnState.SpeechState(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState + 8));

  return swift_deallocClassInstance();
}

void outlined consume of ConversationRequestProcessorTurnState.SpeechState(unint64_t a1, void *a2)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t ServerFallbackCapableRequestProcessor.__deallocating_deinit()
{
  v0 = ConversationRequestProcessor.deinit();

  return swift_deallocClassInstance();
}

char *ConversationRequestProcessor.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  v1 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined consume of ConversationRequestProcessor.State(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state + 8), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient));
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v4 = type metadata accessor for UserID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator));

  v5 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v6 = type metadata accessor for SessionConfiguration();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v8 = type metadata accessor for UserSessionState();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t ConcurrentTaskPool.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MultiUserContextUpdater.addContextUpdater(forUserId:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationBridge);
  outlined init with copy of UserID?(a1, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = v4;
    v22 = v21;
    v44[0] = v21;
    *v20 = 136315138;
    outlined init with copy of UserID?(v15, v12);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v44);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1DC659000, v17, v18, "Creating ContextUpdater for userId: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v27 = v22;
    v4 = v41;
    MEMORY[0x1E12A2F50](v27, -1, -1);
    v28 = v20;
    v5 = v40;
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  }

  v29 = (*(*v2 + 328))(a1);
  outlined init with copy of UserID?(a1, v9);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v30 = *(*v2 + 216);

    v30(v31);
  }

  else
  {
    v32 = v42;
    (*(v5 + 32))(v42, v9, v4);
    v33 = v4;
    v34 = *(*v2 + 200);

    v35 = v34(v44);
    v37 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v37;
    *v37 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v32, isUniquelyReferenced_nonNull_native);
    *v37 = v43;
    v35(v44, 0);
    (*(v5 + 8))(v32, v33);
  }

  return v29;
}

char *MultiUserContextUpdater.makeContextUpdater(userId:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v25 = &v24 - v4;
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 2), v29);
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 7), v28);
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 12), v27);
  v6 = v1[17];
  v7 = v1[18];
  v8 = v1[19];
  v9 = v1[20];
  v10 = v1[21];
  v24 = v1[22];
  v11 = v1[23];
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 24), v26);
  v12 = v1[29];
  outlined init with copy of UserID?(a1, v5);
  type metadata accessor for ContextUpdater(0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 30) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = 0;
  *(v13 + 33) = v14;
  *(v13 + 35) = 0;
  *(v13 + 36) = 0;
  *(v13 + 34) = v14;
  v15 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  v16 = type metadata accessor for UserID();
  (*(*(v16 - 8) + 56))(&v13[v15], 1, 1, v16);
  *&v13[OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints] = v14;
  outlined init with copy of ReferenceResolutionClientProtocol(v29, (v13 + 16));
  outlined init with copy of ReferenceResolutionClientProtocol(v28, (v13 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol(v27, (v13 + 96));
  *(v13 + 17) = v6;
  *(v13 + 18) = v7;
  *(v13 + 19) = v8;
  *(v13 + 20) = v9;
  v17 = v24;
  *(v13 + 21) = v10;
  *(v13 + 22) = v17;
  *(v13 + 23) = v11;
  outlined init with copy of ReferenceResolutionClientProtocol(v26, (v13 + 192));
  *(v13 + 31) = v12;
  type metadata accessor for SessionStateContextKeysManager();
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v18[2] = v19;
  swift_unknownObjectRetain();

  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(v14);
  v21 = MEMORY[0x1E69E7CD0];
  v18[3] = v20;
  v18[4] = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  *(v13 + 29) = v18;
  v22 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  outlined assign with take of UserID?(v25, &v13[v22]);
  swift_endAccess();
  return v13;
}

uint64_t type metadata accessor for ContextUpdater(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContextUpdater;
  if (!type metadata singleton initialization cache for ContextUpdater)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_ptMd, &_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_ptMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v5, &_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_ptMd, &_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_ptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ConversationSessionKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of Any(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined assign with take of UserID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MultiUserContextUpdater.sharedContextUpdater.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 264) = a1;
}

uint64_t closure #1 in RemoteConversationClient.ensureReady()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.ensureReady(), 0, 0);
}

uint64_t sub_1DC75E514()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void closure #1 in closure #1 in RemoteConversationClient.ensureReady()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in RemoteConversationClient.ensureReady();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_193;
  v11 = _Block_copy(aBlock);

  [a2 ensureReadyWithReply_];
  _Block_release(v11);
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for ConversationSessionKey();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMd, &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for IntentTopic();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMd, &_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68], MEMORY[0x1E69CFD78]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

{
  v2 = v1;
  v33 = type metadata accessor for UserID();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMd, &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t closure #1 in RemoteConversationService.ensureReady(reply:)()
{
  v34 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of ReferenceResolutionClientProtocol((*(v0 + 272) + 40), v0 + 56);
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
        *v8 = 0;
        _os_log_impl(&dword_1DC659000, v6, v7, "startTurn received for conversation which is executing, ensuring ready", v8, 2u);
        MEMORY[0x1E12A2F50](v8, -1, -1);
      }

      v9 = *(v0 + 272);

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
      outlined destroy of RemoteConversationService.State(v9 + v10, type metadata accessor for SiriRequest);
LABEL_14:
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v18 = *(v0 + 40);
      v19 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
      if (one-time initialization token for ensureReadyTimeout != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for DispatchTimeInterval();
      v21 = __swift_project_value_buffer(v20, static RemoteConversationService.ensureReadyTimeout);
      v32 = (*(v19 + 16) + **(v19 + 16));
      v22 = swift_task_alloc();
      *(v0 + 288) = v22;
      *v22 = v0;
      v22[1] = closure #1 in RemoteConversationService.ensureReady(reply:);

      return v32(v21, v18, v19);
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.executor);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x80000001DCA83550, &v33);
      _os_log_impl(&dword_1DC659000, v25, v26, "No conversation is active, ignoring %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E12A2F50](v28, -1, -1);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    (*(v0 + 248))(0);
  }

  else
  {
    v11 = *(v0 + 272);

    v12 = *(v11 + 40);
    v13 = *(v11 + 56);
    *(v0 + 128) = *(v11 + 72);
    *(v0 + 96) = v12;
    *(v0 + 112) = v13;
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 96, v0 + 176, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    if (*(v0 + 200))
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 176), v0 + 136);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.executor);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1DC659000, v15, v16, "startTurn received for conversation which is awaiting input, ensuring ready", v17, 2u);
        MEMORY[0x1E12A2F50](v17, -1, -1);
      }

      v9 = *(v0 + 272);

      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 16);
      goto LABEL_14;
    }

    v29 = *(v0 + 272);
    v30 = *(v0 + 248);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    v30(0);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  v31 = *(v0 + 8);

  return v31();
}

{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = closure #1 in RemoteConversationService.ensureReady(reply:);
  }

  else
  {
    v4 = closure #1 in RemoteConversationService.ensureReady(reply:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  (*(v0 + 248))(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v1;
  v2(v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for Conversational.ensureReady(timeout:) in conformance Conversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.ensureReady(timeout:)(a1);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for ConversationSessionKey();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMd, &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for IntentTopic();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMd, &_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68], MEMORY[0x1E69CFD78]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

{
  v2 = v1;
  v36 = type metadata accessor for UserID();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMd, &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t Conversation.ensureReady(timeout:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for TimeoutError();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for ConversationCommitResult(0);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for Conversation.State(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.ensureReady(timeout:), v1, 0);
}

uint64_t Conversation.ensureReady(timeout:)()
{
  v46 = v0;
  v1 = v0[19];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v2 + v3, v1, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v5 = v0[19];
      v6 = type metadata accessor for Conversation.State;
    }

    else
    {
      v12 = v0[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);

      v6 = type metadata accessor for SiriRequest;
      v5 = v12;
    }

    outlined destroy of Conversation.State(v5, v6);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.executor);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[18];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44 = v18;
      *v17 = 136315138;
      outlined init with copy of Conversation.State(v2 + v3, v16, type metadata accessor for Conversation.State);
      v19 = Conversation.State.description.getter();
      v21 = v20;
      outlined destroy of Conversation.State(v16, type metadata accessor for Conversation.State);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v44);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v14, v15, "[Conversation] ensureReady can only be called for commited conversation, not state %s.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v23 = v0[18];
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(71);
    MEMORY[0x1E12A1580](0xD000000000000044, 0x80000001DCA7E4D0);
    outlined init with copy of Conversation.State(v2 + v3, v23, type metadata accessor for Conversation.State);
    v24 = Conversation.State.description.getter();
    v26 = v25;
    outlined destroy of Conversation.State(v23, type metadata accessor for Conversation.State);
    MEMORY[0x1E12A1580](v24, v26);

    MEMORY[0x1E12A1580](46, 0xE100000000000000);
    v27 = v44;
    v28 = v45;
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.executor);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1DC659000, v8, v9, "Conversation ensured Ready.", v10, 2u);
        MEMORY[0x1E12A2F50](v10, -1, -1);
      }

      v11 = v0[1];
      goto LABEL_26;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.executor);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DC659000, v38, v39, "[Conversation] Conversation was cancelled and couldn't be ready again.", v40, 2u);
      MEMORY[0x1E12A2F50](v40, -1, -1);
    }

    v44 = _typeName(_:qualified:)();
    v45 = v41;
    MEMORY[0x1E12A1580](0x6C6C65636E616320, 0xEB000000002E6465);
    v27 = v44;
    v28 = v45;
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
LABEL_25:
    swift_allocError();
    *v42 = v27;
    v42[1] = v28;
    swift_willThrow();

    v11 = v0[1];
LABEL_26:

    return v11();
  }

  v29 = v0[11];
  v30 = *v0[19];
  v31 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  v0[20] = v30;
  v0[21] = v31;
  swift_beginAccess();
  *(v29 + v31) = 1;

  v32 = DispatchTimeInterval.seconds.getter();

  v33 = swift_task_alloc();
  v0[22] = v33;
  *v33 = v0;
  v33[1] = Conversation.ensureReady(timeout:);
  v35 = v0[15];
  v34 = v0[16];
  v36.n128_f64[0] = v32;

  return MEMORY[0x1EEE40F70](v34, &async function pointer to partial apply for closure #1 in Conversation.ensureReady(timeout:), v30, v35, v36);
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = Conversation.ensureReady(timeout:);
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 88);
    outlined destroy of Conversation.State(v5, type metadata accessor for ConversationCommitResult);

    v4 = Conversation.ensureReady(timeout:);
    v3 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  *(v0[11] + v0[21]) = 0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Conversation ensured Ready.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[1];

  return v5();
}

{
  v30 = v0;
  v1 = v0[23];

  v0[8] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "[Conversation] Failed to ensure conversation is ready to handle next request within a time limit.\nMostly due to long running execution or flow forgets to call completion.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v7 = v0[23];

    lazy protocol witness table accessor for type TimedOutError and conformance TimedOutError();
    swift_allocError();
    *v8 = 0xD00000000000009BLL;
    v8[1] = 0x80000001DCA7E430;
    swift_willThrow();

    v9 = v0[1];
  }

  else
  {
    v10 = &unk_1EE159000;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = v0[23];
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[23];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      v0[9] = v17;
      v20 = v17;
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v29);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1DC659000, v14, v15, "[Conversation] error in running speculation/commit task while ensuring the runtime is ready (will ignore): %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      v24 = v18;
      v10 = &unk_1EE159000;
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    else
    {
    }

    *(v0[11] + v0[21]) = 0;
    if (v10[389] != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static Logger.executor);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v25, v26, "Conversation ensured Ready.", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v9 = v0[1];
  }

  return v9();
}