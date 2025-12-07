@interface SKAPresentDevicesManager
- (SKAPresentDevicesManager)init;
- (SKAPresentDevicesManager)initWithChannelManager:(id)manager databaseManager:(id)databaseManager messagingProvider:(id)provider delegate:(id)delegate;
- (void)activePresentDevicesForChannel:(id)channel withCompletion:(id)completion;
- (void)clearPresentDevicesForChannel:(id)channel;
- (void)handleParticipantPayloads:(id)payloads forChannel:(id)channel withUpdateType:(int)type resetState:(BOOL)state;
- (void)setParticipantPayloads:(id)payloads forChannel:(id)channel;
- (void)setParticipantPayloads:(id)payloads forChannel:(id)channel withCompletion:(id)completion;
@end

@implementation SKAPresentDevicesManager

- (SKAPresentDevicesManager)initWithChannelManager:(id)manager databaseManager:(id)databaseManager messagingProvider:(id)provider delegate:(id)delegate
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SKAPresentDevicesManager.init(channelManager:databaseManager:messagingProvider:delegate:)(manager, databaseManager, provider, delegate);
}

- (void)activePresentDevicesForChannel:(id)channel withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = channel;
  v8[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> ();
  v8[5] = v7;
  channelCopy = channel;
  selfCopy = self;
  v11 = channelCopy;

  SKAAsyncQueue.enqueue(_:_:)("activePresentDevices(for:with:)", 31, 2, &closure #1 in SKAPresentDevicesManager.activePresentDevices(for:with:)partial apply, v8);
}

- (void)clearPresentDevicesForChannel:(id)channel
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = channel;
  channelCopy = channel;
  selfCopy = self;
  v8 = channelCopy;
  SKAAsyncQueue.enqueue(_:_:)("clearPresentDevices(for:)", 25, 2, &closure #1 in SKAPresentDevicesManager.clearPresentDevices(for:)partial apply, v5);
}

- (void)setParticipantPayloads:(id)payloads forChannel:(id)channel
{
  ObjectType = swift_getObjectType();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = channel;
  *(v8 + 24) = self;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 1;
  *(v8 + 56) = v7;
  *(v8 + 64) = 0;
  *(v8 + 72) = ObjectType;
  channelCopy = channel;
  selfCopy = self;
  v12 = channelCopy;
  v11 = selfCopy;
  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v8);
}

- (void)setParticipantPayloads:(id)payloads forChannel:(id)channel withCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  v9 = _Block_copy(completion);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = channel;
  *(v12 + 24) = self;
  *(v12 + 32) = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
  *(v12 + 40) = v11;
  *(v12 + 48) = 1;
  *(v12 + 56) = v10;
  *(v12 + 64) = 0;
  *(v12 + 72) = ObjectType;
  channelCopy = channel;
  selfCopy = self;
  v15 = channelCopy;
  v16 = selfCopy;

  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v12);
}

- (void)handleParticipantPayloads:(id)payloads forChannel:(id)channel withUpdateType:(int)type resetState:(BOOL)state
{
  ObjectType = swift_getObjectType();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for ChannelActivityParticipantPayload, off_27843D360);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = channel;
  *(v12 + 24) = self;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = state;
  *(v12 + 56) = v11;
  *(v12 + 64) = type;
  *(v12 + 72) = ObjectType;
  channelCopy = channel;
  selfCopy = self;
  v16 = channelCopy;
  v15 = selfCopy;
  SKAAsyncQueue.enqueue(_:_:)("_handleParticipantPayloads(_:for:with:resetState:completion:)", 61, 2, &closure #1 in SKAPresentDevicesManager._handleParticipantPayloads(_:for:with:resetState:completion:)partial apply, v12);
}

- (SKAPresentDevicesManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end