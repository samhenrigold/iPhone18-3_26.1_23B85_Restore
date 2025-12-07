void *RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1[3];
  v13 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v14);
  v17 = a4[3];
  v16 = a4[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v19 = specialized RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v15, a2, a3, v18, a5, a6, a7, a8, a9, v23, v14, v17, v13, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

uint64_t RemoteConversationService.warmup(refId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "warmup(refId:reply:)", 20, 2);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static ConversationActor.shared;
  v18 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v16, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v5;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in RemoteConversationService.warmup(refId:reply:), v19);
}

uint64_t RemoteConversationService.canHandle(inputData:rcId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v26 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "canHandle(inputData:rcId:reply:)", 32, 2);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  outlined copy of Data._Representation(a1, a2);
  v18 = one-time initialization token for shared;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = static ConversationActor.shared;
  v21 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v19, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a5;
  v22[7] = a6;
  v23 = v26;
  v22[8] = v7;
  v22[9] = v23;
  v22[10] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:), v22);
}

uint64_t RemoteConversationService.cancel(cancellationReason:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "cancel(cancellationReason:reply:)", 33, 2);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = one-time initialization token for shared;

  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static ConversationActor.shared;
  v17 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v15, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v4;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a1;
  v18[8] = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in RemoteConversationService.cancel(cancellationReason:reply:), v18);
}

uint64_t RemoteConversationService.reset(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, a3, a4, 2);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = one-time initialization token for shared;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = static ConversationActor.shared;
  v21 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v19, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = v10;
  v22[5] = a1;
  v22[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, a6, v22);
}

uint64_t RemoteConversationService.accept(inputData:speechData:reply:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "accept(inputData:speechData:reply:)", 35, 2);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  outlined copy of Data._Representation(a1, a2);
  v17 = one-time initialization token for shared;

  v19 = a3;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = static ConversationActor.shared;
  v21 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v18, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a4;
  v22[7] = a5;
  v22[8] = v6;
  v22[9] = v19;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v22);
}

uint64_t RemoteConversationService.prepare(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, a4, a5, 2);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = one-time initialization token for shared;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = static ConversationActor.shared;
  v22 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v20, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v11;
  v23[5] = a2;
  v23[6] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, a7, v23);
}

uint64_t RemoteConversationService.drainAsyncWork(reply:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = one-time initialization token for shared;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static ConversationActor.shared;
  v12 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v10, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v2;
  v13[5] = a1;
  v13[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in RemoteConversationService.drainAsyncWork(reply:), v13);
}

uint64_t ConversationActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static ConversationActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t ConversationActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance ConversationActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance ConversationActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ConversationActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t one-time initialization function for ensureReadyTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static RemoteConversationService.ensureReadyTimeout);
  *__swift_project_value_buffer(v0, static RemoteConversationService.ensureReadyTimeout) = 500;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t RemoteConversationService.turnDataProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_turnDataProvider);

  return v1;
}

void *RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a6;
  v31 = a2;
  v32 = a3;
  v14 = a1[3];
  v29 = a1[4];
  v30 = a9;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = a4[3];
  v21 = a4[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v20);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  v27 = specialized RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v18, v31, v32, v25, a5, v34, a7, a8, v30, v33, v14, v20, v29, v21);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t closure #1 in RemoteConversationService.warmup(refId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.warmup(refId:reply:), v9, 0);
}

uint64_t closure #1 in RemoteConversationService.warmup(refId:reply:)()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v2 = dispatch thunk of FlowPlugin.warmup(refId:)();
  v1(v2);
  v3 = v0[1];

  return v3();
}

uint64_t RemoteConversationService.FlowAndInputRegistry.register(flow:input:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v12 + 16))(v14, a4, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 64);
  v18 = type metadata accessor for Input();
  (*(*(v18 - 8) + 16))(v10, a2, v18);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, &v10[v16]);
  *&v10[v17] = a3;
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v10, v14);
  return swift_endAccess();
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v12 + 16))(v14, a4, v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 64);
  v18 = type metadata accessor for Input();
  (*(*(v18 - 8) + 16))(v10, a2, v18);
  *&v10[v16] = a1;
  *&v10[v17] = a3;
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v10, v14);
  return swift_endAccess();
}

uint64_t closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[19] = swift_task_alloc();
  v7[20] = type metadata accessor for RemoteConversationService.State(0);
  v7[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.cancel(cancellationReason:reply:), v8, 0);
}

uint64_t closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)()
{
  v23 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 120);
      outlined init with take of ReferenceResolutionClientProtocol((*(v0 + 168) + 40), v0 + 16);
      SiriKitRuntimeState.invalidateCurrentTurn()();
      v6 = *(v0 + 144);
      v7 = *(v5 + 56) == 0xD000000000000016 && 0x80000001DCA86060 == *(v5 + 64);
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v6 == 4)
      {
        v8 = *(v0 + 152);
        v9 = type metadata accessor for TaskPriority();
        (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
        outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
        v10 = swift_allocObject();
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v10 + 32);
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:), v10);

        outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScPSgMd, &_sScPSgMR);
      }

      v11 = *(v0 + 168);
      v12 = *(v0 + 128);
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      v12();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      outlined destroy of RemoteConversationService.State(v11 + v13, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *(v0 + 168);

    outlined destroy of ReferenceResolutionClientProtocol?((v14 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000001DCA85980, &v22);
    _os_log_impl(&dword_1DC659000, v16, v17, "No conversation is active, ignoring %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  (*(v0 + 128))();
LABEL_17:

  v20 = *(v0 + 8);

  return v20();
}

uint64_t RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "startTurnFromCache(executionRequestId:bridge:reply:)", 52, 2);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = one-time initialization token for shared;

  swift_unknownObjectRetain();

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = static ConversationActor.shared;
  v20 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v18, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v6;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:), v21);
}

uint64_t RemoteConversationService.FlowAndInputRegistry.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = v1;
  return result;
}

uint64_t closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[127] = v20;
  v8[126] = a8;
  v8[125] = a7;
  v8[124] = a6;
  v8[123] = a5;
  v8[122] = a4;
  v9 = type metadata accessor for DispatchTimeInterval();
  v8[128] = v9;
  v8[129] = *(v9 - 8);
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v10 = type metadata accessor for Parse();
  v8[133] = v10;
  v8[134] = *(v10 - 8);
  v8[135] = swift_task_alloc();
  v8[136] = swift_task_alloc();
  v8[137] = swift_task_alloc();
  v8[138] = swift_task_alloc();
  v8[139] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
  v8[140] = swift_task_alloc();
  v8[141] = swift_task_alloc();
  v8[142] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21NamedParseTransformerVSgMd, &_s11SiriKitFlow21NamedParseTransformerVSgMR);
  v8[143] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMR);
  v8[144] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGMR);
  v8[145] = v11;
  v8[146] = *(v11 - 8);
  v8[147] = swift_task_alloc();
  v12 = type metadata accessor for FlowTraceEvent();
  v8[148] = v12;
  v8[149] = *(v12 - 8);
  v8[150] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v8[151] = v13;
  v8[152] = *(v13 - 8);
  v8[153] = swift_task_alloc();
  v14 = type metadata accessor for FlowSearchResult();
  v8[154] = v14;
  v8[155] = *(v14 - 8);
  v8[156] = swift_task_alloc();
  v15 = type metadata accessor for FlexibleExecutionSupportOptions();
  v8[157] = v15;
  v8[158] = *(v15 - 8);
  v8[159] = swift_task_alloc();
  v8[160] = swift_task_alloc();
  v8[161] = swift_task_alloc();
  v8[162] = type metadata accessor for SiriRequest(0);
  v8[163] = swift_task_alloc();
  v8[164] = swift_task_alloc();
  v8[165] = type metadata accessor for RemoteConversationService.State(0);
  v8[166] = swift_task_alloc();
  v16 = type metadata accessor for Input();
  v8[167] = v16;
  v8[168] = *(v16 - 8);
  v8[169] = swift_task_alloc();
  v8[170] = swift_task_alloc();
  v8[171] = swift_task_alloc();
  v8[172] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static ConversationActor.shared;
  v8[173] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v17, 0);
}

uint64_t closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)()
{
  v203 = v0;
  v1 = v0;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0110]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v4 = v0[172];
  v5 = v1[171];
  v6 = v1[168];
  v7 = v1[167];
  v8 = v1[166];
  v9 = v1[126];

  (*(v6 + 32))(v4, v5, v7);
  v10 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v9 + v10, v8, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = v1[166];
      v13 = v1[164];
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol(v12, (v1 + 92));
      outlined init with take of ReferenceResolutionClientProtocol((v12 + 40), (v1 + 97));
      outlined init with take of SiriRequest(v12 + v14, v13, type metadata accessor for SiriRequest);
      v15 = v1[100];
      v16 = v1[101];
      __swift_project_boxed_opaque_existential_1(v1 + 97, v15);
      v200 = (*(v16 + 72) + **(v16 + 72));
      v17 = swift_task_alloc();
      v1[174] = v17;
      *v17 = v1;
      v17[1] = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
      v18 = v1[160];

      return v200(v18, v15, v16);
    }

    v27 = v1[172];
    v28 = v1[168];
    v29 = v1[167];
    v30 = v1[124];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    v31 = swift_allocError();
    *v32 = 0xD000000000000035;
    v32[1] = 0x80000001DCA85DE0;
    v33 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v31);

    v30(v33);
    (*(v28 + 8))(v27, v29);
    goto LABEL_2;
  }

  v19 = v1[166];

  outlined init with take of ReferenceResolutionClientProtocol(v19, (v1 + 7));
  v20 = *(v19 + 72);
  v21 = *(v19 + 56);
  *(v1 + 6) = *(v19 + 40);
  *(v1 + 7) = v21;
  v1[16] = v20;
  outlined init with copy of ReferenceResolutionClientProtocol?((v1 + 12), (v1 + 27), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  v22 = v1[30];
  if (v22)
  {
    outlined init with take of ReferenceResolutionClientProtocol((v1 + 27), (v1 + 22));
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
      _os_log_impl(&dword_1DC659000, v24, v25, "accept() sending input to active conversation", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    outlined init with take of ReferenceResolutionClientProtocol(v1 + 11, (v1 + 17));
    goto LABEL_45;
  }

  v34 = v1[172];
  v35 = v1[153];
  v36 = v1[152];
  v194 = v1[151];
  v183 = v1[126];
  outlined destroy of ReferenceResolutionClientProtocol?((v1 + 27), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  swift_allocObject();
  v37 = SiriEnvironment.init(parent:)();
  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, 255, MEMORY[0x1E69D0010], MEMORY[0x1E69D0008]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, 255, MEMORY[0x1E69CFB28], MEMORY[0x1E69CFB20]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, 255, MEMORY[0x1E69D0098], MEMORY[0x1E69D0090]);
  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v38 = swift_task_alloc();
  v201 = v37;
  v38[2] = v37;
  v38[3] = v183;
  v38[4] = v34;
  dispatch thunk of ConversationSELFHelper.withExecutionFlowPluginFindFlowTime<A>(rcId:hypothesisId:_:)();

  (*(v36 + 8))(v35, v194);
  v39 = FlowSearchResult.flow.getter();
  if (v39)
  {
    v40 = v1[150];
    v41 = v1[149];
    v42 = v1[148];
    *v40 = v39;
    (*(v41 + 104))(v40, *MEMORY[0x1E69CFAF0], v42);
    static FlowTrace.trace(event:)();
    (*(v41 + 8))(v40, v42);
  }

  else
  {
    FlowSearchResult.actingFlow.getter();
    if (v1[40])
    {
      v43 = v1[150];
      v44 = v1[149];
      v45 = v1[148];
      outlined init with take of ReferenceResolutionClientProtocol((v1 + 37), (v1 + 32));
      outlined init with copy of ReferenceResolutionClientProtocol((v1 + 32), v43);
      (*(v44 + 104))(v43, *MEMORY[0x1E69CFAB8], v45);
      static FlowTrace.trace(event:)();
      (*(v44 + 8))(v43, v45);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 32);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?((v1 + 37), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    }
  }

  v46 = v1[143];
  FlowSearchResult.transformer.getter();
  v47 = type metadata accessor for NamedParseTransformer();
  v48 = *(v47 - 8);
  v49 = (*(v48 + 48))(v46, 1, v47);
  v50 = v1[146];
  v51 = v1[145];
  v52 = v1[144];
  v53 = v1[143];
  if (v49 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v1[143], &_s11SiriKitFlow21NamedParseTransformerVSgMd, &_s11SiriKitFlow21NamedParseTransformerVSgMR);
    (*(v50 + 56))(v52, 1, 1, v51);
  }

  else
  {
    NamedParseTransformer.resolve()();
    (*(v48 + 8))(v53, v47);
    if ((*(v50 + 48))(v52, 1, v51) != 1)
    {
      (*(v1[146] + 32))(v1[147], v1[144], v1[145]);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      __swift_project_value_buffer(v96, static Logger.executor);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_1DC659000, v97, v98, "Conversation wants to reform input", v99, 2u);
        MEMORY[0x1E12A2F50](v99, -1, -1);
      }

      v100 = v1[138];

      v101 = Transformer.transform.getter();
      Input.parse.getter();
      v101(v100);
      v102 = v1[141];
      v135 = v1[140];
      v136 = *(v1[134] + 8);
      v136(v1[138], v1[133]);

      swift_storeEnumTagMultiPayload();
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v135, v102, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v1[141], v1[142], &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMd, &_ss6ResultOy11SiriKitFlow5ParseOs5Error_pGMR);
      v137 = swift_getEnumCaseMultiPayload();
      if (v137 == 1)
      {
        v138 = *v1[142];
        v139 = v138;
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v202[0] = v143;
          *v142 = 136315138;
          v1[121] = v138;
          v144 = v138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v145 = String.init<A>(describing:)();
          v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, v202);

          *(v142 + 4) = v147;
          _os_log_impl(&dword_1DC659000, v140, v141, "Conversation wants to reform input, but got an error in transformation: %s", v142, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v143);
          MEMORY[0x1E12A2F50](v143, -1, -1);
          MEMORY[0x1E12A2F50](v142, -1, -1);
        }

        v148 = v1[168];
        v192 = v1[167];
        v198 = v1[172];
        v149 = v1[155];
        v185 = v1[154];
        v189 = v1[156];
        v150 = v1[147];
        v151 = v1[146];
        v152 = v1[145];
        v153 = v1[124];
        v154 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v138);
        v153();

        (*(v151 + 8))(v150, v152);
        (*(v149 + 8))(v189, v185);
        outlined destroy of ReferenceResolutionClientProtocol?((v1 + 12), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
        (*(v148 + 8))(v198, v192);
      }

      else
      {
        v199 = v1[172];
        v155 = v1[169];
        v156 = v1[168];
        v179 = v1[167];
        v190 = v1[154];
        v193 = v1[156];
        v182 = v1[147];
        v186 = v1[155];
        v157 = v1[146];
        v181 = v1[145];
        v158 = v1[137];
        v159 = v1[136];
        v160 = v1[134];
        v161 = v1[133];
        v177 = v1[124];
        (*(v160 + 32))(v158, v1[142], v161);
        (*(v160 + 16))(v159, v158, v161);
        Input.init(parse:)();
        v163 = specialized static FlowExtensionUserInputResultXPC.reformedInput(_:)(v155, v162);
        v177();

        v164 = *(v156 + 8);
        v164(v155, v179);
        v136(v158, v161);
        (*(v157 + 8))(v182, v181);
        (*(v186 + 8))(v193, v190);
        outlined destroy of ReferenceResolutionClientProtocol?((v1 + 12), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
        v164(v199, v179);
      }

      goto LABEL_2;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v1[144], &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMd, &_s13SiriUtilities11TransformerVy0A7KitFlow5ParseOAFGSgMR);
  FlowSearchResult.actingFlow.getter();
  if (!v1[50])
  {
    outlined destroy of ReferenceResolutionClientProtocol?((v1 + 47), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    goto LABEL_29;
  }

  outlined init with take of ReferenceResolutionClientProtocol((v1 + 47), (v1 + 42));
  if (FlowSearchResult.flow.getter())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 42);
LABEL_29:
    v54 = FlowSearchResult.flow.getter();
    if (v54)
    {
      v170 = v1 + 67;
      v55 = v1[135];
      v56 = v1[134];
      v57 = v1[133];
      v58 = v1[126];
      v59 = v54;

      Input.parse.getter();
      v60 = Parse.usoTasks.getter();
      (*(v56 + 8))(v55, v57);
      type metadata accessor for FlowPluginInfo();
      outlined init with copy of ReferenceResolutionClientProtocol(v58 + 80, (v1 + 52));
      v61 = FlowPluginInfo.__allocating_init(pluginBundle:)(v1 + 52);
      type metadata accessor for FlowAgent();
      v62 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v62 + 130) = 0;
      *(v62 + 136) = 0;
      *(v62 + 144) = 0;
      *(v62 + 112) = v59;
      *(v62 + 120) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

      dispatch thunk of AnyFlow.unbox<A>(as:)();

      v63 = v1[60] != 0;
      outlined destroy of ReferenceResolutionClientProtocol?((v1 + 57), &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
      *(v62 + 128) = v63;
      *(v62 + 129) = v63;
      *(v62 + 152) = v60;
      *(v62 + 160) = v61;
      v173 = SiriKitRuntimeState.taskService.getter();
      v64 = *(v58 + 64);
      v168 = *(v58 + 56);
      v65 = one-time initialization token for defaultTimeout;

      v169 = v64;

      if (v65 != -1)
      {
        swift_once();
      }

      v174 = v1[155];
      v175 = v1[154];
      v176 = v1[156];
      v165 = v1[152];
      v166 = v1[151];
      v66 = v1[132];
      v195 = v1[131];
      v167 = v1[130];
      v67 = v1[129];
      v68 = v1[128];
      v69 = __swift_project_value_buffer(v68, static JetsamHelper.defaultTimeout);
      v70 = *(v67 + 16);
      v172 = v66;
      v187 = v68;
      v70(v66, v69, v68);
      v71 = type metadata accessor for ServerFallbackDisablingUtils();
      v72 = swift_allocObject();
      v72[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
      v72[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
      v72[4] = 0;
      v1[65] = v71;
      v1[66] = &protocol witness table for ServerFallbackDisablingUtils;
      v1[62] = v72;
      v73 = type metadata accessor for CorrectionsUndoManager();
      v74 = swift_allocObject();
      *(v74 + 40) = 0u;
      *(v74 + 56) = 0;
      *(v74 + 24) = 0u;
      *(v74 + 16) = MEMORY[0x1E69E7CC0];
      *v170 = 0u;
      *(v1 + 69) = 0u;
      v1[71] = 0;
      swift_beginAccess();
      outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v170, v74 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
      swift_endAccess();
      v70(v195, v66, v68);
      outlined init with copy of ReferenceResolutionClientProtocol((v1 + 62), (v1 + 72));
      v1[80] = v73;
      v1[81] = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager, 255, type metadata accessor for CorrectionsUndoManager, &protocol conformance descriptor for CorrectionsUndoManager);
      v1[77] = v74;
      v171 = type metadata accessor for Conversation(0);
      v75 = swift_allocObject();
      swift_defaultActor_initialize();
      type metadata accessor for Conversation.State(0);
      swift_storeEnumTagMultiPayload();
      v76 = v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
      *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver + 8) = 0;
      swift_unknownObjectWeakInit();
      *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
      v77 = (v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
      *v77 = 12589;
      v77[1] = 0xE200000000000000;
      (*(v165 + 56))(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId, 1, 1, v166);
      *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
      *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
      type metadata accessor for InstrumentedStack(0);
      v78 = swift_allocObject();
      v78[5] = MEMORY[0x1E69E7CC8];
      v78[3] = 0;
      v78[4] = 0;
      v78[2] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
      swift_allocObject();
      swift_retain_n();

      v79 = v1;
      v80 = specialized Node.init(value:parent:)(v62, 0);
      specialized OrderedForest._push(_:)(v80);
      v81 = v80[2];
      type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
      swift_allocObject();

      v83 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v82, 0);

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v202[0] = v78[5];
      v78[5] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v83, v81, isUniquelyReferenced_nonNull_native);
      v78[5] = v202[0];
      swift_endAccess();

      v1 = v79;

      *(v75 + 112) = v78;
      v70(v167, v195, v187);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v85 = static OS_dispatch_queue.main.getter();
      type metadata accessor for JetsamHelper(0);
      v86 = swift_allocObject();
      v87 = (v86 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
      *v87 = 0;
      v87[1] = 0;
      v86[2] = 0xD000000000000023;
      v86[3] = 0x80000001DCA7E400;
      v86[4] = dispatch_semaphore_create(1);
      v86[5] = v85;
      (*(v67 + 32))(v86 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v167, v187);
      *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v86;
      swift_beginAccess();
      *(v76 + 8) = &protocol witness table for RemoteConversationService;
      swift_unknownObjectWeakAssign();
      *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v173;
      v88 = (v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
      *v88 = v168;
      v88[1] = v169;
      v89 = *(v62 + 160);
      *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v89;
      outlined init with copy of ReferenceResolutionClientProtocol((v79 + 77), v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
      outlined init with copy of ReferenceResolutionClientProtocol((v79 + 72), v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
      swift_allocObject();

      v90 = v89;
      *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
      type metadata accessor for SiriCorrectionsClientProvider();
      swift_allocObject();

      SiriCorrectionsClientProvider.init()();
      SiriEnvironment.correctionsClientProvider.setter();

      SiriEnvironment.correctionsClientProvider.getter();
      v91 = v79[80];
      v92 = v79[81];
      v93 = __swift_project_boxed_opaque_existential_1(v1 + 77, v1[80]);
      v79[85] = v91;
      v79[86] = *(v92 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v79 + 82);
      (*(*(v91 - 8) + 16))(boxed_opaque_existential_0, v93, v91);
      dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      type metadata accessor for ScopedReferenceResolutionDataProvider();
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, 255, MEMORY[0x1E69D27E0], MEMORY[0x1E69D27D8]);

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      type metadata accessor for AceServiceContextProvider();
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, 255, MEMORY[0x1E69D0068], MEMORY[0x1E69D0060]);

      dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

      dispatch thunk of AnyFlow.siriEnvironment.setter();

      __swift_destroy_boxed_opaque_existential_1Tm(v79 + 72);
      v95 = *(v67 + 8);
      v95(v195, v187);
      v95(v172, v187);
      __swift_destroy_boxed_opaque_existential_1Tm(v79 + 62);

      __swift_destroy_boxed_opaque_existential_1Tm(v79 + 77);
      v79[20] = v171;
      v79[21] = &protocol witness table for Conversation;

      v79[17] = v75;
      (*(v174 + 8))(v176, v175);
      goto LABEL_44;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    __swift_project_value_buffer(v103, static Logger.executor);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_1DC659000, v104, v105, "FlowExtension did not find a flow to handle the input", v106, 2u);
      MEMORY[0x1E12A2F50](v106, -1, -1);
    }

    v196 = v1[172];
    v107 = v1[168];
    v108 = v1[167];
    v109 = v1[156];
    v110 = v1[155];
    v111 = v1[154];
    v112 = v1[124];

    v113 = FlowSearchResult.exclude.getter();
    v114 = type metadata accessor for FlowExtensionUserInputResultXPC();
    v115 = objc_allocWithZone(v114);
    *&v115[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 1;
    *&v115[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
    *&v115[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
    v115[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = v113 & 1;
    v1[119] = v115;
    v1[120] = v114;
    v116 = objc_msgSendSuper2((v1 + 119), sel_init);
    v112();

    (*(v110 + 8))(v109, v111);
    outlined destroy of ReferenceResolutionClientProtocol?((v1 + 12), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
    (*(v107 + 8))(v196, v108);
LABEL_2:

    v2 = v1[1];

    return v2();
  }

  v188 = v1[155];
  v191 = v1[154];
  v197 = v1[156];
  v117 = v1[126];
  v119 = v1[45];
  v118 = v1[46];
  v180 = __swift_project_boxed_opaque_existential_1(v1 + 42, v119);
  v184 = type metadata accessor for EncoreConversation(0);
  v120 = v117[8];
  v178 = v117[7];
  type metadata accessor for FlowPluginInfo();
  outlined init with copy of ReferenceResolutionClientProtocol((v117 + 10), (v1 + 87));

  v121 = FlowPluginInfo.__allocating_init(pluginBundle:)(v1 + 87);
  v122 = SiriKitRuntimeState.taskService.getter();
  v123 = v117[20];

  default argument 7 of EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(v202);

  v124 = specialized EncoreConversation.__allocating_init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(v180, v178, v120, v121, v122, v117, &protocol witness table for RemoteConversationService, v123, v201, v202, v119, v118);

  v1[20] = v184;
  v1[21] = &protocol witness table for EncoreConversation;

  v1[17] = v124;
  (*(v188 + 8))(v197, v191);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 42);
LABEL_44:
  v22 = 0;
LABEL_45:
  v125 = v22 != 0;
  v127 = v1[20];
  v126 = v1[21];
  v128 = __swift_project_boxed_opaque_existential_1(v1 + 17, v127);
  v129 = swift_task_alloc();
  v1[177] = v129;
  *v129 = v1;
  v129[1] = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
  v130 = v1[172];
  v131 = v1[127];
  v132 = v1[126];
  v133 = v1[125];
  v134 = v1[124];
  v205 = v127;
  v206 = v126;

  return specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)((v1 + 7), v128, v130, v131, v125, v134, v133, v132);
}

{
  v2 = *v1;
  *(*v1 + 1400) = v0;

  v3 = *(v2 + 1384);
  if (v0)
  {
    v4 = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
  }

  else
  {
    v4 = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v58 = v0;
  v1 = v0[159];
  v2 = v0[158];
  v3 = v0[157];
  (*(v2 + 32))(v0[161], v0[160], v3);
  static FlexibleExecutionSupportOptions.inputContinuation.getter();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions, 255, MEMORY[0x1E69D00C0], MEMORY[0x1E69D00C8]);
  v4 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = v0[172];
    v6 = v0[170];
    v7 = v0[168];
    v8 = v0[167];
    v9 = v0[164];
    v10 = v0[163];
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol((v0 + 97), (v0 + 102));
    outlined init with copy of RemoteConversationService.State(v9, v10, type metadata accessor for SiriRequest);
    (*(v7 + 16))(v6, v5, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[170];
    v16 = v0[168];
    v17 = v0[167];
    v18 = v0[163];
    if (v14)
    {
      v55 = v13;
      v19 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v56;
      *v19 = 136315906;
      outlined init with copy of ReferenceResolutionClientProtocol((v0 + 102), (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14Conversational_pMd, &_s14SiriKitRuntime14Conversational_pMR);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v57);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = *v18;
      v25 = v18[1];

      outlined destroy of RemoteConversationService.State(v18, type metadata accessor for SiriRequest);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v57);

      *(v19 + 14) = v26;
      *(v19 + 22) = 2080;
      static FlexibleExecutionSupportOptions.inputContinuation.getter();
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v57);

      *(v19 + 24) = v29;
      *(v19 + 32) = 2080;
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v16 + 8))(v15, v17);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v57);

      *(v19 + 34) = v33;
      _os_log_impl(&dword_1DC659000, v12, v55, "Conversation %s for rcId: %s supports %s on %s. Running accept()", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v56, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      outlined destroy of RemoteConversationService.State(v18, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 102);
    }

    v45 = v0[164];
    v46 = *(v0[162] + 20);
    v47 = v0[100];
    v48 = v0[101];
    v49 = __swift_project_boxed_opaque_existential_1(v0 + 97, v47);
    v50 = swift_task_alloc();
    v0[176] = v50;
    *v50 = v0;
    v50[1] = closure #1 in RemoteConversationService.accept(inputData:speechData:reply:);
    v51 = v0[127];
    v52 = v0[126];
    v53 = v0[125];
    v54 = v0[124];
    v60 = v47;
    v61 = v48;

    return specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)((v0 + 92), v49, v45 + v46, v51, 1, v54, v53, v52);
  }

  else
  {
    v34 = v0[175];
    v35 = v0[164];
    v36 = v0[124];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    v37 = swift_allocError();
    *v38 = 0xD000000000000024;
    v38[1] = 0x80000001DCA85DB0;
    v39 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v37);

    v36(v39);
    outlined destroy of RemoteConversationService.State(v35, type metadata accessor for SiriRequest);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);
    if (!v34)
    {
      (*(v0[158] + 8))(v0[161], v0[157]);
    }

    v40 = v0[172];
    v41 = v0[168];
    v42 = v0[167];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
    (*(v41 + 8))(v40, v42);

    v43 = v0[1];

    return v43();
  }
}

{
  v1 = *(*v0 + 1384);

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v1, 0);
}

{
  v1 = v0[175];
  v2 = v0[164];
  v3 = v0[124];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v4 = swift_allocError();
  *v5 = 0xD000000000000024;
  v5[1] = 0x80000001DCA85DB0;
  v6 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v4);

  v3(v6);
  outlined destroy of RemoteConversationService.State(v2, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);
  if (!v1)
  {
    (*(v0[158] + 8))(v0[161], v0[157]);
  }

  v7 = v0[172];
  v8 = v0[168];
  v9 = v0[167];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(*v0 + 1384);

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v1, 0);
}

{
  v1 = v0[172];
  v2 = v0[168];
  v3 = v0[167];
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[175];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[175];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error %@ while checking if conversation supports flexible execution. Presuming it doesn't support flexible execution", v8, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[175];
  v13 = v0[164];
  v14 = v0[124];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v15 = swift_allocError();
  *v16 = 0xD000000000000024;
  v16[1] = 0x80000001DCA85DB0;
  v17 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v15);

  v14(v17);
  outlined destroy of RemoteConversationService.State(v13, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 92);
  if (!v12)
  {
    (*(v0[158] + 8))(v0[161], v0[157]);
  }

  v18 = v0[172];
  v19 = v0[168];
  v20 = v0[167];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 97);
  (*(v19 + 8))(v18, v20);

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SiriEnvironment();
  type metadata accessor for FlowSearchResult();
  return static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(void *a1)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol((a1 + 2), v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C6Plugin_pMd, &_s11SiriKitFlow0C6Plugin_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C14PluginExtended_pMd, &_s11SiriKitFlow0C14PluginExtended_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ReferenceResolutionClientProtocol(v7, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    Input.parse.getter();
    dispatch thunk of FlowPluginExtended.findFlowForX(parse:)();
    (*(v3 + 8))(v5, v2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow0C14PluginExtended_pSgMd, &_s11SiriKitFlow0C14PluginExtended_pSgMR);
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    Input.parse.getter();
    dispatch thunk of FlowPlugin.makeFlowFor(parse:)();
    (*(v3 + 8))(v5, v2);
    static FlowSearchResult.flow(_:)();
  }
}

uint64_t RemoteConversationService.makeRequestIdentities(from:)(uint64_t a1)
{
  v87 = v1;
  v2 = *(v1 + 1712);
  swift_willThrow();

  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8SAPersonCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v1 + 1720) = v4;
  v5 = *(v4 + 32);
  *(v1 + 1824) = v5;
  v6 = -1;
  v7 = -1 << v5;
  v8 = *(v4 + 64);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  *(v1 + 1728) = v3;
  v9 = v6 & v8;
  if (v9)
  {
    v10 = 0;
LABEL_8:
    *(v1 + 1744) = v10;
    *(v1 + 1736) = v9;
    v13 = *(v1 + 1560);
    v14 = __clz(__rbit64(v9)) | (v10 << 6);
    v15 = (*(v4 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v4 + 56) + 8 * v14);
    *(v1 + 1752) = v18;

    v19 = v18;
    v20 = MEMORY[0x1E12A1410](v16, v17);
    *(v1 + 1760) = v20;

    *(v1 + 336) = v1;
    *(v1 + 376) = v1 + 1296;
    *(v1 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v21 = swift_continuation_init();
    *(v1 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v1 + 944) = v21;
    *(v1 + 912) = MEMORY[0x1E69E9820];
    *(v1 + 920) = 1107296256;
    *(v1 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v1 + 936) = &block_descriptor_269;
    [v13 getSharedUserIdForHomeUserId:v20 completion:v1 + 912];

    return MEMORY[0x1EEE6DEC8](v1 + 336);
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v9 = *(v4 + 8 * v11++ + 72);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v85 = *(v1 + 1728);
    v22 = *(v1 + 1704);
    v23 = *(v1 + 1696);
    v24 = *(v1 + 1632);
    v25 = *(v1 + 1472);
    v26 = *(v1 + 1440);
    v27 = *(v1 + 1432);
    v28 = *(v1 + 1392);
    v29 = *(v28 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v84 = *(v1 + 1624);
    v30 = v29;
    v83 = v24;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v29, v24, 0, v25, v26);
    v31 = *(v28 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v82 = v23;
    v32 = v31;
    v81 = v22;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v31, v22, 0, v25, v27);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v33 = *(v1 + 1440);
    v34 = *(v1 + 1424);
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v33, v34, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v1 + 1496);
      v39 = *(v1 + 1488);
      v40 = *(v1 + 1424);
      v41 = *(v1 + 1416);
      v42 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v86[0] = v79;
      *v42 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v40, v41, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v43 = *(v38 + 48);
      if (v43(v41, 1, v39) == 1)
      {
        v44 = *(v1 + 1488);
        v45 = *(v1 + 1416);
        IdentifiedUser.init()();
        if (v43(v45, 1, v44) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v1 + 1496) + 32))(*(v1 + 1512), *(v1 + 1416), *(v1 + 1488));
      }

      v47 = *(v1 + 1512);
      v48 = *(v1 + 1496);
      v49 = *(v1 + 1488);
      v50 = *(v1 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v48 + 8))(v47, v49);
      outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v86);

      *(v42 + 4) = v54;
      _os_log_impl(&dword_1DC659000, v36, v37, "#user-session: proposedIdentityOfRecognizedUser=%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x1E12A2F50](v79, -1, -1);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    else
    {
      v46 = *(v1 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v1 + 1432), *(v1 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v1 + 1496);
      v58 = *(v1 + 1488);
      v59 = *(v1 + 1408);
      v60 = *(v1 + 1400);
      v61 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86[0] = v80;
      *v61 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v59, v60, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v62 = *(v57 + 48);
      if (v62(v60, 1, v58) == 1)
      {
        v63 = *(v1 + 1488);
        v64 = *(v1 + 1400);
        IdentifiedUser.init()();
        if (v62(v64, 1, v63) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v1 + 1496) + 32))(*(v1 + 1504), *(v1 + 1400), *(v1 + 1488));
      }

      v66 = *(v1 + 1504);
      v67 = *(v1 + 1496);
      v68 = *(v1 + 1488);
      v69 = *(v1 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v66, v68);
      outlined destroy of ReferenceResolutionClientProtocol?(v69, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v86);

      *(v61 + 4) = v73;
      _os_log_impl(&dword_1DC659000, v55, v56, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1E12A2F50](v80, -1, -1);
      MEMORY[0x1E12A2F50](v61, -1, -1);
    }

    else
    {
      v65 = *(v1 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v74 = *(v1 + 1432);
    v75 = *(v1 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v1 + 1440), v75, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v76 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v74, v75 + *(v76 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v75 + *(v76 + 24)) = v85;
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);

    v77 = *(v1 + 8);

    return v77();
  }
}

{
  v2 = v1[201];
  v3 = v1[200];
  v4 = v1[196];
  swift_willThrow();

  v1[204] = v1[199];
  v1[203] = 0;
  v5 = *(v1[174] + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v1[205] = v5;
  v6 = v1[195];
  if (v5)
  {
    v7 = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v1[206] = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v8 = &v5[v7];
    v9 = *v8;
    v10 = *(v8 + 1);
    v11 = v5;

    v12 = MEMORY[0x1E12A1410](v9, v10);
    v1[207] = v12;

    v1[74] = v1;
    v1[79] = v1 + 166;
    v1[75] = RemoteConversationService.makeRequestIdentities(from:);
    v13 = swift_continuation_init();
    v1[161] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
    v1[158] = v13;
    v1[154] = MEMORY[0x1E69E9820];
    v1[155] = 1107296256;
    v1[156] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
    v1[157] = &block_descriptor_278;
    [v6 getSharedUserInfoForSharedUserID:v12 completion:v1 + 154];
    v14 = v1 + 74;
  }

  else
  {
    v1[26] = v1;
    v1[31] = v1 + 171;
    v1[27] = RemoteConversationService.makeRequestIdentities(from:);
    v15 = swift_continuation_init();
    v1[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    v1[94] = v15;
    v1[90] = MEMORY[0x1E69E9820];
    v1[91] = 1107296256;
    v1[92] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    v1[93] = &block_descriptor_263;
    [v6 getMultiUserSettingsForRecognizedUserWithCompletion_];
    v14 = v1 + 26;
  }

  return MEMORY[0x1EEE6DEC8](v14);
}

{
  v2 = *(v1 + 1616);
  swift_willThrow();

  *(v1 + 1624) = 0u;
  v3 = *(*(v1 + 1392) + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  *(v1 + 1640) = v3;
  v4 = *(v1 + 1560);
  if (v3)
  {
    v5 = OBJC_IVAR___SKEUserSpecificInfo_userId;
    *(v1 + 1648) = OBJC_IVAR___SKEUserSpecificInfo_userId;
    v6 = &v3[v5];
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = v3;

    v10 = MEMORY[0x1E12A1410](v7, v8);
    *(v1 + 1656) = v10;

    *(v1 + 592) = v1;
    *(v1 + 632) = v1 + 1328;
    *(v1 + 600) = RemoteConversationService.makeRequestIdentities(from:);
    v11 = swift_continuation_init();
    *(v1 + 1288) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16AFSharedUserInfoCSgs5NeverOGMd, &_sSccySo16AFSharedUserInfoCSgs5NeverOGMR);
    *(v1 + 1264) = v11;
    *(v1 + 1232) = MEMORY[0x1E69E9820];
    *(v1 + 1240) = 1107296256;
    *(v1 + 1248) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?;
    *(v1 + 1256) = &block_descriptor_278;
    [v4 getSharedUserInfoForSharedUserID:v10 completion:v1 + 1232];
    v12 = v1 + 592;
  }

  else
  {
    *(v1 + 208) = v1;
    *(v1 + 248) = v1 + 1368;
    *(v1 + 216) = RemoteConversationService.makeRequestIdentities(from:);
    v13 = swift_continuation_init();
    *(v1 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22AFPersonalUserSettingsCs5Error_pGMd, &_sSccySo22AFPersonalUserSettingsCs5Error_pGMR);
    *(v1 + 752) = v13;
    *(v1 + 720) = MEMORY[0x1E69E9820];
    *(v1 + 728) = 1107296256;
    *(v1 + 736) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings;
    *(v1 + 744) = &block_descriptor_263;
    [v4 getMultiUserSettingsForRecognizedUserWithCompletion_];
    v12 = v1 + 208;
  }

  return MEMORY[0x1EEE6DEC8](v12);
}

{
  v2 = v1[210];
  v3 = v1[209];
  v4 = v1[205];
  swift_willThrow();

  v1[213] = v1[208];
  v1[212] = 0;
  v5 = v1[195];
  v1[34] = v1;
  v1[39] = v1 + 169;
  v1[35] = RemoteConversationService.makeRequestIdentities(from:);
  v6 = swift_continuation_init();
  v1[113] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8SAPersonCGs5Error_pGMd, &_sSccySDySSSo8SAPersonCGs5Error_pGMR);
  v1[110] = v6;
  v1[106] = MEMORY[0x1E69E9820];
  v1[107] = 1107296256;
  v1[108] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [String : SAPerson];
  v1[109] = &block_descriptor_266;
  [v5 homeUserIdToNames_];

  return MEMORY[0x1EEE6DEC8](v1 + 34);
}

{
  v2 = *(v1 + 1688);
  swift_willThrow();

  *(v1 + 1696) = 0u;
  v3 = *(v1 + 1560);
  *(v1 + 272) = v1;
  *(v1 + 312) = v1 + 1352;
  *(v1 + 280) = RemoteConversationService.makeRequestIdentities(from:);
  v4 = swift_continuation_init();
  *(v1 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8SAPersonCGs5Error_pGMd, &_sSccySDySSSo8SAPersonCGs5Error_pGMR);
  *(v1 + 880) = v4;
  *(v1 + 848) = MEMORY[0x1E69E9820];
  *(v1 + 856) = 1107296256;
  *(v1 + 864) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [String : SAPerson];
  *(v1 + 872) = &block_descriptor_266;
  [v3 homeUserIdToNames_];

  return MEMORY[0x1EEE6DEC8](v1 + 272);
}

{
  v86 = v1;
  v2 = *(v1 + 1768);
  v3 = *(v1 + 1760);
  v4 = *(v1 + 1752);
  v5 = v2;
  swift_willThrow();

  v6 = *(v1 + 1744);
  v7 = (*(v1 + 1736) - 1) & *(v1 + 1736);
  if (v7)
  {
    v4 = *(v1 + 1720);
LABEL_7:
    *(v1 + 1744) = v6;
    *(v1 + 1736) = v7;
    v9 = *(v1 + 1560);
    v10 = __clz(__rbit64(v7)) | (v6 << 6);
    v11 = v4[7];
    v12 = (v4[6] + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v11 + 8 * v10);
    *(v1 + 1752) = v15;

    v16 = v15;
    v17 = MEMORY[0x1E12A1410](v13, v14);
    *(v1 + 1760) = v17;

    *(v1 + 336) = v1;
    *(v1 + 376) = v1 + 1296;
    *(v1 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v18 = swift_continuation_init();
    *(v1 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v1 + 944) = v18;
    *(v1 + 912) = MEMORY[0x1E69E9820];
    *(v1 + 920) = 1107296256;
    *(v1 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v1 + 936) = &block_descriptor_269;
    [v9 getSharedUserIdForHomeUserId:v17 completion:v1 + 912];

    return MEMORY[0x1EEE6DEC8](v1 + 336);
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      v4 = *(v1 + 1720);
      if (v8 >= (((1 << *(v1 + 1824)) + 63) >> 6))
      {
        break;
      }

      v7 = v4[v8 + 8];
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    v84 = *(v1 + 1728);
    v19 = *(v1 + 1704);
    v20 = *(v1 + 1696);
    v21 = *(v1 + 1632);
    v22 = *(v1 + 1472);
    v23 = *(v1 + 1440);
    v24 = *(v1 + 1432);
    v25 = *(v1 + 1392);
    v26 = *(v25 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v83 = *(v1 + 1624);
    v27 = v26;
    v82 = v21;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v26, v21, 0, v22, v23);
    v28 = *(v25 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v5 = v20;
    v29 = v28;
    v4 = v19;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v28, v19, 0, v22, v24);
    if (one-time initialization token for executor == -1)
    {
      goto LABEL_11;
    }

LABEL_29:
    swift_once();
LABEL_11:
    v30 = *(v1 + 1440);
    v31 = *(v1 + 1424);
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v30, v31, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v80 = v4;
    v81 = v5;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v1 + 1496);
      v36 = *(v1 + 1488);
      v37 = *(v1 + 1424);
      v38 = *(v1 + 1416);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v85[0] = v40;
      *v39 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v37, v38, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v41 = *(v35 + 48);
      v78 = v40;
      if (v41(v38, 1, v36) == 1)
      {
        v42 = *(v1 + 1488);
        v43 = *(v1 + 1416);
        IdentifiedUser.init()();
        if (v41(v43, 1, v42) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v1 + 1496) + 32))(*(v1 + 1512), *(v1 + 1416), *(v1 + 1488));
      }

      v45 = *(v1 + 1512);
      v46 = *(v1 + 1496);
      v47 = *(v1 + 1488);
      v48 = *(v1 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v46 + 8))(v45, v47);
      outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v85);

      *(v39 + 4) = v52;
      _os_log_impl(&dword_1DC659000, v33, v34, "#user-session: proposedIdentityOfRecognizedUser=%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1E12A2F50](v78, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);

      v4 = v80;
      v5 = v81;
    }

    else
    {
      v44 = *(v1 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v1 + 1432), *(v1 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v1 + 1496);
      v56 = *(v1 + 1488);
      v57 = *(v1 + 1408);
      v58 = *(v1 + 1400);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v85[0] = v60;
      *v59 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v57, v58, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v61 = *(v55 + 48);
      v79 = v60;
      if (v61(v58, 1, v56) == 1)
      {
        v62 = *(v1 + 1488);
        v63 = *(v1 + 1400);
        IdentifiedUser.init()();
        if (v61(v63, 1, v62) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v1 + 1496) + 32))(*(v1 + 1504), *(v1 + 1400), *(v1 + 1488));
      }

      v65 = *(v1 + 1504);
      v66 = *(v1 + 1496);
      v67 = *(v1 + 1488);
      v68 = *(v1 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      (*(v66 + 8))(v65, v67);
      outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v85);

      *(v59 + 4) = v72;
      _os_log_impl(&dword_1DC659000, v53, v54, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x1E12A2F50](v79, -1, -1);
      MEMORY[0x1E12A2F50](v59, -1, -1);
    }

    else
    {
      v64 = *(v1 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v73 = *(v1 + 1432);
    v74 = *(v1 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v1 + 1440), v74, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v75 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v73, v74 + *(v75 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v74 + *(v75 + 24)) = v84;
    (*(*(v75 - 8) + 56))(v74, 0, 1, v75);

    v76 = *(v1 + 8);

    return v76();
  }
}

{
  v126 = v1;
  v2 = *(v1 + 1816);
  v3 = *(v1 + 1808);
  swift_willThrow();

  v4 = *(v1 + 1800);
  v5 = *(v1 + 1752);
  v6 = v4;
  static Locale.autoupdatingCurrent.getter();
  IdentifiedUser.init()();
  v7 = v5;
  IdentifiedUser.person.setter();
  v8 = *(v1 + 1800);
  v9 = *(v1 + 1464);
  v10 = *(v1 + 1456);
  v11 = *(v1 + 1448);
  IdentifiedUser.preferredTemperatureUnitName.setter();
  IdentifiedUser.extractLocale(userSpecificInfo:settings:defaultLocale:)(0, 0, v11);
  (*(v9 + 56))(v11, 0, 1, v10);
  IdentifiedUser.locale.setter();
  v12 = [v8 iCloudAltDSID];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = *(v1 + 1800);
  IdentifiedUser.iCloudAltDSID.setter();
  v15 = [v14 homeUserId];
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  IdentifiedUser.homeUserID.setter();
  IdentifiedUser.sharedUserId.getter();
  if (v17)
  {
  }

  else
  {
    v18 = [*(v1 + 1800) sharedUserId];
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    IdentifiedUser.sharedUserId.setter();
  }

  v117 = *(v1 + 1752);
  v120 = *(v1 + 1544);
  v20 = *(v1 + 1536);
  v21 = *(v1 + 1528);
  v122 = *(v1 + 1520);
  v22 = *(v1 + 1496);
  v23 = *(v1 + 1488);
  v24 = *(v1 + 1480);
  v25 = *(v1 + 1464);
  v26 = *(v1 + 1456);
  v27 = *(v1 + 1800);
  IdentifiedUser.sharedUserInfo.setter();

  (*(v25 + 8))(v24, v26);
  v28 = *(v22 + 32);
  v28(v20, v21, v23);
  v118 = v28;
  v28(v120, v20, v23);
  (*(v22 + 16))(v122, v120, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v1 + 1728);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_42:
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
  }

  v33 = *(v1 + 1800);
  v34 = *(v1 + 1544);
  v35 = *(v1 + 1520);
  v36 = *(v1 + 1496);
  v37 = *(v1 + 1488);

  (*(v36 + 8))(v34, v37);
  *(v30 + 2) = v32 + 1;
  v118(&v30[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32], v35, v37);
  v38 = *(v1 + 1744);
  v39 = *(v1 + 1736);
  *(v1 + 1728) = v30;
  v40 = (v39 - 1) & v39;
  if (v40)
  {
    v41 = *(v1 + 1720);
LABEL_19:
    *(v1 + 1744) = v38;
    *(v1 + 1736) = v40;
    v43 = *(v1 + 1560);
    v44 = __clz(__rbit64(v40)) | (v38 << 6);
    v45 = *(v41 + 56);
    v46 = (*(v41 + 48) + 16 * v44);
    v47 = *v46;
    v48 = v46[1];
    v49 = *(v45 + 8 * v44);
    *(v1 + 1752) = v49;

    v50 = v49;
    v51 = MEMORY[0x1E12A1410](v47, v48);
    *(v1 + 1760) = v51;

    *(v1 + 336) = v1;
    *(v1 + 376) = v1 + 1296;
    *(v1 + 344) = RemoteConversationService.makeRequestIdentities(from:);
    v52 = swift_continuation_init();
    *(v1 + 968) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSs5Error_pGMd, &_sSccySSs5Error_pGMR);
    *(v1 + 944) = v52;
    *(v1 + 912) = MEMORY[0x1E69E9820];
    *(v1 + 920) = 1107296256;
    *(v1 + 928) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String;
    *(v1 + 936) = &block_descriptor_269;
    [v43 getSharedUserIdForHomeUserId:v51 completion:v1 + 912];

    return MEMORY[0x1EEE6DEC8](v1 + 336);
  }

  else
  {
    while (1)
    {
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      v41 = *(v1 + 1720);
      if (v42 >= (((1 << *(v1 + 1824)) + 63) >> 6))
      {
        break;
      }

      v40 = *(v41 + 8 * v42 + 64);
      ++v38;
      if (v40)
      {
        v38 = v42;
        goto LABEL_19;
      }
    }

    v124 = *(v1 + 1728);
    v53 = *(v1 + 1704);
    v54 = *(v1 + 1696);
    v55 = *(v1 + 1632);
    v56 = *(v1 + 1472);
    v57 = *(v1 + 1440);
    v58 = *(v1 + 1432);
    v59 = *(v1 + 1392);
    v60 = *(v59 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
    v123 = *(v1 + 1624);
    v61 = v60;
    v121 = v55;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v60, v55, 0, v56, v57);
    v62 = *(v59 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
    v63 = v54;
    v64 = v62;
    v65 = v53;
    static Locale.autoupdatingCurrent.getter();
    IdentifiedUser.init(userSpecificInfo:sharedUserInfo:settings:person:locale:)(v62, v53, 0, v56, v58);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v66 = *(v1 + 1440);
    v67 = *(v1 + 1424);
    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v66, v67, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    v116 = v65;
    v119 = v63;
    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v1 + 1496);
      v72 = *(v1 + 1488);
      v73 = *(v1 + 1424);
      v74 = *(v1 + 1416);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v125[0] = v76;
      *v75 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v73, v74, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v77 = *(v71 + 48);
      v114 = v76;
      if (v77(v74, 1, v72) == 1)
      {
        v78 = *(v1 + 1488);
        v79 = *(v1 + 1416);
        IdentifiedUser.init()();
        if (v77(v79, 1, v78) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1416), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v1 + 1496) + 32))(*(v1 + 1512), *(v1 + 1416), *(v1 + 1488));
      }

      v81 = *(v1 + 1512);
      v82 = *(v1 + 1496);
      v83 = *(v1 + 1488);
      v84 = *(v1 + 1424);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      (*(v82 + 8))(v81, v83);
      outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v125);

      *(v75 + 4) = v88;
      _os_log_impl(&dword_1DC659000, v69, v70, "#user-session: proposedIdentityOfRecognizedUser=%s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      MEMORY[0x1E12A2F50](v114, -1, -1);
      MEMORY[0x1E12A2F50](v75, -1, -1);

      v65 = v116;
      v63 = v119;
    }

    else
    {
      v80 = *(v1 + 1424);

      outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v1 + 1432), *(v1 + 1408), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = *(v1 + 1496);
      v92 = *(v1 + 1488);
      v93 = *(v1 + 1408);
      v94 = *(v1 + 1400);
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v125[0] = v96;
      *v95 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v93, v94, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v97 = *(v91 + 48);
      v115 = v96;
      if (v97(v94, 1, v92) == 1)
      {
        v98 = *(v1 + 1488);
        v99 = *(v1 + 1400);
        IdentifiedUser.init()();
        if (v97(v99, 1, v98) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 1400), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        }
      }

      else
      {
        (*(*(v1 + 1496) + 32))(*(v1 + 1504), *(v1 + 1400), *(v1 + 1488));
      }

      v101 = *(v1 + 1504);
      v102 = *(v1 + 1496);
      v103 = *(v1 + 1488);
      v104 = *(v1 + 1408);
      _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, 255, MEMORY[0x1E69CFE58], MEMORY[0x1E69CFE60]);
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v106;
      (*(v102 + 8))(v101, v103);
      outlined destroy of ReferenceResolutionClientProtocol?(v104, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, v125);

      *(v95 + 4) = v108;
      _os_log_impl(&dword_1DC659000, v89, v90, "#user-session: proposedIdentityOfUserMeetingSessionThreshold=%s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      MEMORY[0x1E12A2F50](v115, -1, -1);
      MEMORY[0x1E12A2F50](v95, -1, -1);
    }

    else
    {
      v100 = *(v1 + 1408);

      outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    }

    v109 = *(v1 + 1432);
    v110 = *(v1 + 1384);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v1 + 1440), v110, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    v111 = type metadata accessor for SiriRequestIdentities(0);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v109, v110 + *(v111 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    *(v110 + *(v111 + 24)) = v124;
    (*(*(v111 - 8) + 56))(v110, 0, 1, v111);

    v112 = *(v1 + 8);

    return v112();
  }
}

uint64_t closure #1 in RemoteConversationService.paraphrase(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[23] = swift_task_alloc();
  v6[24] = type metadata accessor for RemoteConversationService.State(0);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[27] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.paraphrase(reply:), v7, 0);
}

uint64_t closure #1 in RemoteConversationService.paraphrase(reply:)()
{
  v33 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 184);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with take of ReferenceResolutionClientProtocol((v4 + 40), v0 + 16);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
    v12 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v11, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = v12;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), (v13 + 4));
    v13[9] = v8;
    v13[10] = v7;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:), v13);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    outlined destroy of RemoteConversationService.State(v4 + v9, type metadata accessor for SiriRequest);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    v14 = *(v0 + 200);
    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    MEMORY[0x1E12A1580](0x74784520776F6C46, 0xEF206E6F69736E65);
    MEMORY[0x1E12A1580](0xD000000000000012, 0x80000001DCA835A0);
    MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA85D90);
    outlined init with copy of RemoteConversationService.State(v2 + v3, v14, type metadata accessor for RemoteConversationService.State);
    _print_unlocked<A, B>(_:_:)();
    outlined destroy of RemoteConversationService.State(v14, type metadata accessor for RemoteConversationService.State);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v32);
      _os_log_impl(&dword_1DC659000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v31 = *(v0 + 208);
    v22 = *(v0 + 176);
    v23 = *(v0 + 160);
    v24 = type metadata accessor for ActionParaphrase();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    v25 = type metadata accessor for ConversationParaphraseResultXPC(0);
    v26 = objc_allocWithZone(v25);
    outlined init with copy of ReferenceResolutionClientProtocol?(v22, &v26[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v27 = &v26[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
    *v27 = v15;
    v27[1] = v16;
    *(v0 + 136) = v26;
    *(v0 + 144) = v25;
    v28 = objc_msgSendSuper2((v0 + 136), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v23(v28);

    outlined destroy of RemoteConversationService.State(v31, type metadata accessor for RemoteConversationService.State);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v6[11] = swift_task_alloc();
  type metadata accessor for ConversationParaphraseResult(0);
  v6[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[13] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:), v7, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:)()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:);
  v5 = v0[12];

  return v7(v5, v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:);
  }

  else
  {
    v4 = closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = ConversationParaphraseResult.xpcRepresentation.getter();
  v2();

  outlined destroy of RemoteConversationService.State(v1, type metadata accessor for ConversationParaphraseResult);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v13 = *(v0 + 72);
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  v6 = type metadata accessor for ActionParaphrase();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = type metadata accessor for ConversationParaphraseResultXPC(0);
  v8 = objc_allocWithZone(v7);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, &v8[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v9 = &v8[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
  *v9 = v3;
  v9[1] = v5;
  *(v0 + 40) = v8;
  *(v0 + 48) = v7;
  v10 = objc_msgSendSuper2((v0 + 40), sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v13(v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in RemoteConversationService.drainAsyncWork(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[5] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.drainAsyncWork(reply:), v7, 0);
}

uint64_t closure #1 in RemoteConversationService.drainAsyncWork(reply:)()
{
  v3 = (*(**(*(v0 + 16) + 168) + 216) + **(**(*(v0 + 16) + 168) + 216));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #1 in RemoteConversationService.drainAsyncWork(reply:);

  return v3();
}

{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.drainAsyncWork(reply:), v1, 0);
}

{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[38] = a5;
  v6[39] = a6;
  v6[37] = a4;
  v7 = type metadata accessor for FlexibleExecutionSupportOptions();
  v6[40] = v7;
  v6[41] = *(v7 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = type metadata accessor for RemoteConversationService.State(0);
  v6[45] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static ConversationActor.shared;
  v6[46] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:), v8, 0);
}

uint64_t closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of ReferenceResolutionClientProtocol((*(v0 + 360) + 40), v0 + 136);
      v5 = *(v0 + 160);
      v6 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v5);
      v29 = (*(v6 + 72) + **(v6 + 72));
      v7 = swift_task_alloc();
      *(v0 + 376) = v7;
      *v7 = v0;
      v7[1] = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
      v8 = *(v0 + 344);
LABEL_6:

      return v29(v8, v5, v6);
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "No conversation while idle", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v18 = *(v0 + 304);

    v19 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
    *(v0 + 200) = v20;
    *(v0 + 208) = v19;
    v21 = objc_msgSendSuper2((v0 + 200), sel_init);
    v18();
  }

  else
  {
    v9 = *(v0 + 360);

    v10 = *(v9 + 40);
    v11 = *(v9 + 56);
    *(v0 + 48) = *(v9 + 72);
    *(v0 + 16) = v10;
    *(v0 + 32) = v11;
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    if (*(v0 + 120))
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
      v5 = *(v0 + 80);
      v6 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v5);
      v29 = (*(v6 + 72) + **(v6 + 72));
      v12 = swift_task_alloc();
      *(v0 + 392) = v12;
      *v12 = v0;
      v12[1] = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
      v8 = *(v0 + 336);
      goto LABEL_6;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 360);
    v23 = *(v0 + 304);
    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.executor);
    specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "flexibleExecutionSupportOptions(reply:)", 39, 2);
    v25 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
    *(v0 + 216) = v26;
    *(v0 + 224) = v25;
    v27 = objc_msgSendSuper2((v0 + 216), sel_init);
    v23();

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v28 = *(v0 + 8);

  return v28();
}

{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
  }

  else
  {
    v4 = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 304);
  v5 = FlexibleExecutionSupportOptions.rawValue.getter();
  v6 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v5;
  *(v0 + 280) = v7;
  *(v0 + 288) = v6;
  v8 = objc_msgSendSuper2((v0 + 280), sel_init);
  v4();

  (*(v3 + 8))(v1, v2);
  v9 = *(v0 + 360);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  outlined destroy of RemoteConversationService.State(v9 + v10, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);

  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
  }

  else
  {
    v4 = closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = FlexibleExecutionSupportOptions.rawValue.getter();
  v6 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v5;
  *(v0 + 248) = v7;
  *(v0 + 256) = v6;
  v8 = objc_msgSendSuper2((v0 + 248), sel_init);
  v4();

  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 360);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm(v9);

  v10 = *(v0 + 8);

  return v10();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = *(v0 + 304);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "flexibleExecutionSupportOptions(reply:)", 39, 2);
  v4 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
  *(v0 + 264) = v5;
  *(v0 + 272) = v4;
  v6 = objc_msgSendSuper2((v0 + 264), sel_init);
  v2();

  v7 = *(v0 + 360);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  outlined destroy of RemoteConversationService.State(v7 + v8, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);

  v9 = *(v0 + 8);

  return v9();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Error in whil querying remote conversation for flexible execution support", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 400);
  v6 = *(v0 + 304);

  v7 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
  *(v0 + 232) = v8;
  *(v0 + 240) = v7;
  v9 = objc_msgSendSuper2((v0 + 232), sel_init);
  v6();

  v10 = *(v0 + 360);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm(v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in RemoteConversationService.isCorrectable(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for RemoteConversationService.State(0);
  v6[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[21] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.isCorrectable(reply:), v7, 0);
}

uint64_t closure #1 in RemoteConversationService.isCorrectable(reply:)()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 160);
      v6 = *(v0 + 168);
      v8 = *(v0 + 136);
      v7 = *(v0 + 144);
      v9 = *(v0 + 128);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v5 + 40), v0 + 16);
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
      v13 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v12, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
      v14 = swift_allocObject();
      v14[2] = v6;
      v14[3] = v13;
      v14[4] = v9;
      v14[5] = v8;
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), (v14 + 6));

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:), v14);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      outlined destroy of RemoteConversationService.State(v5 + v10, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }

    else
    {
      (*(v0 + 128))(0);
    }
  }

  else
  {
    v15 = *(v0 + 160);
    v16 = *(v0 + 128);

    v16(0);
    outlined destroy of ReferenceResolutionClientProtocol?((v15 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[5] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:), v7, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)(char a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:), v2, 0);
}

uint64_t RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.activeTasksDidChange(activeTasks:rcId:), v5, 0);
}

uint64_t RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v2 + 168);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v7 = *(*v5 + 208);

  v7(0xD000000000000027, 0x80000001DCA85A70, &async function pointer to partial apply for closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:), v6);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return RemoteConversationService.sendActiveTasks(_:rcId:)(a2, a3, a4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFSharedUserInfo?) -> () with result type AFSharedUserInfo?(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFPersonalUserSettings?, @unowned NSError?) -> () with result type AFPersonalUserSettings(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSError?) -> () with result type String(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t RemoteConversationService.FlowAndInputRegistry.deinit()
{

  return v0;
}

uint64_t RemoteConversationService.FlowAndInputRegistry.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v2;
  return result;
}

uint64_t protocol witness for ConversationTaskObservationDelegate.activeTasksDidChange(activeTasks:rcId:) in conformance RemoteConversationService(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationTaskObservationDelegate.activeTasksDidChange(activeTasks:rcId:) in conformance RemoteConversationService, v5, 0);
}

uint64_t protocol witness for ConversationTaskObservationDelegate.activeTasksDidChange(activeTasks:rcId:) in conformance RemoteConversationService()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v2 + 168);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v7 = *(*v5 + 208);

  v7(0xD000000000000027, 0x80000001DCA85A70, &closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)partial apply, v6);

  v8 = v0[1];

  return v8();
}

uint64_t partial apply for closure #1 in RemoteConversationService.warmup(refId:reply:)(uint64_t a1)
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

  return closure #1 in RemoteConversationService.warmup(refId:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(uint64_t a1)
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

  return closure #1 in RemoteConversationService.accept(inputData:speechData:reply:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.activeTasksDidChange(activeTasks:rcId:)(v2, v3, v5, v4);
}

uint64_t type metadata completion function for RemoteConversationService(uint64_t a1)
{
  result = type metadata accessor for RemoteConversationService.State(319);
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

char *initializeBufferWithCopyOfBuffer for RemoteConversationService.State(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(a2 + 24);
    *(a1 + 24) = v12;
    (**(v12 - 8))(a1, a2);
    v13 = *(a2 + 4);
    *(a1 + 4) = v13;
    (**(v13 - 8))(a1 + 40, a2 + 40);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v15 = &a1[v14];
    v16 = &a2[v14];
    v17 = *&a2[v14 + 8];
    *v15 = *&a2[v14];
    *(v15 + 1) = v17;
    v18 = type metadata accessor for SiriRequest(0);
    v19 = v18[5];
    v20 = type metadata accessor for Input();
    v21 = *(*(v20 - 8) + 16);

    v21(&v15[v19], &v16[v19], v20);
    *&v15[v18[6]] = *&v16[v18[6]];
    *&v15[v18[7]] = *&v16[v18[7]];
    v22 = v18[8];
    v23 = &v15[v22];
    v24 = &v16[v22];
    v25 = *&v16[v22 + 8];

    if (v25 >> 60 == 15)
    {
      *v23 = *v24;
    }

    else
    {
      v28 = *v24;
      outlined copy of Data._Representation(*v24, v25);
      *v23 = v28;
      *(v23 + 1) = v25;
    }

    *&v15[v18[9]] = *&v16[v18[9]];
    *&v15[v18[10]] = *&v16[v18[10]];
    *&v15[v18[11]] = *&v16[v18[11]];
    v29 = v18[12];
    __dst = &v15[v29];
    v30 = &v16[v29];
    v31 = type metadata accessor for SiriRequestIdentities(0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);

    v34 = v30;

    if (v33(v30, 1, v31))
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dst, v30, *(*(v35 - 8) + 64));
    }

    else
    {
      v45 = v32;
      v46 = v31;
      v36 = type metadata accessor for IdentifiedUser();
      v37 = *(v36 - 8);
      v38 = *(v37 + 48);
      if (v38(v34, 1, v36))
      {
        v39 = v37;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        v41 = v34;
        memcpy(__dst, v34, *(*(v40 - 8) + 64));
      }

      else
      {
        v41 = v34;
        (*(v37 + 16))(__dst, v34, v36);
        v39 = v37;
        (*(v37 + 56))(__dst, 0, 1, v36);
      }

      v42 = *(v46 + 20);
      if (v38(&v41[v42], 1, v36))
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dst[v42], &v41[v42], *(*(v43 - 8) + 64));
      }

      else
      {
        (*(v39 + 16))(&__dst[v42], &v41[v42], v36);
        (*(v39 + 56))(&__dst[v42], 0, 1, v36);
      }

      *&__dst[*(v46 + 24)] = *&v41[*(v46 + 24)];
      v44 = *(v45 + 56);

      v44(__dst, 0, 1, v46);
    }

    goto LABEL_24;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *(a2 + 24);
    *(a1 + 24) = v8;
    (**(v8 - 8))(a1, a2);
    v9 = *(a2 + 8);
    if (v9)
    {
      v10 = *(a2 + 9);
      *(a1 + 8) = v9;
      *(a1 + 9) = v10;
      (**(v9 - 8))(a1 + 40, a2 + 40);
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 9) = *(a2 + 9);
    }

    *(a1 + 10) = *(a2 + 10);

LABEL_24:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v26 = *(v6 + 64);

  return memcpy(a1, a2, v26);
}

void *assignWithCopy for RemoteConversationService.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of RemoteConversationService.State(a1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(a2 + 24);
    *(a1 + 24) = v9;
    *(a1 + 32) = *(a2 + 32);
    (**(v9 - 8))(a1, a2);
    v10 = *(a2 + 64);
    *(a1 + 64) = v10;
    *(a1 + 72) = *(a2 + 72);
    (**(v10 - 8))(a1 + 40, a2 + 40);
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v12 = (a1 + v11);
    v13 = a2 + v11;
    *v12 = *(a2 + v11);
    *(v12 + 1) = *(a2 + v11 + 8);
    v14 = type metadata accessor for SiriRequest(0);
    v15 = v14[5];
    v16 = type metadata accessor for Input();
    v17 = *(*(v16 - 8) + 16);

    v17(&v12[v15], v13 + v15, v16);
    *&v12[v14[6]] = *(v13 + v14[6]);
    *&v12[v14[7]] = *(v13 + v14[7]);
    v18 = v14[8];
    v19 = &v12[v18];
    v20 = (v13 + v18);
    v21 = *(v13 + v18 + 8);

    if (v21 >> 60 == 15)
    {
      *v19 = *v20;
    }

    else
    {
      v24 = *v20;
      outlined copy of Data._Representation(*v20, v21);
      *v19 = v24;
      *(v19 + 1) = v21;
    }

    *&v12[v14[9]] = *(v13 + v14[9]);
    *&v12[v14[10]] = *(v13 + v14[10]);
    *&v12[v14[11]] = *(v13 + v14[11]);
    v25 = v14[12];
    __dst = &v12[v25];
    v26 = (v13 + v25);
    v27 = type metadata accessor for SiriRequestIdentities(0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);

    v30 = v26;

    if (v29(v26, 1, v27))
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(__dst, v26, *(*(v31 - 8) + 64));
    }

    else
    {
      v43 = v28;
      v44 = v27;
      v34 = type metadata accessor for IdentifiedUser();
      v35 = *(v34 - 8);
      v36 = *(v35 + 48);
      if (v36(v30, 1, v34))
      {
        v37 = v35;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        v39 = v30;
        memcpy(__dst, v30, *(*(v38 - 8) + 64));
      }

      else
      {
        v39 = v30;
        (*(v35 + 16))(__dst, v30, v34);
        v37 = v35;
        (*(v35 + 56))(__dst, 0, 1, v34);
      }

      v40 = *(v44 + 20);
      if (v36(&v39[v40], 1, v34))
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&__dst[v40], &v39[v40], *(*(v41 - 8) + 64));
      }

      else
      {
        (*(v37 + 16))(&__dst[v40], &v39[v40], v34);
        (*(v37 + 56))(&__dst[v40], 0, 1, v34);
      }

      *&__dst[*(v44 + 24)] = *&v39[*(v44 + 24)];
      v42 = *(v43 + 56);

      v42(__dst, 0, 1, v44);
    }

    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    *(a1 + 32) = *(a2 + 32);
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 64);
    if (v8)
    {
      *(a1 + 64) = v8;
      *(a1 + 72) = *(a2 + 72);
      (**(v8 - 8))(a1 + 40, a2 + 40);
    }

    else
    {
      v32 = *(a2 + 40);
      v33 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v33;
      *(a1 + 40) = v32;
    }

    *(a1 + 80) = *(a2 + 80);

LABEL_23:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v22 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v22);
}

_OWORD *initializeWithTake for RemoteConversationService.State(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 9) = *(a2 + 9);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    v8 = a1 + v7;
    v9 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v10 = type metadata accessor for SiriRequest(0);
    v11 = v10[5];
    v12 = type metadata accessor for Input();
    (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
    *&v8[v10[6]] = *&v9[v10[6]];
    *&v8[v10[7]] = *&v9[v10[7]];
    *&v8[v10[8]] = *&v9[v10[8]];
    *&v8[v10[9]] = *&v9[v10[9]];
    *&v8[v10[10]] = *&v9[v10[10]];
    *&v8[v10[11]] = *&v9[v10[11]];
    v13 = v10[12];
    v14 = &v8[v13];
    v15 = &v9[v13];
    v16 = type metadata accessor for SiriRequestIdentities(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
    }

    else
    {
      v21 = type metadata accessor for IdentifiedUser();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      v27 = v22;
      if (v23(v15, 1, v21))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v14, v15, *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v22 + 32))(v14, v15, v21);
        (*(v22 + 56))(v14, 0, 1, v21);
      }

      v25 = *(v16 + 20);
      if (v23(&v15[v25], 1, v21))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v14[v25], &v15[v25], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v27 + 32))(&v14[v25], &v15[v25], v21);
        (*(v27 + 56))(&v14[v25], 0, 1, v21);
      }

      *&v14[*(v16 + 24)] = *&v15[*(v16 + 24)];
      (*(v17 + 56))(v14, 0, 1, v16);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v19 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v19);
  }
}

uint64_t type metadata completion function for RemoteConversationService.State(uint64_t a1)
{
  v3[4] = "X";
  result = type metadata accessor for SiriRequest(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v3[5] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t closure #1 in RemoteConversationService.paraphrase(reply:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.paraphrase(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_63Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t objectdestroy_232Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t partial apply for closure #2 in closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.paraphrase(reply:)(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_301Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)(a1, v4, v5, v1 + 32);
}

id RemoteConversationSpeechData.__allocating_init(rcId:asrOnDevice:userSpecificInfoForRecognizedUser:userSpecificInfoForUserMeetingSessionThreshold:remoteRequestWasMadeInSession:speechPackage:utterance:responseLanguageVariant:requestLanguageVariant:genAIFallbackSuppressReason:flowRedirectContext:asrLocation:nlLocation:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17;
  v25 = objc_allocWithZone(v18);
  v26 = &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  *v26 = a1;
  v26[1] = a2;
  v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = a3;
  *&v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = a4;
  *&v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = a5;
  v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = a6;
  *&v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = a7;
  v27 = &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  *v27 = a8;
  v27[1] = a9;
  v28 = &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  *v28 = a10;
  v28[1] = a11;
  v29 = &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  *v29 = a12;
  v29[1] = a13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a15, &v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v30 = OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation;
  v31 = type metadata accessor for ExecutionLocation();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v33(&v25[v30], a16, v31);
  v33(&v25[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], a17, v31);
  v40.receiver = v25;
  v40.super_class = v39;
  v34 = objc_msgSendSuper2(&v40, sel_init);
  v35 = *(v32 + 8);
  v35(a17, v31);
  v35(a16, v31);
  outlined destroy of ReferenceResolutionClientProtocol?(a15, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a14, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  return v34;
}

uint64_t RemoteConversationSpeechData.rcId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);

  return v1;
}

void *RemoteConversationSpeechData.userSpecificInfoForRecognizedUser.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser);
  v2 = v1;
  return v1;
}

void *RemoteConversationSpeechData.userSpecificInfoForUserMeetingSessionThreshold.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold);
  v2 = v1;
  return v1;
}

void *RemoteConversationSpeechData.speechPackage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage);
  v2 = v1;
  return v1;
}

uint64_t RemoteConversationSpeechData.utterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance);

  return v1;
}

uint64_t RemoteConversationSpeechData.responseLanguageVariant.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant);

  return v1;
}

uint64_t RemoteConversationSpeechData.requestLanguageVariant.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant);

  return v1;
}

uint64_t RemoteConversationSpeechData.asrLocation.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for ExecutionLocation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id RemoteConversationSpeechData.init(rcId:asrOnDevice:userSpecificInfoForRecognizedUser:userSpecificInfoForUserMeetingSessionThreshold:remoteRequestWasMadeInSession:speechPackage:utterance:responseLanguageVariant:requestLanguageVariant:genAIFallbackSuppressReason:flowRedirectContext:asrLocation:nlLocation:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17;
  ObjectType = swift_getObjectType();
  v25 = &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  *v25 = a1;
  v25[1] = a2;
  v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = a3;
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = a4;
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = a5;
  v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = a6;
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = a7;
  v26 = &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  *v26 = a8;
  v26[1] = a9;
  v27 = &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  *v27 = a10;
  v27[1] = a11;
  v28 = &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  *v28 = a12;
  v28[1] = a13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a15, &v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v29 = OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation;
  v30 = type metadata accessor for ExecutionLocation();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v32(&v18[v29], a16, v30);
  v32(&v18[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], a17, v30);
  v39.receiver = v18;
  v39.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v39, sel_init);
  v34 = *(v31 + 8);
  v34(a17, v30);
  v34(a16, v30);
  outlined destroy of ReferenceResolutionClientProtocol?(a15, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a14, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  return v33;
}

uint64_t static RemoteConversationSpeechData.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static RemoteConversationSpeechData.supportsSecureCoding = a1;
  return result;
}

id RemoteConversationSpeechData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteConversationSpeechData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for RemoteConversationSpeechData(uint64_t a1)
{
  type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason?(319, &lazy cache variable for type metadata for NLRoutingDecisionMessage.GenAIFallbackSuppressReason?, MEMORY[0x1E69D0390]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason?(319, &lazy cache variable for type metadata for FlowRedirectContext?, MEMORY[0x1E69CFB38]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ExecutionLocation();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

id ProxiedRequestContext.__allocating_init(rske:executionRequestId:resultCandidateId:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized ProxiedRequestContext.__allocating_init(rske:executionRequestId:resultCandidateId:)(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t RemoteConversationTurnData.init(executionRequestId:rootRequestId:sessionId:sessionConfiguration:requestContextData:conversationLoggingId:flowTask:scopedRRData:invokedByPeerToPeerEORR:proxiedRequestContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v18 = type metadata accessor for RemoteConversationTurnData(0);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a5, a9 + v18[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a6, a9 + v18[7], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  *(a9 + v18[8]) = a7;
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a8, a9 + v18[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a9 + v18[10]) = a10;
  v20 = (a9 + v18[13]);
  *v20 = a11;
  v20[1] = a12;
  *(a9 + v18[11]) = a13;
  *(a9 + v18[12]) = a14;
  return result;
}

uint64_t RemoteConversationTurnData.executionRequestId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RemoteConversationTurnData.rootRequestId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id RemoteConversationTurnData.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteConversationTurnData(0) + 32));

  return v1;
}

uint64_t RemoteConversationTurnData.flowTask.getter()
{
  type metadata accessor for RemoteConversationTurnData(0);
}

void *RemoteConversationTurnData.proxiedRequestContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteConversationTurnData(0) + 48));
  v2 = v1;
  return v1;
}

uint64_t RemoteConversationTurnData.scopedRRData.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteConversationTurnData(0) + 52);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t RemoteConversationTurnData.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(255);
  MEMORY[0x1E12A1580](0xD000000000000034, 0x80000001DCA861F0);
  MEMORY[0x1E12A1580](*v1, v1[1]);
  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA86230);
  if (v0[3])
  {
    v5 = v0[2];
    v6 = v0[3];
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v5, v6);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA86250);
  v7 = type metadata accessor for RemoteConversationTurnData(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + v7[6], v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v8);

  MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA86270);
  v9 = [*(v0 + v7[8]) debugDescription];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  MEMORY[0x1E12A1580](v10, v12);

  MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA86290);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v7[9], v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v13);

  MEMORY[0x1E12A1580](0x6C6620202020202CLL, 0xEF3D6B736154776FLL);
  v22 = *(v1 + v7[10]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime8FlowTaskCSgMd, &_s14SiriKitRuntime8FlowTaskCSgMR);
  v14 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v14);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA862B0);
  if (*(v1 + v7[13] + 8) >> 60 == 15)
  {
    v15 = 28526;
  }

  else
  {
    v15 = 7562617;
  }

  if (*(v1 + v7[13] + 8) >> 60 == 15)
  {
    v16 = 0xE200000000000000;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x1E12A1580](v15, v16);

  MEMORY[0x1E12A1580](0xD00000000000001ELL, 0x80000001DCA862D0);
  if (*(v1 + v7[11]))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v1 + v7[11]))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v17, v18);

  MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA862F0);
  v22 = *(v1 + v7[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ProxiedRequestContextCSgMd, &_s14SiriKitRuntime21ProxiedRequestContextCSgMR);
  v19 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v19);

  MEMORY[0x1E12A1580](32010, 0xE200000000000000);
  return v23;
}

uint64_t ConversationTurnDataXPC.executionRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId);

  return v1;
}

uint64_t ConversationTurnDataXPC.rootRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId);

  return v1;
}

void *ConversationTurnDataXPC.sessionId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionId);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.sessionConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.conversationLoggingId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.flowTask.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_flowTask);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.scopedRRData.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData);
  v2 = v1;
  return v1;
}

void *ConversationTurnDataXPC.proxiedRequestContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext);
  v2 = v1;
  return v1;
}

unint64_t ConversationTurnDataXPC.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    v6 = 0x496E6F6973736573;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000017;
    if (a1 == 5)
    {
      v7 = 0x52526465706F6373;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x75716552746F6F72;
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000015;
    if (a1 != 3)
    {
      v3 = 0x6B736154776F6C66;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationTurnDataXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationTurnDataXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationTurnDataXPC.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationTurnDataXPC.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id ConversationTurnDataXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationTurnDataXPC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static ProxiedRequestContext.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ProxiedRequestContext.supportsSecureCoding = a1;
  return result;
}

uint64_t ProxiedRequestContext.aceId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId);

  return v1;
}

uint64_t ProxiedRequestContext.refId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId);

  return v1;
}

uint64_t ProxiedRequestContext.interactionType.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *ProxiedRequestContext.aceMeCard.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard);
  v2 = v1;
  return v1;
}

uint64_t ProxiedRequestContext.sessionHandoffContinuityId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId);

  return v1;
}

void *ProxiedRequestContext.userSessionState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState);
  v2 = v1;
  return v1;
}

uint64_t ProxiedRequestContext.interactionId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId);

  return v1;
}

void *ProxiedRequestContext.aceRemoteExecution.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution);
  v2 = v1;
  return v1;
}

uint64_t ProxiedRequestContext.resultCandidateId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId);

  return v1;
}

id ProxiedRequestContext.__allocating_init(aceId:refId:interactionType:inputOrigin:aceMeCard:sessionHandoffContinuityId:isMultiUserEnabled:userSessionState:requiresConditionalMultiUserGrounding:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:interactionId:bargeInContext:aceRemoteExecution:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  v30 = objc_allocWithZone(v23);
  v31 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  *v31 = a1;
  v31[1] = a2;
  v32 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
  *v32 = a3;
  v32[1] = a4;
  v33 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType;
  v34 = type metadata accessor for InteractionType();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&v30[v33], a5, v34);
  v36 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin;
  v37 = type metadata accessor for InputOrigin();
  v38 = *(v37 - 8);
  (*(v38 + 16))(&v30[v36], a6, v37);
  *&v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard] = a7;
  v39 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  *v39 = a8;
  v39[1] = a9;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled] = a10;
  *&v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState] = a11;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding] = a12;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree] = a13;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled] = a14;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled] = a15;
  v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction] = a16;
  v40 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *v40 = a17;
  v40[1] = a18;
  outlined init with copy of ReferenceResolutionClientProtocol?(a19, &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  *&v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution] = a20;
  v41 = &v30[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId];
  *v41 = a21;
  v41[1] = a22;
  v49.receiver = v30;
  v49.super_class = v48;
  v42 = objc_msgSendSuper2(&v49, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a19, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  (*(v38 + 8))(a6, v37);
  (*(v35 + 8))(a5, v34);
  return v42;
}

id ProxiedRequestContext.init(aceId:refId:interactionType:inputOrigin:aceMeCard:sessionHandoffContinuityId:isMultiUserEnabled:userSessionState:requiresConditionalMultiUserGrounding:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:interactionId:bargeInContext:aceRemoteExecution:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  ObjectType = swift_getObjectType();
  v30 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  *v30 = a1;
  v30[1] = a2;
  v31 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
  *v31 = a3;
  v31[1] = a4;
  v32 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType;
  v33 = type metadata accessor for InteractionType();
  v34 = *(v33 - 8);
  (*(v34 + 16))(&v23[v32], a5, v33);
  v35 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin;
  v36 = type metadata accessor for InputOrigin();
  v37 = *(v36 - 8);
  (*(v37 + 16))(&v23[v35], a6, v36);
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard] = a7;
  v38 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  *v38 = a8;
  v38[1] = a9;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled] = a10;
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState] = a11;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding] = a12;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree] = a13;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled] = a14;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled] = a15;
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction] = a16;
  v39 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *v39 = a17;
  v39[1] = a18;
  outlined init with copy of ReferenceResolutionClientProtocol?(a19, &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution] = a20;
  v40 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId];
  *v40 = a21;
  v40[1] = a22;
  v48.receiver = v23;
  v48.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v48, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a19, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  (*(v37 + 8))(a6, v36);
  (*(v34 + 8))(a5, v33);
  return v41;
}

unint64_t ProxiedRequestContext.CodingKeys.rawValue.getter(char a1)
{
  result = 0x6449656361;
  switch(a1)
  {
    case 1:
      result = 0x6449666572;
      break;
    case 2:
    case 13:
      result = 0x7463617265746E69;
      break;
    case 3:
      result = 0x69724F7475706E69;
      break;
    case 4:
      result = 0x726143654D656361;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0x7246736579457369;
      break;
    case 10:
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x7463657269447369;
      break;
    case 14:
      result = 0x4D6E496567726162;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationTurnDataXPC.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationTurnDataXPC.CodingKeys(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationTurnDataXPC.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationTurnDataXPC.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ProxiedRequestContext.CodingKeys@<X0>(Swift::String *a1@<X0>, SiriKitRuntime::ProxiedRequestContext::CodingKeys_optional *a2@<X8>)
{
  result = specialized ProxiedRequestContext.CodingKeys.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ProxiedRequestContext.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ProxiedRequestContext.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProxiedRequestContext.CodingKeys@<X0>(uint64_t a1@<X0>, SiriKitRuntime::ProxiedRequestContext::CodingKeys_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = specialized ProxiedRequestContext.CodingKeys.init(rawValue:)(a1, a3);
  a2->value = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProxiedRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProxiedRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ProxiedRequestContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProxiedRequestContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DefaultMeCardProxy and conformance DefaultMeCardProxy()
{
  result = lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy;
  if (!lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy)
  {
    type metadata accessor for DefaultMeCardProxy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy);
  }

  return result;
}

unint64_t specialized ConversationTurnDataXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationTurnDataXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ProxiedRequestContext.CodingKeys.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type ConversationTurnDataXPC.CodingKeys and conformance ConversationTurnDataXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConversationTurnDataXPC.CodingKeys and conformance ConversationTurnDataXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationTurnDataXPC.CodingKeys and conformance ConversationTurnDataXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationTurnDataXPC.CodingKeys and conformance ConversationTurnDataXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProxiedRequestContext.CodingKeys and conformance ProxiedRequestContext.CodingKeys);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = a3[6];
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(&a2[v9], 1, v10))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(&v4[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v4[v9], &a2[v9], v10);
      (*(v11 + 56))(&v4[v9], 0, 1, v10);
    }

    v15 = a3[7];
    v16 = type metadata accessor for SessionConfiguration();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(&a2[v15], 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      memcpy(&v4[v15], &a2[v15], *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(&v4[v15], &a2[v15], v16);
      (*(v17 + 56))(&v4[v15], 0, 1, v16);
    }

    v19 = a3[8];
    v20 = a3[9];
    v21 = *&a2[v19];
    *&v4[v19] = v21;
    v22 = v21;
    if (v12(&a2[v20], 1, v10))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(&v4[v20], &a2[v20], *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v4[v20], &a2[v20], v10);
      (*(v11 + 56))(&v4[v20], 0, 1, v10);
    }

    v24 = a3[11];
    *&v4[a3[10]] = *&a2[a3[10]];
    v4[v24] = a2[v24];
    v25 = a3[12];
    v26 = a3[13];
    v27 = *&a2[v25];
    *&v4[v25] = v27;
    v28 = &v4[v26];
    v29 = &a2[v26];
    v30 = *&a2[v26 + 8];

    v31 = v27;
    if (v30 >> 60 == 15)
    {
      *v28 = *v29;
    }

    else
    {
      v32 = *v29;
      outlined copy of Data._Representation(v32, v30);
      *v28 = v32;
      *(v28 + 1) = v30;
    }
  }

  return v4;
}

char *assignWithCopy for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);

  v6 = a3[6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v42 = v9;
  v11 = v9(&a2[v6], 1, v7);
  v41 = v8;
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v43 = a3;
  v13 = a3[7];
  v14 = type metadata accessor for SessionConfiguration();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(&a1[v13], 1, v14);
  v18 = v16(&a2[v13], 1, v14);
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 16))(&a1[v13], &a2[v13], v14);
      (*(v15 + 56))(&a1[v13], 0, 1, v14);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v18)
  {
    (*(v15 + 8))(&a1[v13], v14);
LABEL_12:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(v15 + 24))(&a1[v13], &a2[v13], v14);
LABEL_13:
  v20 = a3[8];
  v21 = *&a2[v20];
  v22 = *&a1[v20];
  *&a1[v20] = v21;
  v23 = v21;

  v24 = v43[9];
  v25 = v42(&a1[v24], 1, v7);
  v26 = v42(&a2[v24], 1, v7);
  if (v25)
  {
    if (!v26)
    {
      (*(v41 + 16))(&a1[v24], &a2[v24], v7);
      (*(v41 + 56))(&a1[v24], 0, 1, v7);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v26)
  {
    (*(v41 + 8))(&a1[v24], v7);
LABEL_18:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v24], &a2[v24], *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  (*(v41 + 24))(&a1[v24], &a2[v24], v7);
LABEL_19:
  *&a1[v43[10]] = *&a2[v43[10]];

  a1[v43[11]] = a2[v43[11]];
  v28 = v43[12];
  v29 = *&a1[v28];
  v30 = *&a2[v28];
  *&a1[v28] = v30;
  v31 = v30;

  v32 = v43[13];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *&a2[v32 + 8];
  if (*&a1[v32 + 8] >> 60 != 15)
  {
    if (v35 >> 60 != 15)
    {
      v37 = *v34;
      outlined copy of Data._Representation(v37, v35);
      v38 = *v33;
      v39 = v33[1];
      *v33 = v37;
      v33[1] = v35;
      outlined consume of Data._Representation(v38, v39);
      return a1;
    }

    outlined destroy of Data(v33);
    goto LABEL_24;
  }

  if (v35 >> 60 == 15)
  {
LABEL_24:
    *v33 = *v34;
    return a1;
  }

  v36 = *v34;
  outlined copy of Data._Representation(v36, v35);
  *v33 = v36;
  v33[1] = v35;
  return a1;
}

char *initializeWithTake for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(&a2[v7], 1, v8))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v12 = a3[7];
  v13 = type metadata accessor for SessionConfiguration();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(&a2[v12], 1, v13))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(&a1[v12], &a2[v12], v13);
    (*(v14 + 56))(&a1[v12], 0, 1, v13);
  }

  v16 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  if (v10(&a2[v16], 1, v8))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v16], &a2[v16], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v16], &a2[v16], v8);
    (*(v9 + 56))(&a1[v16], 0, 1, v8);
  }

  v18 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v18] = a2[v18];
  v19 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  *&a1[v19] = *&a2[v19];
  return a1;
}

char *assignWithTake for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = a3[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v37 = v11;
  v13 = v11(&a2[v8], 1, v9);
  v38 = v10;
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 32))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v10 + 8))(&a1[v8], v9);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 40))(&a1[v8], &a2[v8], v9);
LABEL_7:
  v15 = a3[7];
  v16 = type metadata accessor for SessionConfiguration();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 1, v16);
  v20 = v18(&a2[v15], 1, v16);
  if (v19)
  {
    if (!v20)
    {
      (*(v17 + 32))(&a1[v15], &a2[v15], v16);
      (*(v17 + 56))(&a1[v15], 0, 1, v16);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v20)
  {
    (*(v17 + 8))(&a1[v15], v16);
LABEL_12:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  (*(v17 + 40))(&a1[v15], &a2[v15], v16);
LABEL_13:
  v22 = a3[8];
  v23 = *&a1[v22];
  *&a1[v22] = *&a2[v22];

  v24 = a3[9];
  v25 = v37(&a1[v24], 1, v9);
  v26 = v37(&a2[v24], 1, v9);
  if (v25)
  {
    if (!v26)
    {
      (*(v38 + 32))(&a1[v24], &a2[v24], v9);
      (*(v38 + 56))(&a1[v24], 0, 1, v9);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v26)
  {
    (*(v38 + 8))(&a1[v24], v9);
LABEL_18:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v24], &a2[v24], *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  (*(v38 + 40))(&a1[v24], &a2[v24], v9);
LABEL_19:
  *&a1[a3[10]] = *&a2[a3[10]];

  v28 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v29 = *&a1[v28];
  *&a1[v28] = *&a2[v28];

  v30 = a3[13];
  v31 = &a1[v30];
  v32 = &a2[v30];
  v33 = *&a1[v30 + 8];
  if (v33 >> 60 != 15)
  {
    v34 = *(v32 + 1);
    if (v34 >> 60 != 15)
    {
      v35 = *v31;
      *v31 = *v32;
      v31[1] = v34;
      outlined consume of Data._Representation(v35, v33);
      return a1;
    }

    outlined destroy of Data(v31);
  }

  *v31 = *v32;
  return a1;
}

void type metadata completion function for RemoteConversationTurnData(uint64_t a1)
{
  _s10Foundation4UUIDVSgMaTm_1(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    _s10Foundation4UUIDVSgMaTm_1(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata completion function for ProxiedRequestContext(uint64_t a1)
{
  type metadata accessor for InteractionType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for InputOrigin();
    if (v2 <= 0x3F)
    {
      _s10Foundation4UUIDVSgMaTm_1(319, &lazy cache variable for type metadata for BargeInContext?, MEMORY[0x1E69D3588]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ProxiedRequestContext.__allocating_init(aceId:refId:interactionType:inputOrigin:aceMeCard:sessionHandoffContinuityId:isMultiUserEnabled:userSessionState:requiresConditionalMultiUserGrounding:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:interactionId:bargeInContext:aceRemoteExecution:resultCandidateId:)()
{
  v2 = *(v0 + 216);

  return v2();
}

void _s10Foundation4UUIDVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t SendableRemoteConversationXPCWrapper.__allocating_init(wrapping:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void SendableRemoteConversationXPCWrapper.warmup(refId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = MEMORY[0x1E12A1410](a1, a2);
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v10[3] = &block_descriptor_20;
  v9 = _Block_copy(v10);

  [v7 warmupWithRefId:v8 reply:v9];
  _Block_release(v9);
}

void SendableRemoteConversationXPCWrapper.canHandle(inputData:rcId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = MEMORY[0x1E12A1410](a3, a4);
  v15[4] = a5;
  v15[5] = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v15[3] = &block_descriptor_3_2;
  v14 = _Block_copy(v15);

  [v11 canHandleWithInputData:isa rcId:v13 reply:v14];
  _Block_release(v14);
}

void SendableRemoteConversationXPCWrapper.cancel(cancellationReason:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v7[3] = &block_descriptor_6_1;
  v6 = _Block_copy(v7);

  [v5 cancelWithCancellationReason:a1 reply:v6];
  _Block_release(v6);
}

void SendableRemoteConversationXPCWrapper.ensureReady(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v5[3] = &block_descriptor_12_0;
  v4 = _Block_copy(v5);

  [v3 ensureReadyWithReply_];
  _Block_release(v4);
}

void SendableRemoteConversationXPCWrapper.startTurn(turnData:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v9[3] = &block_descriptor_15;
  v8 = _Block_copy(v9);

  [v7 startTurnWithTurnData:a1 bridge:a2 reply:v8];
  _Block_release(v8);
}

void SendableRemoteConversationXPCWrapper.startTurnFromCache(executionRequestId:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = MEMORY[0x1E12A1410](a1, a2);
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_18;
  v11 = _Block_copy(v12);

  [v9 startTurnFromCacheWithExecutionRequestId:v10 bridge:a3 reply:v11];
  _Block_release(v11);
}

void SendableRemoteConversationXPCWrapper.accept(inputData:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v12[3] = &block_descriptor_21;
  v11 = _Block_copy(v12);

  [v9 acceptWithInputData:isa speechData:a3 reply:v11];
  _Block_release(v11);
}

void SendableRemoteConversationXPCWrapper.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v11[3] = &block_descriptor_24;
  v10 = _Block_copy(v11);

  [v8 acceptInitialInputWithInputIdentifier:isa speechData:a2 reply:v10];
  _Block_release(v10);
}

void SendableRemoteConversationXPCWrapper.prepare(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v7[3] = &block_descriptor_27;
  v6 = _Block_copy(v7);

  [v5 prepareWithBridge:a1 reply:v6];
  _Block_release(v6);
}

void SendableRemoteConversationXPCWrapper.paraphrase(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v5[3] = &block_descriptor_30;
  v4 = _Block_copy(v5);

  [v3 paraphraseWithReply_];
  _Block_release(v4);
}

void SendableRemoteConversationXPCWrapper.commit(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v7[3] = &block_descriptor_33;
  v6 = _Block_copy(v7);

  [v5 commitWithBridge:a1 reply:v6];
  _Block_release(v6);
}

void SendableRemoteConversationXPCWrapper.reset(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v8[3] = a3;
  v7 = _Block_copy(v8);

  [v6 *a4];
  _Block_release(v7);
}

void SendableRemoteConversationXPCWrapper.isEmpty(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v8[3] = a3;
  v7 = _Block_copy(v8);

  [v6 *a4];
  _Block_release(v7);
}

void SendableRemoteConversationXPCWrapper.flexibleExecutionSupportOptions(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
  v5[3] = &block_descriptor_45;
  v4 = _Block_copy(v5);

  [v3 flexibleExecutionSupportOptionsWithReply_];
  _Block_release(v4);
}

id one-time initialization function for remoteConversationXPCInterface()
{
  v0 = objc_opt_self();
  v1 = &unk_1F584AA48;
  v2 = [v0 interfaceWithProtocol_];

  if (one-time initialization token for executionBridgeXPCInterface != -1)
  {
    swift_once();
  }

  v3 = static ServiceBridgeHelper.executionBridgeXPCInterface;
  [v2 setInterface:static ServiceBridgeHelper.executionBridgeXPCInterface forSelector:sel_startTurnWithTurnData_bridge_reply_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v3 forSelector:sel_startTurnFromCacheWithExecutionRequestId_bridge_reply_ argumentIndex:1 ofReply:0];
  [v2 setInterface:v3 forSelector:sel_prepareWithBridge_reply_ argumentIndex:0 ofReply:0];
  result = [v2 setInterface:v3 forSelector:sel_commitWithBridge_reply_ argumentIndex:0 ofReply:0];
  static RemoteConversationXPCHelper.remoteConversationXPCInterface = v2;
  return result;
}

void one-time initialization function for remoteConversationHostXPCInterface()
{
  v0 = objc_opt_self();
  v1 = &unk_1F584AC38;
  v2 = [v0 interfaceWithProtocol_];

  static RemoteConversationXPCHelper.remoteConversationHostXPCInterface = v2;
}

uint64_t RemoteFlowPluginBundleConversationHandler.bundlePath.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RemoteFlowPluginBundleConversationHandler.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RemoteFlowPluginBundleConversationHandler.remoteConversationClient.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t RemoteFlowPluginBundleConversationHandler.loadRemoteConversationTask.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

void RemoteFlowPluginBundleConversationHandler.init()()
{
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000065, 0x80000001DCA86480, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/ConversationHandler/RemoteFlowPluginBundleConversationHandler.swift", 136, 2, 26);
  __break(1u);
}

void *RemoteFlowPluginBundleConversationHandler.__allocating_init(bundleId:bundlePath:affinityScorer:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[12] = 0;
  v12[13] = 0;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  outlined init with take of NSExtensionProtocol(a5, (v12 + 7));
  v12[6] = a6;
  return v12;
}

void *RemoteFlowPluginBundleConversationHandler.init(bundleId:bundlePath:affinityScorer:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v6[12] = 0;
  v6[13] = 0;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  outlined init with take of NSExtensionProtocol(a5, (v6 + 7));
  v6[6] = a6;
  return v6;
}

uint64_t RemoteFlowPluginBundleConversationHandler.warmup(refId:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[8] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[9] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.warmup(refId:), v4, 0);
}

uint64_t RemoteFlowPluginBundleConversationHandler.warmup(refId:)()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  v4 = *(v0 + 64);

  return RemoteFlowPluginBundleConversationHandler.getRemoteConversationClient(rcId:hypothesisId:)(0, 0, v4);
}

{
  v11 = v0;
  v1 = v0[11];
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.warmup(refId:), v1, 0);
  }

  else
  {

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
      v5 = v0[7];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v10);
      _os_log_impl(&dword_1DC659000, v3, v4, "Error warming up %s: Could not connect to remote conversation", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "warmup(refId:)", 14, 2);
  v5 = v1[19];
  v6 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v5);
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v8 = *(v6 + 16);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return (v12)(v0 + 14, &async function pointer to partial apply for closure #1 in RemoteConversationClient.warmup(refId:), v7, v10, v5, v6);
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  return MEMORY[0x1EEE6DFA0](RemoteFlowPluginBundleConversationHandler.warmup(refId:), *(v0 + 72), 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v10 = v0;

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), &v9);
    _os_log_impl(&dword_1DC659000, v2, v3, "Error warming up %s: Could not connect to remote conversation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t RemoteFlowPluginBundleConversationHandler.warmup(refId:)(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 88) = a1;

  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  if (v1)
  {

    outlined destroy of UUID?(v5);
    v6 = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  }

  else
  {
    outlined destroy of UUID?(v5);
    v6 = RemoteFlowPluginBundleConversationHandler.warmup(refId:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, 0);
}

void *RemoteFlowPluginBundleConversationHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t protocol witness for ConversationHandler.warmup(refId:) in conformance RemoteFlowPluginBundleConversationHandler(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return RemoteFlowPluginBundleConversationHandler.warmup(refId:)(a1, a2);
}

double protocol witness for Identifiable.id.getter in conformance RemoteFlowPluginBundleConversationHandler@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t instantiation function for generic protocol witness table for RemoteFlowPluginBundleConversationHandler(uint64_t a1, uint64_t a2)
{
  result = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, a2, type metadata accessor for RemoteFlowPluginBundleConversationHandler, &protocol conformance descriptor for RemoteFlowPluginBundleConversationHandler);
  *(a1 + 8) = result;
  return result;
}

void *RemoteFlowPluginPackage.__allocating_init(bundleId:bundlePath:supportedTopics:sharedFlowPluginServiceClient:overrideAffinityScorer:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v14[4] = a6;
  v14[5] = a5;
  outlined init with copy of AffinityScorer?(a7, &v17);
  if (v18)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v17, v19);
  }

  else
  {
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA7D960);
    MEMORY[0x1E12A1580](a1, a2);
    MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA7D990);
    v15 = v19[0];

    specialized logAction<A>(label:_:)(v15, *(&v15 + 1), a1, a2, v19);

    outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    if (v18)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v17, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(v19, (v14 + 8));
  return v14;
}

void *RemoteFlowPluginPackage.loadRemoteConversationHandler()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/RemoteFlowPluginPackage.swift", 44, 2, "loadRemoteConversationHandler()", 31, 2);
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[6];
  v4 = v0[7];
  outlined init with copy of ReferenceResolutionClientProtocol((v0 + 8), v9);
  v6 = v0[4];
  type metadata accessor for RemoteFlowPluginBundleConversationHandler();
  v7 = swift_allocObject();
  v7[12] = 0;
  v7[13] = 0;
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;
  v7[5] = v4;
  outlined init with take of ReferenceResolutionClientProtocol(v9, (v7 + 7));
  v7[6] = v6;

  return v7;
}

uint64_t FlowPluginPackageFinder.__allocating_init(wrapping:sharedFlowPluginServiceClient:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t RemoteFlowPluginPackage.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RemoteFlowPluginPackage.bundlePath.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *RemoteFlowPluginPackage.__allocating_init(path:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v7 = MEMORY[0x1E12A1410](a1, a2);

  v8 = [v6 initWithPath_];

  if (v8)
  {
    return specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v8, a3);
  }

  return 0;
}

void *RemoteFlowPluginPackage.init(bundleId:bundlePath:supportedTopics:sharedFlowPluginServiceClient:overrideAffinityScorer:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = a6;
  v7[5] = a5;
  outlined init with copy of AffinityScorer?(a7, &v13);
  if (v14)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v13, v15);
  }

  else
  {
    *&v15[0] = 0;
    *(&v15[0] + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA7D960);
    MEMORY[0x1E12A1580](a1, a2);
    MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA7D990);
    v11 = v15[0];

    specialized logAction<A>(label:_:)(v11, *(&v11 + 1), a1, a2, v15);

    outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    if (v14)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v13, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(v15, (v7 + 8));
  return v7;
}

uint64_t closure #1 in implicit closure #1 in RemoteFlowPluginPackage.init(bundleId:bundlePath:supportedTopics:sharedFlowPluginServiceClient:overrideAffinityScorer:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static AmbiguityFeatureFlags.forceEnabled;
  if (!*(static AmbiguityFeatureFlags.forceEnabled + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(), (v8 & 1) == 0))
  {
    v21[3] = &type metadata for AmbiguityFeatureFlags;
    v21[4] = lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags();
    LOBYTE(v21[0]) = 0;
    v18 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    if ((v18 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    static AffinityScorerManager.affinityScorer(for:)(a1, a2, v21);
    v19 = type metadata accessor for AffinityScoringAdapter(0);
    a3[3] = v19;
    a3[4] = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type AffinityScoringAdapter and conformance AffinityScoringAdapter, 255, type metadata accessor for AffinityScoringAdapter, &protocol conformance descriptor for AffinityScoringAdapter);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    outlined init with copy of ReferenceResolutionClientProtocol(v21, boxed_opaque_existential_0 + *(v19 + 20));
    UUID.init()();
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  if (*(*(v6 + 56) + v7) == 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.executor);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v21);
    _os_log_impl(&dword_1DC659000, v10, v11, "loadAffinityScorer Error loading affinity scorer for plugin %s, affinity scoring v2 is not enabled", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v14 = type metadata accessor for FixedAffinityScorer(0);
  v15 = swift_allocObject();
  UUID.init()();
  v16 = v15 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
  *v16 = 0;
  *(v16 + 8) = 0;
  a3[3] = v14;
  result = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type FixedAffinityScorer and conformance FixedAffinityScorer, 255, type metadata accessor for FixedAffinityScorer, &protocol conformance descriptor for FixedAffinityScorer);
  a3[4] = result;
  *a3 = v15;
  return result;
}

uint64_t static RemoteFlowPluginPackage.from(id:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](static RemoteFlowPluginPackage.from(id:sharedFlowPluginServiceClient:), 0, 0);
}

uint64_t static RemoteFlowPluginPackage.from(id:sharedFlowPluginServiceClient:)()
{
  v1 = MEMORY[0x1E12A1410](v0[2], v0[3]);
  v2 = [objc_opt_self() bundleWithIdentifier_];

  if (v2)
  {
    v3 = v0[4];

    v4 = specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v2, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t static RemoteFlowPluginPackage.packageFrom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }

  v7 = static ConversationHandlerLocator.lastSeenFlowPluginServiceClient;
  os_unfair_lock_lock((static ConversationHandlerLocator.lastSeenFlowPluginServiceClient + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));
  if (v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E696AAE8]);

    v10 = MEMORY[0x1E12A1410](a1, a2);
    v11 = [v9 initWithPath_];

    if (v11)
    {
      v12 = specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v11, v8);

      result = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v13, type metadata accessor for RemoteFlowPluginPackage, &protocol conformance descriptor for RemoteFlowPluginPackage);
    }

    else
    {

      v12 = 0;
      v3 = 0;
      result = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    *a3 = v12;
    a3[3] = v3;
    a3[4] = result;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000008CLL, 0x80000001DCA86650, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/ConversationHandler/RemoteFlowPluginPackage.swift", 118, 2, 102);
    __break(1u);
  }

  return result;
}

void *RemoteFlowPluginPackage.loadPlugin()()
{
  v0 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();
  lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, 255, type metadata accessor for RemoteFlowPluginBundleConversationHandler, &protocol conformance descriptor for RemoteFlowPluginBundleConversationHandler);
  return v0;
}

uint64_t RemoteFlowPluginPackage.get(capability:)@<X0>(void *a1@<X8>)
{
  v2 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();
  lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, 255, type metadata accessor for RemoteFlowPluginBundleConversationHandler, &protocol conformance descriptor for RemoteFlowPluginBundleConversationHandler);
  result = swift_getObjectType();
  a1[3] = result;
  *a1 = v2;
  return result;
}

unint64_t RemoteFlowPluginPackage.affinityScore(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v61 = v6;
  v62 = v9;
  v14 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v14, static Signposter.executor);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = static Log.executor;
  OSSignpostID.init(log:)();
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v68 = v17;
  *v16 = 136315138;
  v18 = v2[3];
  v59 = v2[2];
  v60 = v18;
  *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v18, &v68);
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  v21 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v19, v20, v21, "RunAffinityScorer", "AffinityScorer=%s", v16, 0xCu);
  v22 = v2[11];
  v23 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v22);
  v63 = a1;
  v24 = AffinityScorer.score(for:)(a1, v22, v23);
  v26 = v25;
  v66 = v24;
  v27 = static os_signpost_type_t.end.getter();
  v28 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v19, v27, v28, "RunAffinityScorer", "AffinityScorer=%s", v16, 0xCu);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  MEMORY[0x1E12A2F50](v17, -1, -1);
  MEMORY[0x1E12A2F50](v16, -1, -1);
  (*(v11 + 8))(v13, v10);
  if (v26)
  {
    v30 = v64;
    v29 = v65;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.executor);
    v32 = v61;
    (*(v30 + 16))(v61, v63, v29);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v33, v34))
    {

      (*(v30 + 8))(v32, v29);
      return v66;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68 = v36;
    *v35 = 136315394;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v68);
    *(v35 + 12) = 2080;
    lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v32;
    v40 = v39;
    (*(v30 + 8))(v38, v29);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, &v68);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_1DC659000, v33, v34, "[%s] Missing affinity for input %s", v35, 0x16u);
    swift_arrayDestroy();
    v42 = v36;
  }

  else
  {
    v44 = v64;
    v43 = v65;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);
    v46 = v62;
    (*(v44 + 16))(v62, v63, v43);

    v33 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v33, v47))
    {

      (*(v44 + 8))(v46, v43);
      return v66;
    }

    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v68 = v48;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v68);
    *(v35 + 12) = 2080;
    v67[0] = specialized Affinity.init(rawValue:)(v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime8AffinityOSgMd, &_s14SiriKitRuntime8AffinityOSgMR);
    v49 = String.init<A>(describing:)();
    v50 = v46;
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v68);

    *(v35 + 14) = v52;
    *(v35 + 22) = 2080;
    lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v44 + 8))(v50, v43);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v68);

    *(v35 + 24) = v56;
    _os_log_impl(&dword_1DC659000, v33, v47, "[%s] Affinity: %s for input %s", v35, 0x20u);
    swift_arrayDestroy();
    v42 = v48;
  }

  MEMORY[0x1E12A2F50](v42, -1, -1);
  MEMORY[0x1E12A2F50](v35, -1, -1);

  return v66;
}

void *RemoteFlowPluginPackage.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t RemoteFlowPluginPackage.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

void *protocol witness for PluginPackage.loadPlugin() in conformance RemoteFlowPluginPackage()
{
  v0 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();
  lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, 255, type metadata accessor for RemoteFlowPluginBundleConversationHandler, &protocol conformance descriptor for RemoteFlowPluginBundleConversationHandler);
  return v0;
}

uint64_t protocol witness for PluginCapabilityExposing.get(capability:) in conformance RemoteFlowPluginPackage@<X0>(void *a1@<X8>)
{
  v2 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();
  lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, 255, type metadata accessor for RemoteFlowPluginBundleConversationHandler, &protocol conformance descriptor for RemoteFlowPluginBundleConversationHandler);
  result = swift_getObjectType();
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t FlowPluginPackageFinder.init(wrapping:sharedFlowPluginServiceClient:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

void *FlowPluginPackageFinder.findAllPackages()()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = dispatch thunk of PluginFinder.findAllPackages()();
  v3 = *(v2 + 16);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v2 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v4, v20);
    outlined init with copy of ReferenceResolutionClientProtocol(v20, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
    v6 = type metadata accessor for RemoteFlowPluginPackage();
    if (swift_dynamicCast())
    {
      v8 = v15;
      *(&v17 + 1) = v6;
      v18 = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v7, type metadata accessor for RemoteFlowPluginPackage, &protocol conformance descriptor for RemoteFlowPluginPackage);
    }

    else
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v20, v19);
      type metadata accessor for NSBundle();
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        v16 = 0u;
        v17 = 0u;
        v18 = 0;
        outlined destroy of ReferenceResolutionClientProtocol?(&v16, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
        goto LABEL_4;
      }

      v9 = *(v1 + 56);
      v10 = v15;

      v8 = specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v10, v9);
      *(&v17 + 1) = v6;
      v18 = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v11, type metadata accessor for RemoteFlowPluginPackage, &protocol conformance descriptor for RemoteFlowPluginPackage);
    }

    *&v16 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    outlined init with take of ReferenceResolutionClientProtocol(&v16, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    }

    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
    }

    v5[2] = v13 + 1;
    outlined init with take of ReferenceResolutionClientProtocol(v19, &v5[5 * v13 + 4]);
LABEL_4:
    v4 += 40;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t FlowPluginPackageFinder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t FlowPluginPackageFinder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *protocol witness for PluginFinder.findAllPackages() in conformance FlowPluginPackageFinder()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  v2 = dispatch thunk of PluginFinder.findAllPackages()();

  v3 = specialized Sequence.compactMap<A>(_:)(v2, v1);

  return v3;
}

void *specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(void *a1, uint64_t a2)
{
  v4 = [a1 infoDictionary];
  if (v4)
  {
    v5 = v4;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v6 = static IntentTopic.makeFromBundleInfoPlist(dictionary:)();

  v7 = NSBundle.packageId.getter();
  v9 = v8;
  v10 = [a1 bundlePath];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  type metadata accessor for RemoteFlowPluginPackage();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = v9;
  v14[6] = v11;
  v14[7] = v13;
  v14[4] = a2;
  v14[5] = v6;
  outlined init with copy of AffinityScorer?(v20, &v17);
  if (v18)
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v17, v19);
  }

  else
  {
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA7D960);
    MEMORY[0x1E12A1580](v7, v9);
    MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA7D990);
    v15 = v19[0];

    specialized logAction<A>(label:_:)(v15, *(&v15 + 1), v7, v9, v19);

    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    if (v18)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v17, &_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(v19, (v14 + 8));
  return v14;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v3, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
      v5 = type metadata accessor for RemoteFlowPluginPackage();
      if (swift_dynamicCast())
      {
        break;
      }

      outlined init with copy of ReferenceResolutionClientProtocol(v3, v18);
      type metadata accessor for NSBundle();
      if (swift_dynamicCast())
      {
        v8 = *(a2 + 56);
        v9 = v19;

        v7 = specialized RemoteFlowPluginPackage.__allocating_init(bundle:sharedFlowPluginServiceClient:)(v9, v8);
        *(&v16 + 1) = v5;
        v17 = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v10, type metadata accessor for RemoteFlowPluginPackage, &protocol conformance descriptor for RemoteFlowPluginPackage);

        goto LABEL_9;
      }

      v15 = 0u;
      v16 = 0u;
      v17 = 0;
      outlined destroy of ReferenceResolutionClientProtocol?(&v15, &_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
LABEL_4:
      v3 += 40;
      if (!--v2)
      {
        return v4;
      }
    }

    v7 = v19;
    *(&v16 + 1) = v5;
    v17 = lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(&lazy protocol witness table cache variable for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage, v6, type metadata accessor for RemoteFlowPluginPackage, &protocol conformance descriptor for RemoteFlowPluginPackage);
LABEL_9:
    *&v15 = v7;
    outlined init with take of ReferenceResolutionClientProtocol(&v15, v18);
    outlined init with take of ReferenceResolutionClientProtocol(v18, &v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v12 = v4[2];
    v11 = v4[3];
    if (v12 >= v11 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
    }

    v4[2] = v12 + 1;
    outlined init with take of ReferenceResolutionClientProtocol(&v15, &v4[5 * v12 + 4]);
    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t type metadata accessor for NSBundle()
{
  result = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSBundle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RemoteFlowPluginPackage and conformance RemoteFlowPluginPackage(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::Int RepeatRecentDialogIntent.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

unint64_t specialized static RepeatRecentDialogIntent.fromParse(_:)(uint64_t a1)
{
  v55 = type metadata accessor for UsoEntity_common_Interjection.DefinedValues();
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSg_AFtMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v48 - v9;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v48 - v13;
  v14 = type metadata accessor for Siri_Nlu_External_UserParse();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Parse();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for USOParse();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a1, v18, v24);
  if ((*(v19 + 88))(v21, v18) != *MEMORY[0x1E69D0168])
  {
    (*(v19 + 8))(v21, v18);
    return 3;
  }

  (*(v19 + 96))(v21, v18);
  (*(v23 + 32))(v26, v21, v22);
  v27 = USOParse.userParse.getter();
  v28 = MEMORY[0x1E129C0F0](v27);
  (*(v15 + 8))(v17, v14);
  v29 = v22;
  if (!*(v28 + 16))
  {

    (*(v23 + 8))(v26, v22);
    return 3;
  }

  v30 = v60;
  v31 = v61;
  v32 = v62;
  (*(v61 + 16))(v60, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v62);

  v33 = v63;
  (*(v31 + 32))(v63, v30, v32);
  if (Siri_Nlu_External_UserDialogAct.hasWantedToRepeat.getter())
  {
    (*(v31 + 8))(v33, v32);
    (*(v23 + 8))(v26, v29);
    return 0;
  }

  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v36 = result;
    v37 = __CocoaSet.count.getter();
    result = v36;
    v35 = v59;
    if (!v37)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v35 = v59;
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:

      static UsoTask_CodegenConverter.convert(task:)();

      if (v66)
      {
        outlined init with take of Any(&v65, v67);
        outlined init with copy of Any(v67, &v65);
        type metadata accessor for UsoTask_repeat_uso_NoEntity();
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v67);
          (*(v31 + 8))(v33, v32);
          (*(v23 + 8))(v26, v29);

          __swift_destroy_boxed_opaque_existential_1Tm(&v65);
          return 0;
        }

        type metadata accessor for UsoTask_skipBackward_uso_NoEntity();
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v67);
          (*(v31 + 8))(v33, v32);
          (*(v23 + 8))(v26, v29);

          __swift_destroy_boxed_opaque_existential_1Tm(&v65);
          return 1;
        }

        type metadata accessor for UsoTask_noVerb_common_Interjection();
        if (swift_dynamicCast() && (, outlined init with copy of Any(v67, v64), swift_dynamicCast()))
        {

          dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

          v51 = v29;
          v50 = v26;
          v49 = v23;
          v38 = v58;
          if (v64[0])
          {
            dispatch thunk of UsoEntity_common_Interjection.definedValue.getter();

            v39 = v55;
          }

          else
          {
            v39 = v55;
            (*(v35 + 56))(v58, 1, 1, v55);
          }

          v40 = v57;
          v41 = v56;
          (*(v35 + 104))(v56, *MEMORY[0x1E69D1DC8], v39);
          (*(v35 + 56))(v41, 0, 1, v39);
          v42 = *(v54 + 48);
          outlined init with copy of UsoEntity_common_Interjection.DefinedValues?(v38, v40);
          outlined init with copy of UsoEntity_common_Interjection.DefinedValues?(v41, v40 + v42);
          v43 = *(v35 + 48);
          if (v43(v40, 1, v39) == 1)
          {

            outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
            v44 = v57;
            outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
            __swift_destroy_boxed_opaque_existential_1Tm(v67);
            (*(v31 + 8))(v63, v32);
            (*(v49 + 8))(v50, v51);
            if (v43(v44 + v42, 1, v39) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
LABEL_35:
              __swift_destroy_boxed_opaque_existential_1Tm(&v65);
              return 2;
            }
          }

          else
          {
            v45 = v53;
            outlined init with copy of UsoEntity_common_Interjection.DefinedValues?(v40, v53);
            if (v43(v40 + v42, 1, v39) != 1)
            {
              v46 = v52;
              (*(v35 + 32))(v52, v40 + v42, v39);
              lazy protocol witness table accessor for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues();
              LODWORD(v60) = dispatch thunk of static Equatable.== infix(_:_:)();

              v47 = *(v35 + 8);
              v47(v46, v39);
              outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
              outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
              __swift_destroy_boxed_opaque_existential_1Tm(v67);
              (*(v31 + 8))(v63, v32);
              (*(v49 + 8))(v50, v51);
              v47(v45, v39);
              outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
              if (v60)
              {
                goto LABEL_35;
              }

              goto LABEL_26;
            }

            outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
            v44 = v57;
            outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
            __swift_destroy_boxed_opaque_existential_1Tm(v67);
            (*(v31 + 8))(v63, v32);
            (*(v49 + 8))(v50, v51);
            (*(v35 + 8))(v45, v39);
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSg_AFtMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSg_AFtMR);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v67);
          (*(v31 + 8))(v33, v32);
          (*(v23 + 8))(v26, v29);
        }

LABEL_26:
        __swift_destroy_boxed_opaque_existential_1Tm(&v65);
        return 3;
      }

      (*(v31 + 8))(v33, v32);
      (*(v23 + 8))(v26, v29);
      outlined destroy of ReferenceResolutionClientProtocol?(&v65, &_sypSgMd, &_sypSgMR);
      return 3;
    }
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0);
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type RepeatRecentDialogIntent and conformance RepeatRecentDialogIntent()
{
  result = lazy protocol witness table cache variable for type RepeatRecentDialogIntent and conformance RepeatRecentDialogIntent;
  if (!lazy protocol witness table cache variable for type RepeatRecentDialogIntent and conformance RepeatRecentDialogIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatRecentDialogIntent and conformance RepeatRecentDialogIntent);
  }

  return result;
}

uint64_t outlined init with copy of UsoEntity_common_Interjection.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_InterjectionC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_Interjection.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_Interjection.DefinedValues and conformance UsoEntity_common_Interjection.DefinedValues);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So8NSStringCs5NeverOTg5069_s14SiriKitRuntime18RequestContextDataC6encode4withySo7NSCoderC_tFSo8D9CSSXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v20 = v1 + 64;
    v21 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v6;
      v10 = (*(v1 + 48) + 16 * v5);
      v12 = *v10;
      v11 = v10[1];

      MEMORY[0x1E12A1410](v12, v11);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v21 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v9);
      if ((v13 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v5 & 0x3F));
      if (v14)
      {
        v8 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v9 << 6;
        v16 = v9 + 1;
        v17 = (v20 + 8 * v9);
        while (v16 < (v8 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = outlined consume of Set<String>.Index._Variant(v5, v7, 0);
            v8 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<String>.Index._Variant(v5, v7, 0);
      }

LABEL_4:
      v6 = v22 + 1;
      v5 = v8;
      if (v22 + 1 == v2)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t RequestContextData.__allocating_init(startRequest:assistantId:didPreviouslyFallbackToServer:isRecognizeMyVoiceEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = a5;
  ObjectType = swift_getObjectType();

  return specialized RequestContextData.__allocating_init(startRequest:assistantId:didPreviouslyFallbackToServer:isRecognizeMyVoiceEnabled:)(a1, a3, a4, v8, v7, v6, ObjectType, a2);
}

uint64_t static RequestContextData.builder.getter()
{
  type metadata accessor for RequestContextData.Builder(0);
  v0 = swift_allocObject();
  RequestContextData.Builder.init()();
  return v0;
}

uint64_t static RequestContextData.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static RequestContextData.supportsSecureCoding = a1;
  return result;
}

uint64_t RequestContextData.inputOrigin.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin);

  return v1;
}

uint64_t RequestContextData.isEyesFree.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree);
}

{
  return MEMORY[0x1EEE3B1B0]();
}

uint64_t RequestContextData.isVoiceTriggerEnabled.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled);
}

{
  return MEMORY[0x1EEE3B210]();
}

uint64_t RequestContextData.isTextToSpeechEnabled.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled);
}

{
  return MEMORY[0x1EEE3B200]();
}

void *RequestContextData.peerInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v2 = v1;
  return v1;
}

void *RequestContextData.endpointInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
  v2 = v1;
  return v1;
}

void *RequestContextData.instanceInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo);
  v2 = v1;
  return v1;
}

void *RequestContextData.originatingHome.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome);
  v2 = v1;
  return v1;
}

uint64_t RequestContextData.currentDeviceAssistantId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId);

  return v1;
}

uint64_t RequestContextData.isTriggerlessFollowup.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup);
}

{
  return MEMORY[0x1EEE3B208]();
}

uint64_t RequestContextData.voiceAudioSessionId.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
}

{
  return MEMORY[0x1EEE3B1F8]();
}

uint64_t RequestContextData.isSystemApertureEnabled.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled);
}

{
  return MEMORY[0x1EEE3B220]();
}

uint64_t RequestContextData.isLiveActivitiesSupported.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported);
}

{
  return MEMORY[0x1EEE3B230]();
}

uint64_t RequestContextData.isInAmbient.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient);
}

{
  return MEMORY[0x1EEE3B1C0]();
}

uint64_t RequestContextData.responseMode.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *RequestContextData.conjunctionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
  v2 = v1;
  return v1;
}

uint64_t RequestContextData.isDeviceShowingLockScreen.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen);
}

{
  return MEMORY[0x1EEE3B228]();
}

uint64_t RequestContextData.isDeviceLocked.getter()
{
  return *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked);
}

{
  return MEMORY[0x1EEE3B1D8]();
}

id RequestContextData.init(inputOrigin:audioSource:audioDestination:responseMode:isEyesFree:isDirectAction:isVoiceTriggerEnabled:isTextToSpeechEnabled:peerInfo:endpointInfo:instanceInfo:bargeInModes:approximatePreviousTTSInterval:restrictions:originatingHome:currentDeviceAssistantId:isTriggerlessFollowup:didPreviouslyFallbackToServer:isSpeechRequest:isUserOnActivePhoneCall:voiceTriggerEventInfo:isRecognizeMyVoiceEnabled:voiceAudioSessionId:isSystemApertureEnabled:isLiveActivitiesSupported:isInAmbient:positionInSession:conjunctionInfo:isDeviceShowingLockScreen:isDeviceLocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char a22, uint64_t a23, char a24, int a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, char a32)
{
  v35 = &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  *v35 = a1;
  v35[1] = a2;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a4, &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v36 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
  v37 = type metadata accessor for ResponseMode();
  v38 = *(v37 - 8);
  (*(v38 + 16))(&v32[v36], a5, v37);
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = a6;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = a7;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = a8;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = a9;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = a10;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = a11;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = a12;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = a13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v39 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions;
  v40 = type metadata accessor for Restrictions();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v32[v39], a15, v40);
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = a16;
  v42 = &v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  *v42 = a17;
  v42[1] = a18;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = a19;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = a20;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = a21;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = a22;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = a23;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = a24;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = a25;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = a26;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = a27;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = a28;
  v43 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession;
  v44 = type metadata accessor for RequestPositionInSession();
  v45 = *(v44 - 8);
  (*(v45 + 16))(&v32[v43], a29, v44);
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = a30;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = a31;
  v32[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = a32;
  v54.receiver = v32;
  v54.super_class = type metadata accessor for RequestContextData(0);
  v46 = objc_msgSendSuper2(&v54, sel_init);
  (*(v45 + 8))(a29, v44);
  (*(v41 + 8))(a15, v40);
  outlined destroy of ReferenceResolutionClientProtocol?(a14, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v38 + 8))(a5, v37);
  outlined destroy of ReferenceResolutionClientProtocol?(a4, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return v46;
}

uint64_t RequestContextData.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  RequestContextData.Builder.init()();
  return v0;
}

uint64_t key path setter for RequestContextData.Builder.audioSource : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return (*(**a2 + 352))(v6);
}

uint64_t key path setter for RequestContextData.Builder.audioDestination : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  return (*(**a2 + 376))(v6);
}

uint64_t key path setter for RequestContextData.Builder.responseMode : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  return (*(**a2 + 400))(v6);
}

uint64_t key path setter for RequestContextData.Builder.approximatePreviousTTSInterval : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  return (*(**a2 + 616))(v6);
}

uint64_t key path setter for RequestContextData.Builder.restrictions : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  return (*(**a2 + 640))(v6);
}

uint64_t key path setter for RequestContextData.Builder.positionInSession : RequestContextData.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  return (*(**a2 + 952))(v6);
}

id RequestContextData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestContextData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestContextData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
  v8 = MEMORY[0x1E69E7CC0];
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

uint64_t specialized RequestContextData.__allocating_init(startRequest:assistantId:didPreviouslyFallbackToServer:isRecognizeMyVoiceEnabled:)(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a2;
  v81 = a6;
  v78 = a5;
  v79 = a4;
  v83 = a3;
  v77 = type metadata accessor for RequestPositionInSession();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Restrictions();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v62 - v17;
  v19 = type metadata accessor for ResponseMode();
  v73 = *(v19 - 8);
  v74 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v62 - v25;
  v27 = type metadata accessor for InputOrigin();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a7;
  v33 = (*(a8 + 8))(a7, a8, v29);
  if (v33)
  {
    v34 = v33;
    v35 = *(a8 + 24);
    v82 = a1;
    v35(v32, a8);
    v36 = InputOrigin.aceInputOrigin.getter();
    v69 = v37;
    v70 = v36;
    (*(v28 + 8))(v31, v27);
    RequestContextData.audioSource.getter();
    AudioSource.init(aceValue:)();
    RequestContextData.audioDestination.getter();
    AudioDestination.init(aceValue:)();
    RequestContextData.responseMode.getter();
    ResponseMode.init(aceValue:)();
    v39 = v73;
    v38 = v74;
    v40 = *(v73 + 48);
    v41 = v40(v18, 1, v74);
    v71 = v26;
    v72 = v23;
    if (v41 == 1)
    {
      static ResponseMode.displayForward.getter();
      if (v40(v18, 1, v38) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      }
    }

    else
    {
      (*(v39 + 32))(v84, v18, v38);
    }

    LODWORD(v74) = RequestContextData.isEyesFree.getter();
    type metadata accessor for StartDirectActionRequestMessage();
    LODWORD(v73) = swift_dynamicCastClass() != 0;
    v68 = RequestContextData.isVoiceTriggerEnabled.getter();
    v66 = RequestContextData.isTextToSpeechEnabled.getter();
    v67 = RequestContextData.bargeInModes.getter();
    RequestContextData.approximatePreviousTTSInterval.getter();
    RequestContextData.deviceRestrictions.getter();
    Restrictions.init(aceValue:)();
    v65 = RequestContextData.isTriggerlessFollowup.getter();
    type metadata accessor for StartSpeechRequestMessage();
    v64 = swift_dynamicCastClass() != 0;
    v63 = RequestContextData.voiceTriggerEventInfo.getter();
    v49 = RequestContextData.voiceAudioSessionId.getter();
    v50 = RequestContextData.isSystemApertureEnabled.getter();
    v51 = RequestContextData.isLiveActivitiesSupported.getter();
    v52 = RequestContextData.isInAmbient.getter();
    v53 = RequestContextData.conjunctionInfo.getter();
    v54 = RequestContextData.isDeviceShowingLockScreen.getter();
    v55 = RequestContextData.isDeviceLocked.getter();
    v56 = v76;
    (*(v75 + 104))(v76, *MEMORY[0x1E69CE5A0], v77);
    HIBYTE(v61) = v55 & 1;
    LOBYTE(v61) = v54 & 1;
    BYTE2(v60) = v52 & 1;
    BYTE1(v60) = v51 & 1;
    LOBYTE(v60) = v50 & 1;
    HIDWORD(v59) = v49;
    LOBYTE(v59) = v78 & 1;
    HIWORD(v58) = v64;
    BYTE1(v58) = v79 & 1;
    LOBYTE(v58) = v65 & 1;
    v48 = (*(v81 + 344))(v70, v69, v71, v72, v84, v74 & 1, v73, v68 & 1, v66 & 1, 0, 0, 0, v67, v85, v86, 0, v80, v83, v58, v63, v59, v60, v56, v53, v61);
  }

  else
  {
    v42 = a1;

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.executor);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = v42;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1DC659000, v44, v45, "RequestContextData.init(startSpeechRequest: StartSpeechRequestMessage) - missing requestContextData", v47, 2u);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    return 0;
  }

  return v48;
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for RequestContextData(uint64_t a1)
{
  _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for AudioSource?, MEMORY[0x1E69D3410]);
  if (v1 <= 0x3F)
  {
    _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for AudioDestination?, MEMORY[0x1E69D35C0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ResponseMode();
      if (v3 <= 0x3F)
      {
        _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x1E6968130]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Restrictions();
          if (v5 <= 0x3F)
          {
            type metadata accessor for RequestPositionInSession();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of RequestContextData.__allocating_init(inputOrigin:audioSource:audioDestination:responseMode:isEyesFree:isDirectAction:isVoiceTriggerEnabled:isTextToSpeechEnabled:peerInfo:endpointInfo:instanceInfo:bargeInModes:approximatePreviousTTSInterval:restrictions:originatingHome:currentDeviceAssistantId:isTriggerlessFollowup:didPreviouslyFallbackToServer:isSpeechRequest:isUserOnActivePhoneCall:voiceTriggerEventInfo:isRecognizeMyVoiceEnabled:voiceAudioSessionId:isSystemApertureEnabled:isLiveActivitiesSupported:isInAmbient:positionInSession:conjunctionInfo:isDeviceShowingLockScreen:isDeviceLocked:)()
{
  v1 = *(v0 + 344);

  return v1();
}

void type metadata completion function for RequestContextData.Builder(uint64_t a1)
{
  _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for AudioSource?, MEMORY[0x1E69D3410]);
  if (v1 <= 0x3F)
  {
    _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for AudioDestination?, MEMORY[0x1E69D35C0]);
    if (v2 <= 0x3F)
    {
      _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for ResponseMode?, MEMORY[0x1E69D3550]);
      if (v3 <= 0x3F)
      {
        _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x1E6968130]);
        if (v4 <= 0x3F)
        {
          _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for Restrictions?, MEMORY[0x1E69D3560]);
          if (v5 <= 0x3F)
          {
            _s13SiriUtilities11AudioSourceVSgMaTm_0(319, &lazy cache variable for type metadata for RequestPositionInSession?, MEMORY[0x1E69CE5B0]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void _s13SiriUtilities11AudioSourceVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

char *specialized static ResponseTextExtractionUtil.extractResponseText(fromAddViews:)(void *a1)
{
  v2 = [a1 dialogPhase];
  v3 = [objc_opt_self() dialogPhaseForAceDialogPhase_];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = [a1 views];
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  type metadata accessor for SAAceView();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (([v3 isSummaryDialogPhase] & 1) == 0 && (objc_msgSend(v3, sel_isConfirmationDialogPhase) & 1) == 0 && !objc_msgSend(v3, sel_isCompletionDialogPhase))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v43 = v3;
  if (v6 >> 62)
  {
LABEL_37:
    v45 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_38:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v45 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_38;
  }

LABEL_8:
  v8 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v9 = &selRef_setMitigationSource_;
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E12A1FE0](v10, v6);
      }

      else
      {
        if (v10 >= *(v45 + 16))
        {
          goto LABEL_36;
        }

        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v14 = [v12 v9[336]];
      if (v14)
      {
        v15 = v14;
        v16 = v9;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = v17 & 0xFFFFFFFFFFFFLL;
        v9 = v16;
      }

      else
      {
        v20 = 0;
        v19 = 0xE000000000000000;
      }

      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v20;
      }

      if (!v21)
      {
        break;
      }

      v11 = [v13 v9[336]];
      if (v11)
      {
        goto LABEL_27;
      }

LABEL_11:

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_39;
      }
    }

    v22 = [v13 dialog];
    if (!v22)
    {
      goto LABEL_11;
    }

    v23 = v22;
    v24 = [v22 content];

    if (!v24)
    {
      goto LABEL_11;
    }

    v25 = [v24 text];

    if (!v25)
    {
      goto LABEL_11;
    }

    v11 = v25;
LABEL_27:
    v26 = v11;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
    }

    v31 = *(v44 + 2);
    v30 = *(v44 + 3);
    if (v31 >= v30 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v44);
    }

    *(v44 + 2) = v31 + 1;
    v32 = &v44[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v29;
  }

  while (v8 != v7);
LABEL_39:

  v33 = v44;
  if (!*(v44 + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.conversationBridge);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x1E12A16D0](v44, MEMORY[0x1E69E6158]);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v46);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1DC659000, v35, v36, "Found SAUIAddViews response text: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  return v33;
}

unint64_t type metadata accessor for SAAceView()
{
  result = lazy cache variable for type metadata for SAAceView;
  if (!lazy cache variable for type metadata for SAAceView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAAceView);
  }

  return result;
}

uint64_t TTResponseMessage.MitigationDecision.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69D0270])
  {
    return 0x64657463656C6573;
  }

  if (v7 == *MEMORY[0x1E69D0278])
  {
    return 0x657461676974696DLL;
  }

  if (v7 == *MEMORY[0x1E69D0268])
  {
    v9 = 1652121965;
    return v9 | 0x74694D6500000000;
  }

  if (v7 == *MEMORY[0x1E69D0260])
  {
    v9 = 1668444006;
    return v9 | 0x74694D6500000000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

unint64_t ResultCandidateProcessingStatus.rawValue.getter(char a1)
{
  result = 0x696C616974696E69;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000011;
      break;
    case 2:
    case 5:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
    case 11:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x6F69747563657865;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 12:
    case 14:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0x5364696C61766E69;
      break;
    case 17:
      result = 0x64656C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t RoutingDecision.value.getter@<X0>(char *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for RoutingDecision(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  outlined init with copy of RoutingDecision(v3, v10, type metadata accessor for RoutingDecision);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v12 + 32);
    v18(v17, v10, v11);
    v18(a1, v17, v11);
LABEL_6:
    v19 = 0;
    return (*(v12 + 56))(a1, v19, 1, v11);
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v10, type metadata accessor for RoutingDecision);
  outlined init with copy of RoutingDecision(v3, v7, type metadata accessor for RoutingDecision);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *(v12 + 32);
    v20(v14, v7, v11);
    v20(a1, v14, v11);
    goto LABEL_6;
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v7, type metadata accessor for RoutingDecision);
  v19 = 1;
  return (*(v12 + 56))(a1, v19, 1, v11);
}

uint64_t SpeechContext.__allocating_init(speechPackage:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = [v3 recognition];
  v5 = [v4 aceRecognition];

  *(v2 + 24) = v5;
  return v2;
}

uint64_t ResultCandidateState.__allocating_init(withResultCandidateId:resultCandidateType:userId:voiceIdScore:voiceIdClassification:lowScoreThreshold:fallbackParse:asrLocation:serverFallbackReason:meetsUserSessionThreshold:meetsPersonalRequestThreshold:siriXRedirectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14)
{
  v60 = a7;
  v61 = a6;
  v56[0] = a4;
  v64 = a5;
  v65 = a14;
  v62 = a12;
  v63 = a13;
  v58 = a11;
  v59 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = v56 - v18;
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v20 = 0;
  v20[1] = 0;
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v21 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v22 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v22 - 8) + 56))(v19 + v21, 1, 1, v22);
  v23 = (v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v23 = 0;
  v23[1] = 0;
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v24 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v25 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v26 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v27 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v27 - 8) + 56))(v19 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  v29 = type metadata accessor for ServerFallbackReason();
  (*(*(v29 - 8) + 56))(v19 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v31 = type metadata accessor for SiriXRedirectContext();
  (*(*(v31 - 8) + 56))(v19 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v33 = type metadata accessor for SelectedUserAttributes();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v56[1] = v34 + 56;
  v57 = v35;
  v35(v19 + v32, 1, 1, v33);
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v67 = a3;
  v36 = a3;
  v37 = v56[0];
  outlined init with copy of RoutingDecision(v36, v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, type metadata accessor for ResultCandidateType);
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v39 = *MEMORY[0x1E69D0AA0];
  v40 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v40 - 8) + 104))(v19 + v38, v39, v40);
  *(v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v41 = v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v42 = type metadata accessor for UUID();
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  v43 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v44 = type metadata accessor for OSSignpostID();
  (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v46 = type metadata accessor for UserID();
  v47 = *(v46 - 8);
  (*(v47 + 16))(v19 + v45, v37, v46);
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(a9, v19 + v26, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(a10, v19 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v49 = v58;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v58, v19 + v48, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v51 = *MEMORY[0x1E69D02D8];
  v52 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v52 - 8) + 104))(v19 + v50, v51, v52);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  if ((v59 & 0x100000000) != 0)
  {
    static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  }

  v53 = v66;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a10, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a9, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v47 + 8))(v37, v46);
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v67, type metadata accessor for ResultCandidateType);
  v57(v53, 0, 1, v33);
  v54 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v53, v19 + v54, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  swift_endAccess();
  return v19;
}

void __swiftcall TextContext.init(utterance:trpId:tcuId:)(SiriKitRuntime::TextContext *__return_ptr retstr, Swift::String utterance, Swift::String_optional trpId, Swift::String_optional tcuId)
{
  retstr->utterance = utterance;
  retstr->trpId = trpId;
  retstr->tcuId = tcuId;
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

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ResultCandidateProcessingStatus(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ResultCandidateProcessingStatus.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ResultCandidateProcessingStatus.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResultCandidateProcessingStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ResultCandidateProcessingStatus.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ResultCandidateProcessingStatus(uint64_t a1)
{
  ResultCandidateProcessingStatus.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResultCandidateProcessingStatus(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ResultCandidateProcessingStatus.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ResultCandidateProcessingStatus@<X0>(Swift::String *a1@<X0>, SiriKitRuntime::ResultCandidateProcessingStatus_optional *a2@<X8>)
{
  result = specialized ResultCandidateProcessingStatus.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ResultCandidateProcessingStatus@<X0>(unint64_t *a1@<X8>)
{
  result = ResultCandidateProcessingStatus.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ResultCandidateState.resultCandidateId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResultCandidateState.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v4 = type metadata accessor for UserID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for ResultCandidateState.nlLanguageVariantResult : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  return (*(**a2 + 344))(v6);
}

uint64_t ResultCandidateState.processingStatus.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.processingStatus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.nlUserParses.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void *ResultCandidateState.serverContextUpdateCandidate.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ResultCandidateState.serverContextUpdateCandidate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ResultCandidateState.selected.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.selected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.preExecutionDecision.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.preExecutionDecision.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.preExcutionRuleType.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.preExcutionRuleType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for ResultCandidateState.mitigationDecision : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  return (*(**a2 + 560))(v6);
}

uint64_t key path setter for ResultCandidateState.routingDecision : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingDecision(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoutingDecision(a1, v6, type metadata accessor for RoutingDecision);
  return (*(**a2 + 584))(v6);
}

uint64_t ResultCandidateState.routingDecision.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  swift_beginAccess();
  return outlined init with copy of RoutingDecision(v1 + v3, a1, type metadata accessor for RoutingDecision);
}

uint64_t ResultCandidateState.routingDecision.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  swift_beginAccess();
  outlined assign with take of RoutingDecision(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for ResultCandidateState.nlResponseStatusCode : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 608))(v7);
}

uint64_t ResultCandidateState.nlResponseStatusCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  swift_beginAccess();
  v4 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ResultCandidateState.nlResponseStatusCode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  swift_beginAccess();
  v4 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ResultCandidateState.overrideFTMAsPerServer.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.overrideFTMAsPerServer.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.serverFallback.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.serverFallback.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ResultCandidateState.infoDomainFallback.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ResultCandidateState.infoDomainFallback.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for ResultCandidateState.fallbackParse : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  return (*(**a2 + 704))(v6);
}

uint64_t key path setter for ResultCandidateState.serverFallbackReason : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  return (*(**a2 + 728))(v6);
}

uint64_t key path setter for ResultCandidateState.siriXRedirectContext : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  return (*(**a2 + 752))(v6);
}

uint64_t key path setter for ResultCandidateState.selectedUserAttribute : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  return (*(**a2 + 800))(v6);
}

uint64_t ResultCandidateState.init(withResultCandidateId:resultCandidateType:userId:voiceIdScore:voiceIdClassification:lowScoreThreshold:fallbackParse:asrLocation:serverFallbackReason:meetsUserSessionThreshold:meetsPersonalRequestThreshold:siriXRedirectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14)
{
  v60 = a7;
  v61 = a6;
  v56[0] = a4;
  v64 = a5;
  v65 = a14;
  v62 = a12;
  v63 = a13;
  v58 = a11;
  v59 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = v56 - v19;
  v20 = (v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v20 = 0;
  v20[1] = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v21 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v22 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
  v23 = (v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v23 = 0;
  v23[1] = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v24 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v25 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v26 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v27 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v27 - 8) + 56))(v14 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  v29 = type metadata accessor for ServerFallbackReason();
  (*(*(v29 - 8) + 56))(v14 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v31 = type metadata accessor for SiriXRedirectContext();
  (*(*(v31 - 8) + 56))(v14 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v33 = type metadata accessor for SelectedUserAttributes();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v56[1] = v34 + 56;
  v57 = v35;
  v35(v14 + v32, 1, 1, v33);
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v67 = a3;
  v36 = a3;
  v37 = v56[0];
  outlined init with copy of RoutingDecision(v36, v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, type metadata accessor for ResultCandidateType);
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v39 = *MEMORY[0x1E69D0AA0];
  v40 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v40 - 8) + 104))(v14 + v38, v39, v40);
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v41 = v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v42 = type metadata accessor for UUID();
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  v43 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v44 = type metadata accessor for OSSignpostID();
  (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v46 = type metadata accessor for UserID();
  v47 = *(v46 - 8);
  (*(v47 + 16))(v14 + v45, v37, v46);
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(a9, v14 + v26, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(a10, v14 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v49 = v58;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v58, v14 + v48, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v51 = *MEMORY[0x1E69D02D8];
  v52 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v52 - 8) + 104))(v14 + v50, v51, v52);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  if ((v59 & 0x100000000) != 0)
  {
    static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  }

  v53 = v66;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a10, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a9, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v47 + 8))(v37, v46);
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v67, type metadata accessor for ResultCandidateType);
  v57(v53, 0, 1, v33);
  v54 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v53, v14 + v54, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  swift_endAccess();
  return v14;
}

uint64_t ResultCandidateState.description.getter()
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v47 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for RoutingDecision(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(305);
  MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA86D60);
  MEMORY[0x1E12A1580](v0[2], v0[3]);
  v10 = MEMORY[0x1E12A1580](0xD00000000000001ALL, 0x80000001DCA86D80);
  v51 = (*(*v0 + 288))(v10);
  v52 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v12 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v12);

  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA86DA0);
  type metadata accessor for ResultCandidateType(0);
  _print_unlocked<A, B>(_:_:)();
  v13 = MEMORY[0x1E12A1580](0x617265747475202CLL, 0xEE0022203A65636ELL);
  v14 = (*(*v0 + 888))(v13);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = 0x3E6C696E3CLL;
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v14, v16);

  v17 = MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA86DC0);
  v18 = (*(*v0 + 408))(v17);
  v19 = ResultCandidateProcessingStatus.rawValue.getter(v18);
  MEMORY[0x1E12A1580](v19);

  v20 = MEMORY[0x1E12A1580](0x7463656C6573202CLL, 0xEB000000003A6465);
  v21 = (*(*v0 + 480))(v20);
  v22 = (v21 & 1) == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x1E12A1580](v23, v24);

  v25 = MEMORY[0x1E12A1580](0xD000000000000012, 0x80000001DCA86DE0);
  (*(*v0 + 576))(v25);
  _print_unlocked<A, B>(_:_:)();
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v9, type metadata accessor for RoutingDecision);
  v26 = MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA86E00);
  (*(*v0 + 552))(v26);
  v27 = 0x3E6C696E3CLL;
  v28 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v28);

  MEMORY[0x1E12A1580](0x644972657375202CLL, 0xEA0000000000203ALL);
  type metadata accessor for UserID();
  lazy protocol witness table accessor for type UserID and conformance UserID();
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v29);

  v30 = MEMORY[0x1E12A1580](0xD000000000000012, 0x80000001DCA86E20);
  v31 = (*(*v0 + 648))(v30);
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v32)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x1E12A1580](v33, v34);

  MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA86E40);
  MEMORY[0x1E12A1580](0x3E6C696E3CLL, 0xE500000000000000);
  v35 = MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA86E60);
  (*(*v0 + 792))(v35);
  v36 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v36);

  MEMORY[0x1E12A1580](0x636F4C727361202CLL, 0xEF203A6E6F697461);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v4, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v37 = type metadata accessor for ExecutionLocation();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v4, 1, v37) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
    v39 = 0xE500000000000000;
  }

  else
  {
    v27 = ExecutionLocation.description.getter();
    v39 = v40;
    (*(v38 + 8))(v4, v37);
  }

  MEMORY[0x1E12A1580](v27, v39);

  v41 = MEMORY[0x1E12A1580](0xD000000000000018, 0x80000001DCA86E80);
  v42 = v49;
  (*(*v0 + 720))(v41);
  v43 = Optional.debugDescription.getter();
  v45 = v44;
  outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1E12A1580](v43, v45);

  MEMORY[0x1E12A1580](93, 0xE100000000000000);
  return v53;
}

uint64_t key path setter for ResultCandidateState.serverFallbackContextId : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(**a2 + 848))(v6);
}

uint64_t ResultCandidateState.serverFallbackContextId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(a1, v1 + v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  return outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

void (*ResultCandidateState.serverFallbackContextId.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v5[11] = v7;
  v5[12] = v9;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v9, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return ResultCandidateState.serverFallbackContextId.modify;
}

void ResultCandidateState.serverFallbackContextId.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 11);
  v4 = *(*a1 + 12);
  v6 = *(*a1 + 9);
  v5 = *(*a1 + 10);
  if (a2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(*(*a1 + 11), v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_beginAccess();
    outlined assign with copy of ReferenceResolutionClientProtocol?(v5, v6 + v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_endAccess();
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    swift_beginAccess();
    outlined assign with copy of ReferenceResolutionClientProtocol?(v3, v6 + v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_endAccess();
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t key path setter for ResultCandidateState.commitSignpostID : ResultCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  return (*(**a2 + 872))(v6);
}

uint64_t ResultCandidateState.commitSignpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  swift_beginAccess();
  v4 = type metadata accessor for ResultCandidateState.LoggingMetadata(0);
  return outlined init with copy of ReferenceResolutionClientProtocol?(v3 + *(v4 + 20), a1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
}

uint64_t ResultCandidateState.commitSignpostID.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  swift_beginAccess();
  v4 = type metadata accessor for ResultCandidateState.LoggingMetadata(0);
  outlined assign with copy of ReferenceResolutionClientProtocol?(a1, v3 + *(v4 + 20), &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  swift_endAccess();
  return outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
}

void (*ResultCandidateState.commitSignpostID.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v5[11] = v7;
  v5[12] = v9;
  v10 = v1 + v9;
  swift_beginAccess();
  v11 = type metadata accessor for ResultCandidateState.LoggingMetadata(0);
  v5[13] = v11;
  outlined init with copy of ReferenceResolutionClientProtocol?(v10 + *(v11 + 20), v8, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  return ResultCandidateState.commitSignpostID.modify;
}

void ResultCandidateState.commitSignpostID.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 13);
  v4 = *(*a1 + 10);
  v5 = *(*a1 + 11);
  v6 = *(*a1 + 9) + *(*a1 + 12);
  if (a2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(*(*a1 + 11), v4, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    swift_beginAccess();
    outlined assign with copy of ReferenceResolutionClientProtocol?(v4, v6 + *(v3 + 20), &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    swift_endAccess();
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  }

  else
  {
    swift_beginAccess();
    outlined assign with copy of ReferenceResolutionClientProtocol?(v5, v6 + *(v3 + 20), &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    swift_endAccess();
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t ResultCandidateState.utteranceIfAvailable.getter()
{
  v1 = type metadata accessor for GestureInput();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoutingDecision(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v7, type metadata accessor for ResultCandidateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v7, type metadata accessor for ResultCandidateType);
      return 0;
    }

    else
    {
      v10 = (*(v2 + 32))(v4, v7, v1);
      v9 = MEMORY[0x1E12A00D0](v10);
      (*(v2 + 8))(v4, v1);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = *v7;
  }

  else
  {
    v9 = (*(**v7 + 176))();
  }

  return v9;
}

uint64_t ResultCandidateState.speechContextIfApplicable.getter(double a1)
{
  v2 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoutingDecision(v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v4, type metadata accessor for ResultCandidateType);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v4;
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v4, type metadata accessor for ResultCandidateType);
  return 0;
}

uint64_t ResultCandidateState.trpContextIfApplicable.getter(double a1)
{
  v2 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoutingDecision(v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v4, type metadata accessor for ResultCandidateType);
  if (swift_getEnumCaseMultiPayload())
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v4, type metadata accessor for ResultCandidateType);
    return 0;
  }

  type metadata accessor for TRPContext();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t ResultCandidateState.directActionContextIfApplicable.getter(double a1)
{
  v2 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoutingDecision(v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v4, type metadata accessor for ResultCandidateType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v4;
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v4, type metadata accessor for ResultCandidateType);
  return 0;
}

uint64_t ResultCandidateState.deinit()
{

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, type metadata accessor for ResultCandidateType);
  v1 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v2 = type metadata accessor for UserID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision, type metadata accessor for RoutingDecision);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v4 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata, type metadata accessor for ResultCandidateState.LoggingMetadata);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  return v0;
}

uint64_t ResultCandidateState.__deallocating_deinit()
{
  ResultCandidateState.deinit();

  return swift_deallocClassInstance();
}

void *SpeechContext.aceRecognition.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

double SpeechContext.repetitionResults.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t SpeechContext.repetitionResults.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t SpeechContext.endpointMode.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t SpeechContext.init(speechPackage:)(void *a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 16) = a1;
  v2 = a1;
  v3 = [v2 recognition];
  v4 = [v3 aceRecognition];

  *(v1 + 24) = v4;
  return v1;
}

uint64_t outlined init with copy of RoutingDecision(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SpeechContext.utterance.getter()
{
  v1 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*v0 + 112))(v3);
  v7 = [v6 recognition];

  if (v7)
  {
    v8 = AFSpeechRecognition.toAsrHypotheses()();

    if (v8[2])
    {
      (*(v2 + 16))(v5, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

      v9 = Siri_Nlu_External_AsrHypothesis.utterance.getter();
      (*(v2 + 8))(v5, v1);
      return v9;
    }
  }

  return 0;
}

void *AFSpeechRecognition.toAsrHypotheses()()
{
  v1 = v0;
  v133 = type metadata accessor for UUID();
  v2 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v116 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v136 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v131 = v116 - v15;
  v16 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation();
  v142 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v149 = v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v144 = v116 - v20;
  v21 = [v1 utterances];
  if (!v21)
  {
LABEL_124:
    if (one-time initialization token for conversationBridge != -1)
    {
      goto LABEL_151;
    }

    goto LABEL_125;
  }

  v22 = v21;
  v163 = v2;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechUtterance, 0x1E698D250);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = [v1 phrases];
  if (!v24)
  {

    goto LABEL_124;
  }

  v25 = v24;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
  v150 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v143 = v23;
  if (v23 >> 62)
  {
    v26 = __CocoaSet.count.getter();
  }

  else
  {
    v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v131;
  if (!v26)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v28 = 0;
  v148 = v143 & 0xC000000000000001;
  v130 = v143 & 0xFFFFFFFFFFFFFF8;
  v129 = v143 + 32;
  v29 = v150 & 0xFFFFFFFFFFFFFF8;
  v162 = v150 & 0xFFFFFFFFFFFFFF8;
  if (v150 < 0)
  {
    v29 = v150;
  }

  v116[1] = v29;
  v159 = v150 & 0xC000000000000001;
  v140 = (v142 + 16);
  v139 = v142 + 8;
  v138 = v142 + 32;
  v123 = (v163 + 8);
  v122 = (v8 + 48);
  v117 = (v8 + 32);
  v121 = (v136 + 16);
  v120 = v136 + 8;
  v119 = v136 + 32;
  v146 = MEMORY[0x1E69E7CC0];
  v128 = v6;
  v127 = v7;
  v126 = v10;
  v125 = v11;
  v124 = v13;
  v141 = v16;
  v147 = v26;
  while (1)
  {
    if (v148)
    {
      v30 = v28;
      v31 = MEMORY[0x1E12A1FE0](v28, v143);
      v32 = __OFADD__(v30, 1);
      v33 = v30 + 1;
      if (v32)
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v28 >= *(v130 + 16))
      {
        goto LABEL_147;
      }

      v34 = v28;
      v31 = *(v129 + 8 * v28);
      v32 = __OFADD__(v34, 1);
      v33 = v34 + 1;
      if (v32)
      {
        goto LABEL_134;
      }
    }

    v155 = v33;
    v158 = v31;
    v35 = [v31 interpretationIndices];
    if (!v35)
    {
      goto LABEL_119;
    }

    v36 = v35;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v161 = v37 >> 62;
    v38 = v37 >> 62 ? __CocoaSet.count.getter() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v150 >> 62)
    {
      if (v38 != __CocoaSet.count.getter())
      {
LABEL_118:

LABEL_119:
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for Logger();
        __swift_project_value_buffer(v108, static Logger.executor);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_1DC659000, v109, v110, "Phrase length is not the same as interpretationIndices.", v111, 2u);
          MEMORY[0x1E12A2F50](v111, -1, -1);
        }

        goto LABEL_10;
      }

      v164 = 0;
      v165 = 0xE000000000000000;
      v38 = __CocoaSet.count.getter();
    }

    else
    {
      if (v38 != *(v162 + 16))
      {
        goto LABEL_118;
      }

      v164 = 0;
      v165 = 0xE000000000000000;
    }

    v39 = v37 & 0xFFFFFFFFFFFFFF8;
    v163 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v37 < 0)
    {
      v39 = v37;
    }

    v153 = v39;
    if (v38)
    {
      break;
    }

    v157 = MEMORY[0x1E69E7CC0];
LABEL_106:

    Siri_Nlu_External_AsrHypothesis.init()();
    String.sanitize()();
    Siri_Nlu_External_AsrHypothesis.utterance.setter();
    [v158 confidenceScore];
    Siri_Nlu_External_AsrHypothesis.probability.setter();
    MEMORY[0x1E129C1A0](v157);
    v95 = v132;
    UUID.init()();
    v96 = v128;
    static ConversionUtils.convertUuidToProto(uuid:)();
    (*v123)(v95, v133);
    v97 = *v122;
    v98 = v127;
    if ((*v122)(v96, 1, v127) == 1)
    {
      Siri_Nlu_External_UUID.init()();
      v99 = v97(v96, 1, v98);
      v100 = v125;
      v101 = v124;
      if (v99 != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
      }
    }

    else
    {
      (*v117)(v126, v96, v98);
      v100 = v125;
      v101 = v124;
    }

    Siri_Nlu_External_AsrHypothesis.id.setter();
    (*v121)(v101, v27, v100);
    v102 = v146;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102[2] + 1, 1, v102);
    }

    v104 = v102[2];
    v103 = v102[3];
    v146 = v102;
    v105 = v158;
    if (v104 >= v103 >> 1)
    {
      v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v146);
      v105 = v158;
    }

    v106 = v136;
    (*(v136 + 8))(v27, v100);
    v107 = v146;
    v146[2] = v104 + 1;
    (*(v106 + 32))(v107 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v104, v101, v100);
LABEL_10:
    v28 = v155;
    if (v155 == v147)
    {

      return v146;
    }
  }

  v40 = 0;
  v154 = 0;
  v160 = v37 & 0xC000000000000001;
  v157 = MEMORY[0x1E69E7CC0];
  v41 = v150;
  v151 = v37;
  v156 = v38;
LABEL_27:
  v42 = v40 + 4;
  while (1)
  {
    v43 = v42 - 4;
    if (v159)
    {
      v44 = MEMORY[0x1E12A1FE0](v42 - 4, v41);
    }

    else
    {
      if (v43 >= *(v162 + 16))
      {
        goto LABEL_132;
      }

      v44 = *(v41 + 8 * v42);
    }

    v45 = v44;
    v40 = v42 - 3;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v161)
    {
      if (v43 == __CocoaSet.count.getter())
      {
LABEL_104:

LABEL_105:
        v27 = v131;
        goto LABEL_106;
      }
    }

    else if (v43 == *(v163 + 16))
    {
      goto LABEL_104;
    }

    if (v160)
    {
      v46 = MEMORY[0x1E12A1FE0](v42 - 4, v37);
    }

    else
    {
      if (v43 >= *(v163 + 16))
      {
        goto LABEL_133;
      }

      v46 = *(v37 + 8 * v42);
    }

    v47 = v46;
    v48 = [v45 interpretations];
    if (v48)
    {
      v49 = v48;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechInterpretation, 0x1E698D220);
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = [v47 integerValue];
      if (v50 >> 62)
      {
        if (v51 >= __CocoaSet.count.getter())
        {
LABEL_56:

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v61 = type metadata accessor for Logger();
          __swift_project_value_buffer(v61, static Logger.conversationBridge);
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_1DC659000, v62, v63, "Invalid interpretation index.", v64, 2u);
            MEMORY[0x1E12A2F50](v64, -1, -1);
          }

          v37 = v151;
          v38 = v156;
          goto LABEL_29;
        }
      }

      else if (v51 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v52 = [v47 integerValue];
      if ((v50 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1E12A1FE0](v52, v50);
      }

      else
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_135;
        }

        if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v53 = *(v50 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = [v53 tokens];
      if (!v55)
      {

        v38 = v156;
        goto LABEL_29;
      }

      v56 = v55;
      v152 = v54;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechToken, 0x1E698D248);
      v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = v57;
      if (!(v57 >> 62))
      {
        v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v60 = v152;
        if (v59)
        {
          goto LABEL_63;
        }

        goto LABEL_51;
      }

      v59 = __CocoaSet.count.getter();
      v60 = v152;
      if (!v59)
      {
LABEL_51:

        v38 = v156;
        goto LABEL_29;
      }

LABEL_63:
      v65 = 0;
      v137 = v57 & 0xC000000000000001;
      v118 = v57 & 0xFFFFFFFFFFFFFF8;
      v135 = v57;
      v134 = v59;
      while (2)
      {
        if (v137)
        {
          v66 = MEMORY[0x1E12A1FE0](v65, v58);
        }

        else
        {
          if (v65 >= *(v118 + 16))
          {
            goto LABEL_149;
          }

          v66 = *(v58 + 8 * v65 + 32);
        }

        v67 = v66;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_137;
        }

        Siri_Nlu_External_AsrTokenInformation.init()();
        [v67 removeSpaceBefore];
        Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.setter();
        v68 = Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.getter();
        v145 = v65 + 1;
        if (v68)
        {
          v69 = specialized BidirectionalCollection.last.getter(v164, v165);
          if (v70)
          {
            if (v69 == 32 && v70 == 0xE100000000000000)
            {

              goto LABEL_75;
            }

            v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v72)
            {
LABEL_75:
              if (!v154)
              {
                goto LABEL_150;
              }

              --v154;
              specialized RangeReplaceableCollection<>.removeLast()(v71);
            }
          }
        }

        v73 = [v67 text];
        if (v73)
        {
          v74 = v73;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.postItnText.setter();
        v75 = Siri_Nlu_External_AsrTokenInformation.postItnText.getter();
        MEMORY[0x1E12A1580](v75);

        v76 = [v67 phoneSequence];
        if (v76)
        {
          v77 = v76;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.phoneSequence.setter();
        v78 = [v67 ipaPhoneSequence];
        if (v78)
        {
          v79 = v78;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.ipaPhoneSequence.setter();
        [v67 removeSpaceAfter];
        Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.setter();
        Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.getter();
        Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.setter();
        [v67 confidenceScore];
        Siri_Nlu_External_AsrTokenInformation.confidenceScore.setter();
        Siri_Nlu_External_AsrTokenInformation.beginIndex.setter();
        v80 = Siri_Nlu_External_AsrTokenInformation.beginIndex.getter();
        result = [v67 text];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v82 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v83 = String.count.getter();

        if ((v83 & 0x8000000000000000) != 0)
        {
          goto LABEL_138;
        }

        if (HIDWORD(v83))
        {
          goto LABEL_139;
        }

        if (__CFADD__(v80, v83))
        {
          goto LABEL_140;
        }

        v84 = v144;
        Siri_Nlu_External_AsrTokenInformation.endIndex.setter();
        v154 = Siri_Nlu_External_AsrTokenInformation.endIndex.getter();
        v85 = Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.getter();
        v86 = v141;
        if (v85)
        {
          if (v154 == -1)
          {
            goto LABEL_148;
          }

          ++v154;
          MEMORY[0x1E12A1580](32, 0xE100000000000000);
        }

        [v67 startTime];
        v88 = v87 * 1000.0;
        if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        if (v88 <= -2147483650.0)
        {
          goto LABEL_142;
        }

        if (v88 >= 2147483650.0)
        {
          goto LABEL_143;
        }

        Siri_Nlu_External_AsrTokenInformation.startMilliSeconds.setter();
        [v67 endTime];
        v90 = v89 * 1000.0;
        if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_144;
        }

        if (v90 <= -2147483650.0)
        {
          goto LABEL_145;
        }

        if (v90 >= 2147483650.0)
        {
          goto LABEL_146;
        }

        Siri_Nlu_External_AsrTokenInformation.endMilliSeconds.setter();
        (*v140)(v149, v84, v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v157[2] + 1, 1, v157);
        }

        v92 = v157[2];
        v91 = v157[3];
        if (v92 >= v91 >> 1)
        {
          v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v157);
        }

        v93 = v142;
        (*(v142 + 8))(v84, v86);
        v94 = v157;
        v157[2] = v92 + 1;
        (*(v93 + 32))(v94 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v92, v149, v86);
        ++v65;
        v41 = v150;
        v37 = v151;
        v58 = v135;
        if (v145 == v134)
        {

          v38 = v156;
          v27 = v131;
          if (v40 != v156)
          {
            goto LABEL_27;
          }

          goto LABEL_106;
        }

        continue;
      }
    }

LABEL_29:
    ++v42;
    if (v40 == v38)
    {
      goto LABEL_105;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
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
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  swift_once();
LABEL_125:
  v112 = type metadata accessor for Logger();
  __swift_project_value_buffer(v112, static Logger.conversationBridge);
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_1DC659000, v113, v114, "AFSpeechRecognition utterances/phrases is nil", v115, 2u);
    MEMORY[0x1E12A2F50](v115, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}