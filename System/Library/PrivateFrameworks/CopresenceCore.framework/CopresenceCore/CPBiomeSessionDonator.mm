@interface CPBiomeSessionDonator
- (CPBiomeSessionDonator)init;
- (void)conversationManager:(id)manager conversationChanged:(id)changed;
- (void)conversationManager:(id)manager removedConversationWithUUID:(id)d;
@end

@implementation CPBiomeSessionDonator

- (void)conversationManager:(id)manager conversationChanged:(id)changed
{
  swift_unknownObjectRetain();
  changedCopy = changed;
  selfCopy = self;
  specialized BiomeSessionDonator.conversationManager(_:conversationChanged:)(changedCopy);
  swift_unknownObjectRelease();
}

- (void)conversationManager:(id)manager removedConversationWithUUID:(id)d
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 16))(v9, v11, v5);
  swift_beginAccess();
  selfCopy = self;
  specialized Dictionary.subscript.setter(0, 0, v9);
  swift_endAccess();

  (*(v6 + 8))(v11, v5);
}

- (CPBiomeSessionDonator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end