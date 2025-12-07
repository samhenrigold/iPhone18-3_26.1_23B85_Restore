@interface ServiceBridgeDelegateXPCWrapper
- (void)closeServerRequestForExecutionRequestId:(id)id;
- (void)closeWithExecutionOutput:(id)output errorString:(id)string;
- (void)closeWithExecutionOutput:(id)output needsUserInput:(BOOL)input;
- (void)fetchContextsFor:(id)for includesNearByDevices:(BOOL)devices completion:(id)completion;
- (void)postToMessageBusWithMessage:(id)message completion:(id)completion;
- (void)retriggerOriginalRequestWithExecutionRequestId:(id)id forUserId:(id)userId givenCurrentExecutionRequestId:(id)requestId reply:(id)reply;
@end

@implementation ServiceBridgeDelegateXPCWrapper

- (void)fetchContextsFor:(id)for includesNearByDevices:(BOOL)devices completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(completion);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = one-time initialization token for shared;
  swift_retain_n();

  if (v15 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  v17 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  *(v18 + 32) = self;
  *(v18 + 40) = v12;
  *(v18 + 48) = devices;
  *(v18 + 56) = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> ();
  *(v18 + 64) = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)partial apply, v18);
}

- (void)closeServerRequestForExecutionRequestId:(id)id
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = one-time initialization token for shared;
  swift_retain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static MessageBusActor.shared;
  v13 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = self;
  v14[5] = v7;
  v14[6] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)partial apply, v14);
}

- (void)closeWithExecutionOutput:(id)output errorString:(id)string
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = one-time initialization token for shared;
  outputCopy = output;
  swift_retain_n();
  v15 = outputCopy;
  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  v17 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = self;
  v18[5] = v15;
  v18[6] = v9;
  v18[7] = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)partial apply, v18);
}

- (void)closeWithExecutionOutput:(id)output needsUserInput:(BOOL)input
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = one-time initialization token for shared;
  outputCopy = output;
  swift_retain_n();
  v13 = outputCopy;
  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v15 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  *(v16 + 32) = self;
  *(v16 + 40) = v13;
  *(v16 + 48) = input;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)partial apply, v16);
}

- (void)retriggerOriginalRequestWithExecutionRequestId:(id)id forUserId:(id)userId givenCurrentExecutionRequestId:(id)requestId reply:(id)reply
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = _Block_copy(reply);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v13;
  v30 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = one-time initialization token for shared;
  swift_retain_n();

  if (v22 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = static MessageBusActor.shared;
  v24 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v24;
  v26 = v29;
  v27 = v30;
  v25[4] = self;
  v25[5] = v27;
  v25[6] = v26;
  v25[7] = v14;
  v25[8] = v16;
  v25[9] = v17;
  v25[10] = v19;
  v25[11] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ();
  v25[12] = v20;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)partial apply, v25);
}

- (void)postToMessageBusWithMessage:(id)message completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = _Block_copy(completion);
  messageCopy = message;

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);

  outlined copy of Data._Representation(v12, v14);
  v17 = one-time initialization token for shared;

  if (v17 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static MessageBusActor.shared;
  v19 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = self;
  v20[5] = v12;
  v20[6] = v14;
  v20[7] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ();
  v20[8] = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)partial apply, v20);

  outlined consume of Data._Representation(v12, v14);
}

@end