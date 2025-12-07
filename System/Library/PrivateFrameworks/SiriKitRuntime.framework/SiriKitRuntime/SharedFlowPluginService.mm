@interface SharedFlowPluginService
- (void)endTurnWithReply:(id)reply;
- (void)loadFlowPluginWithBundleId:(id)id bundlePath:(id)path rcId:(id)rcId hypothesisId:(id)hypothesisId reply:(id)reply;
- (void)startTurnWithTurnData:(id)data bridge:(id)bridge reply:(id)reply;
@end

@implementation SharedFlowPluginService

- (void)startTurnWithTurnData:(id)data bridge:(id)bridge reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = one-time initialization token for executor;
  dataCopy = data;
  swift_unknownObjectRetain();

  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginService.swift", 44, 2, "startTurn(turnData:bridge:reply:)", 33, 2);
  v17 = swift_allocObject();
  v17[2] = self;
  v17[3] = dataCopy;
  v17[4] = bridge;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)partial apply;
  v19[5] = v17;
  v19[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ();
  v19[7] = v13;
  v20 = dataCopy;
  swift_unknownObjectRetain();

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)partial apply, v19);

  swift_unknownObjectRelease();
}

- (void)loadFlowPluginWithBundleId:(id)id bundlePath:(id)path rcId:(id)rcId hypothesisId:(id)hypothesisId reply:(id)reply
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = _Block_copy(reply);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (!rcId)
  {
    v20 = 0;
    if (hypothesisId)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    goto LABEL_6;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  rcId = v21;
  if (!hypothesisId)
  {
    goto LABEL_5;
  }

LABEL_3:
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
LABEL_6:
  v24 = swift_allocObject();
  *(v24 + 16) = v13;

  SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)(v14, v16, v17, v19, v20, rcId, v12, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationCanHandleResult) -> (), v24);

  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

- (void)endTurnWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
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
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginService.swift", 44, 2, "endTurn(reply:)", 15, 2);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static ConversationActor.shared;
  v15 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = self;
  v16[5] = _sIeyBh_Iegh_TRTA_0;
  v16[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in SharedFlowPluginService.endTurn(reply:)partial apply, v16);
}

@end