@interface RemoteConversationService
- (void)acceptInitialInputWithInputIdentifier:(id)identifier speechData:(id)data reply:(id)reply;
- (void)acceptWithInputData:(id)data speechData:(id)speechData reply:(id)reply;
- (void)canHandleWithInputData:(id)data rcId:(id)id reply:(id)reply;
- (void)cancelWithCancellationReason:(int64_t)reason reply:(id)reply;
- (void)commitWithBridge:(id)bridge reply:(id)reply;
- (void)drainAsyncWorkWithReply:(id)reply;
- (void)ensureReadyWithReply:(id)reply;
- (void)flexibleExecutionSupportOptionsWithReply:(id)reply;
- (void)isCorrectableWithReply:(id)reply;
- (void)isEmptyWithReply:(id)reply;
- (void)paraphraseWithReply:(id)reply;
- (void)prepareWithBridge:(id)bridge reply:(id)reply;
- (void)resetWithReply:(id)reply;
- (void)startTurnFromCacheWithExecutionRequestId:(id)id bridge:(id)bridge reply:(id)reply;
- (void)startTurnWithTurnData:(id)data bridge:(id)bridge reply:(id)reply;
- (void)warmupWithRefId:(id)id reply:(id)reply;
@end

@implementation RemoteConversationService

- (void)resetWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = one-time initialization token for executor;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "reset(reply:)", 13, 2);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = static ConversationActor.shared;
  v16 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v14, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = self;
  v17[5] = thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply;
  v17[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in RemoteConversationService.reset(reply:)partial apply, v17);
}

- (void)startTurnFromCacheWithExecutionRequestId:(id)id bridge:(id)bridge reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  swift_unknownObjectRetain();

  RemoteConversationService.startTurnFromCache(executionRequestId:bridge:reply:)(v7, v9, bridge, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> (), v10);
  swift_unknownObjectRelease();
}

- (void)commitWithBridge:(id)bridge reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = one-time initialization token for executor;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "commit(bridge:reply:)", 21, 2);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
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
  v18[4] = self;
  v18[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationFlexibleExecutionSupportXPC) -> ();
  v18[6] = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in RemoteConversationService.commit(bridge:reply:)partial apply, v18);
}

- (void)prepareWithBridge:(id)bridge reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = one-time initialization token for executor;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "prepare(bridge:reply:)", 22, 2);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
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
  v18[4] = self;
  v18[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ();
  v18[6] = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in RemoteConversationService.prepare(bridge:reply:)partial apply, v18);
}

- (void)isEmptyWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = one-time initialization token for executor;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "isEmpty(reply:)", 15, 2);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = static ConversationActor.shared;
  v16 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v14, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = self;
  v17[5] = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool) -> ()partial apply;
  v17[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in RemoteConversationService.isEmpty(reply:)partial apply, v17);
}

- (void)acceptInitialInputWithInputIdentifier:(id)identifier speechData:(id)data reply:(id)reply
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  dataCopy = data;

  RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(v10, dataCopy, thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned FlowExtensionUserInputResultXPC) -> ()partial apply, v12);

  (*(v8 + 8))(v10, v7);
}

- (void)canHandleWithInputData:(id)data rcId:(id)id reply:(id)reply
{
  v7 = _Block_copy(reply);
  dataCopy = data;
  idCopy = id;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  RemoteConversationService.canHandle(inputData:rcId:reply:)(v10, v12, v13, v15, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationFlexibleExecutionSupportXPC) -> (), v16);

  outlined consume of Data._Representation(v10, v12);
}

- (void)ensureReadyWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = one-time initialization token for executor;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "ensureReady(reply:)", 19, 2);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = static ConversationActor.shared;
  v16 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v14, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = self;
  v17[5] = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()partial apply;
  v17[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in RemoteConversationService.ensureReady(reply:)partial apply, v17);
}

- (void)warmupWithRefId:(id)id reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = _Block_copy(reply);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = one-time initialization token for executor;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "warmup(refId:reply:)", 20, 2);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = one-time initialization token for shared;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = static ConversationActor.shared;
  v20 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v18, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = self;
  v21[5] = v10;
  v21[6] = v12;
  v21[7] = thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply;
  v21[8] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in RemoteConversationService.warmup(refId:reply:)partial apply, v21);
}

- (void)cancelWithCancellationReason:(int64_t)reason reply:(id)reply
{
  isa = self->super.isa;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = one-time initialization token for executor;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "cancel(cancellationReason:reply:)", 33, 2);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = one-time initialization token for shared;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = static ConversationActor.shared;
  v19 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v17, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = self;
  v20[5] = thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply;
  v20[6] = v12;
  v20[7] = reason;
  v20[8] = isa;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in RemoteConversationService.cancel(cancellationReason:reply:)partial apply, v20);
}

- (void)startTurnWithTurnData:(id)data bridge:(id)bridge reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  dataCopy = data;
  swift_unknownObjectRetain();

  RemoteConversationService.startTurn(turnData:bridge:reply:)(dataCopy, bridge, thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()partial apply, v8);

  swift_unknownObjectRelease();
}

- (void)acceptWithInputData:(id)data speechData:(id)speechData reply:(id)reply
{
  v7 = _Block_copy(reply);
  dataCopy = data;
  speechDataCopy = speechData;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  RemoteConversationService.accept(inputData:speechData:reply:)(v10, v12, speechDataCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationFlexibleExecutionSupportXPC) -> (), v13);

  outlined consume of Data._Representation(v10, v12);
}

- (void)paraphraseWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = one-time initialization token for executor;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "paraphrase(reply:)", 18, 2);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = static ConversationActor.shared;
  v16 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v14, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = self;
  v17[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationFlexibleExecutionSupportXPC) -> ();
  v17[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in RemoteConversationService.paraphrase(reply:)partial apply, v17);
}

- (void)drainAsyncWorkWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = one-time initialization token for shared;
  swift_retain_n();

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static ConversationActor.shared;
  v14 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v12, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = self;
  v15[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
  v15[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in RemoteConversationService.drainAsyncWork(reply:)partial apply, v15);
}

- (void)flexibleExecutionSupportOptionsWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = one-time initialization token for executor;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "flexibleExecutionSupportOptions(reply:)", 39, 2);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = static ConversationActor.shared;
  v16 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v14, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = self;
  v17[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationFlexibleExecutionSupportXPC) -> ();
  v17[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in RemoteConversationService.flexibleExecutionSupportOptions(reply:)partial apply, v17);
}

- (void)isCorrectableWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = one-time initialization token for executor;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "isCorrectable(reply:)", 21, 2);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = static ConversationActor.shared;
  v16 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v14, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = self;
  v17[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool) -> ();
  v17[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in RemoteConversationService.isCorrectable(reply:)partial apply, v17);
}

@end