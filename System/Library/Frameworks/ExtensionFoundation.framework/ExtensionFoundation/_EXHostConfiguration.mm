@interface _EXHostConfiguration
- (NSArray)assertionAttributes;
- (NSArray)preferredLanguages;
- (NSDictionary)additionalEnvironmentVariables;
- (NSString)description;
- (NSString)sandboxProfileName;
- (RBSProcessIdentity)rbsProcessIdentity;
- (_EXExtensionRepresenting)extension;
- (_EXHostConfiguration)initWithExtension:(id)extension instanceIdentifier:(id)identifier;
- (_EXHostConfiguration)initWithExtensionIdentity:(id)identity;
- (_EXHostConfiguration)initWithExtensionIdentity:(id)identity instanceIdentifier:(id)identifier;
- (id)copyWithZone:(void *)zone;
- (id)interruptionHandler;
- (void)setAdditionalEnvironmentVariables:(id)variables;
- (void)setAssertionAttributes:(id)attributes;
- (void)setExtension:(id)extension;
- (void)setExtensionIdentity:(id)identity;
- (void)setInstanceIdentifier:(id)identifier;
- (void)setInterruptionHandler:(id)handler;
- (void)setLaunchPersona:(id)persona;
- (void)setPreferredLanguages:(id)languages;
- (void)setSandboxProfileName:(id)name;
@end

@implementation _EXHostConfiguration

- (_EXHostConfiguration)initWithExtensionIdentity:(id)identity instanceIdentifier:(id)identifier
{
  identityCopy = identity;
  identifierCopy = identifier;
  v7 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(identityCopy, identifierCopy);

  return v7;
}

- (void)setLaunchPersona:(id)persona
{
  v4 = *(self + OBJC_IVAR____EXHostConfiguration_launchPersona);
  *(self + OBJC_IVAR____EXHostConfiguration_launchPersona) = persona;
  personaCopy = persona;
}

- (void)setAssertionAttributes:(id)attributes
{
  type metadata accessor for RBSDomainAttribute();
  *(self + OBJC_IVAR____EXHostConfiguration_assertionAttributes) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (_EXHostConfiguration)initWithExtensionIdentity:(id)identity
{
  v4 = objc_allocWithZone(type metadata accessor for _EXHostConfiguration(0));
  identityCopy = identity;
  v6 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(identityCopy, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)setExtensionIdentity:(id)identity
{
  v4 = *(self + OBJC_IVAR____EXHostConfiguration__extensionIdentity);
  *(self + OBJC_IVAR____EXHostConfiguration__extensionIdentity) = identity;
  identityCopy = identity;
}

- (id)interruptionHandler
{
  if (*(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler))
  {
    v2 = *(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8);
    v5[4] = *(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v5[3] = &block_descriptor_4;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInterruptionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____EXHostConfiguration_interruptionHandler);
  v8 = *(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler);
  v9 = *(self + OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

- (void)setInstanceIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____EXHostConfiguration_instanceIdentifier);
  *(self + OBJC_IVAR____EXHostConfiguration_instanceIdentifier) = identifier;
  identifierCopy = identifier;
}

- (NSArray)preferredLanguages
{
  if (*(self + OBJC_IVAR____EXHostConfiguration_preferredLanguages))
  {

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setPreferredLanguages:(id)languages
{
  if (languages)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____EXHostConfiguration_preferredLanguages) = v4;
}

- (NSDictionary)additionalEnvironmentVariables
{

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setAdditionalEnvironmentVariables:(id)variables
{
  *(self + OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (NSString)sandboxProfileName
{
  v2 = *(self + OBJC_IVAR____EXHostConfiguration_sandboxProfileName + 8);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR____EXHostConfiguration_sandboxProfileName);

    v4 = MEMORY[0x1865F36D0](v3, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSandboxProfileName:(id)name
{
  if (name)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____EXHostConfiguration_sandboxProfileName);
  *v6 = v4;
  v6[1] = v5;
}

- (NSArray)assertionAttributes
{
  type metadata accessor for RBSDomainAttribute();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  _EXHostConfiguration.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v4;
}

- (NSString)description
{
  selfCopy = self;
  v3 = _EXHostConfiguration.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1865F36D0](v3, v5);

  return v6;
}

- (RBSProcessIdentity)rbsProcessIdentity
{
  selfCopy = self;
  v3 = _EXHostConfiguration.rbsProcessIdentity.getter();

  return v3;
}

- (_EXHostConfiguration)initWithExtension:(id)extension instanceIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  v7 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(extension, identifierCopy);
  swift_unknownObjectRelease();

  return v7;
}

- (_EXExtensionRepresenting)extension
{
  result = *(self + OBJC_IVAR____EXHostConfiguration__extensionIdentity);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (void)setExtension:(id)extension
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _EXHostConfiguration.extensionRepresenting.setter(extension);
}

@end