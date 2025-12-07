@interface ConversationManagerClient
- (void)requestEndpointWith:(id)with activitySessionUUID:(id)d activity:(id)activity completion:(id)completion;
- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)d;
@end

@implementation ConversationManagerClient

- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)d
{
  type metadata accessor for UUID();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:)(v4);
}

- (void)requestEndpointWith:(id)with activitySessionUUID:(id)d activity:(id)activity completion:(id)completion
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  activityCopy = activity;
  selfCopy = self;
  specialized ConversationManagerClient.requestEndpoint(with:activitySessionUUID:activity:completion:)(v14, v16, v12, activityCopy, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v10 + 8))(v12, v9);
}

@end