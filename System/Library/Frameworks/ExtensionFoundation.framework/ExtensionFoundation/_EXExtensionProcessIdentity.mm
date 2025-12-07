@interface _EXExtensionProcessIdentity
- (BOOL)isEqual:(id)equal;
- (NSData)dataRepresentation;
- (NSUUID)instanceUUID;
- (_TtC19ExtensionFoundation27_EXExtensionProcessIdentity)init;
- (id)launchdJobDescriptorFor:(id)for error:(id *)error;
- (int64_t)hash;
@end

@implementation _EXExtensionProcessIdentity

- (NSData)dataRepresentation
{
  v3 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v3 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  selfCopy = self;
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner, type metadata accessor for _EXExtensionProcessIdentity.Inner, &protocol conformance descriptor for _EXExtensionProcessIdentity.Inner);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);

  return v8.super.isa;
}

- (NSUUID)instanceUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = self + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner;
  v7 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  outlined init with copy of UUID?(&v6[*(v7 + 32)], v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v5, v8);
    v11 = isa;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = _EXExtensionProcessIdentity.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  selfCopy = self;
  _EXExtensionProcessIdentity.Inner.hash(into:)(v6);
  v4 = Hasher.finalize()();

  return v4;
}

- (_TtC19ExtensionFoundation27_EXExtensionProcessIdentity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)launchdJobDescriptorFor:(id)for error:(id *)error
{
  forCopy = for;
  selfCopy = self;
  v7 = _EXExtensionProcessIdentity.launchdJobDescriptor(for:)(forCopy);

  return v7;
}

@end