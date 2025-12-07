@interface CAFDAppClipsDeclarationAgent
- (_TtC13caraccessoryd28CAFDAppClipsDeclarationAgent)init;
- (void)supportedAppClipsForPairedVehicleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CAFDAppClipsDeclarationAgent

- (_TtC13caraccessoryd28CAFDAppClipsDeclarationAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)supportedAppClipsForPairedVehicleIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(selfCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> (), v11);

  (*(v7 + 8))(v9, v6);
}

@end