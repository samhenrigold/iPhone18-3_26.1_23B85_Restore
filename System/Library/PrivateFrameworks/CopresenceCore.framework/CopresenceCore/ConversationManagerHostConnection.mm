@interface ConversationManagerHostConnection
- (void)addRemoteMembers:(id)members toConversationWithUUID:(id)d;
- (void)createActivitySessionWith:(id)with onConversationWithUUID:(id)d completion:(id)completion;
- (void)fetchEndpointWith:(id)with activitySessionUUID:(id)d activity:(id)activity completion:(id)completion;
- (void)includeMetricsReport:(id)report onConversationWithUUID:(id)d;
- (void)prepareForGroupActivityWithOverrides:(id)overrides completionHandler:(id)handler;
- (void)requestConversationContainersUpdate;
- (void)requestEndpointWith:(id)with activitySessionUUID:(id)d activity:(id)activity completion:(id)completion;
- (void)setActivityAuthorization:(BOOL)authorization forBundleIdentifier:(id)identifier;
- (void)setDownlinkMuted:(BOOL)muted forRemoteParticipantsInConversationWithUUID:(id)d;
- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)d;
- (void)updateConversationWith:(id)with participantPresentationContexts:(id)contexts;
@end

@implementation ConversationManagerHostConnection

- (void)updateConversationContainersWithConversationContainersByGroupUUID:(id)d
{
  type metadata accessor for UUID();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationManagerHostConnection.updateConversationContainers(conversationContainersByGroupUUID:)(v4);
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
  specialized ConversationManagerHostConnection.requestEndpoint(with:activitySessionUUID:activity:completion:)(v14, v16, v12, activityCopy, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v10 + 8))(v12, v9);
}

- (void)requestConversationContainersUpdate
{
  selfCopy = self;
  ConversationManagerHostConnection.requestConversationContainersUpdate()();
}

- (void)prepareForGroupActivityWithOverrides:(id)overrides completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  overridesCopy = overrides;
  selfCopy = self;
  ConversationManagerHostConnection.prepareForGroupActivity(overrides:completionHandler:)(overrides, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> (), v7);
}

- (void)createActivitySessionWith:(id)with onConversationWithUUID:(id)d completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  withCopy = with;
  selfCopy = self;
  specialized ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)(withCopy, v11, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)addRemoteMembers:(id)members toConversationWithUUID:(id)d
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:)(v9, v8);

  (*(v6 + 8))(v8, v5);
}

- (void)setActivityAuthorization:(BOOL)authorization forBundleIdentifier:(id)identifier
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  ConversationManagerHostConnection.setActivityAuthorization(_:forBundleIdentifier:)(authorization, v10);
}

- (void)setDownlinkMuted:(BOOL)muted forRemoteParticipantsInConversationWithUUID:(id)d
{
  mutedCopy = muted;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(mutedCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)updateConversationWith:(id)with participantPresentationContexts:(id)contexts
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)(v8, v9);

  (*(v6 + 8))(v8, v5);
}

- (void)includeMetricsReport:(id)report onConversationWithUUID:(id)d
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationManagerHostConnection.includeMetricsReport(_:onConversationWithUUID:)(v9, v8);

  (*(v6 + 8))(v8, v5);
}

- (void)fetchEndpointWith:(id)with activitySessionUUID:(id)d activity:(id)activity completion:(id)completion
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  activityCopy = activity;
  selfCopy = self;
  ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)(v14, v16, v12, activityCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned TUConversationActivity?) -> (), v17);

  (*(v10 + 8))(v12, v9);
}

@end