@interface __RKChangeSceneAction
- (id)copyWithZone:(void *)zone;
@end

@implementation __RKChangeSceneAction

- (id)copyWithZone:(void *)zone
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v5 + 16))(v7, self + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier, v4);
  type metadata accessor for __RKChangeSceneAction(0);
  swift_allocObject();

  v9 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(v8, v7);

  return v9;
}

@end