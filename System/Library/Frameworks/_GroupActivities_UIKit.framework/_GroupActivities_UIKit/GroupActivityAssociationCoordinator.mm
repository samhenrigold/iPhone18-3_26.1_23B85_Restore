@interface GroupActivityAssociationCoordinator
- (void)sceneConnected:(id)connected;
@end

@implementation GroupActivityAssociationCoordinator

- (void)sceneConnected:(id)connected
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  specialized GroupActivityAssociationCoordinator.sceneConnected(_:)();
  (*(v4 + 8))(v6, v3);
}

@end