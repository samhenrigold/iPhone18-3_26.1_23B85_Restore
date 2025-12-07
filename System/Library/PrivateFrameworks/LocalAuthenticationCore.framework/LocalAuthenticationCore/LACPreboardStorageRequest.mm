@interface LACPreboardStorageRequest
- (LACXPCClient)client;
- (NSData)acl;
- (NSDictionary)options;
- (NSUUID)contextID;
- (_TtC23LocalAuthenticationCore25LACPreboardStorageRequest)init;
@end

@implementation LACPreboardStorageRequest

- (NSData)acl
{
  v2 = (self + OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_acl);
  v3 = *(self + OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_acl + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    outlined copy of Data._Representation(*v2, v3);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v5, v3);
    v4 = isa;
  }

  return v4;
}

- (LACXPCClient)client
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSUUID)contextID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  outlined init with copy of UUID?(self + OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_contextID, &v12 - v4);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v5, v6);
    v9 = isa;
  }

  return v9;
}

- (NSDictionary)options
{
  if (*(self + OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_options))
  {

    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (_TtC23LocalAuthenticationCore25LACPreboardStorageRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end