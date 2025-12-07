@interface LACPreboardStorage
- (_TtC23LocalAuthenticationCore18LACPreboardStorage)init;
- (id)acmContextForUUID:(id)d error:(id *)error;
@end

@implementation LACPreboardStorage

- (_TtC23LocalAuthenticationCore18LACPreboardStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)acmContextForUUID:(id)d error:(id *)error
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19[-v11];
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 32))(v12, v9, v6);
    (*(v7 + 56))(v12, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v12, 1, 1, v6);
  }

  selfCopy = self;
  v14 = LACPreboardStorage.acmContext(for:)(v12);
  v16 = v15;
  outlined destroy of AsyncStream<()>.Continuation?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v14, v16);

  return v17.super.isa;
}

@end