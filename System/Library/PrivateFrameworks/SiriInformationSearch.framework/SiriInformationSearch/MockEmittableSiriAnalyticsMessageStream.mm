@interface MockEmittableSiriAnalyticsMessageStream
- (void)emitMessage:(id)message;
- (void)emitMessage:(id)message timestamp:(unint64_t)timestamp;
- (void)enqueueLargeMessageObjectFromPath:(id)path assetIdentifier:(id)identifier messageMetadata:(id)metadata completion:(id)completion;
@end

@implementation MockEmittableSiriAnalyticsMessageStream

- (void)emitMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  MockEmittableSiriAnalyticsMessageStream.emitMessage(_:)(messageCopy);
}

- (void)emitMessage:(id)message timestamp:(unint64_t)timestamp
{
  messageCopy = message;
  selfCopy = self;
  specialized MockEmittableSiriAnalyticsMessageStream.emitMessage(_:timestamp:)(messageCopy);
}

- (void)enqueueLargeMessageObjectFromPath:(id)path assetIdentifier:(id)identifier messageMetadata:(id)metadata completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  outlined destroy of UUID?(v9);
}

@end