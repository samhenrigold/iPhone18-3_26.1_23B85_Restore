@interface _EXExtensionInstanceIdentifier
- (BOOL)isDefault;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)identifier;
- (_EXExtensionInstanceIdentifier)init;
- (_EXExtensionInstanceIdentifier)initWithCoder:(id)coder;
- (_EXExtensionInstanceIdentifier)initWithIdentifier:(id)identifier;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EXExtensionInstanceIdentifier

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

  v6 = _EXExtensionInstanceIdentifier.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (_EXExtensionInstanceIdentifier)initWithIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return _EXExtensionInstanceIdentifier.init(instanceIdentifier:)(v6);
}

- (NSString)description
{
  selfCopy = self;
  _StringGuts.grow(_:)(36);

  v3 = type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(v3, v4);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v5);

  MEMORY[0x1865F37A0](93, 0xE100000000000000);

  v6 = MEMORY[0x1865F36D0](0xD000000000000021, 0x80000001848C4AD0);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = MEMORY[0x1865F36D0](0x696669746E656469, 0xEA00000000007265);
  [coderCopy encodeObject:isa forKey:v6];
}

- (_EXExtensionInstanceIdentifier)initWithCoder:(id)coder
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  coderCopy = coder;
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v11 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(self + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v8, v5);
    v12 = type metadata accessor for _EXExtensionInstanceIdentifier(0);
    v14.receiver = self;
    v14.super_class = v12;
    v13 = [(_EXExtensionInstanceIdentifier *)&v14 init];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_EXExtensionInstanceIdentifier)init
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v8 = [(_EXExtensionInstanceIdentifier *)self initWithIdentifier:isa];

  return v8;
}

- (NSUUID)identifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v3);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (BOOL)isDefault
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v3 = one-time initialization token for _defaultInstanceIdentifier;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = UUID.hashValue.getter();

  return v3;
}

@end