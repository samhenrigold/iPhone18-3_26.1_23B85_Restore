@interface CHSExtensionIdentity
- (BOOL)isEqual:(id)equal;
- (BOOL)isRemote;
- (CHSExtensionIdentity)init;
- (CHSExtensionIdentity)initWithBSXPCCoder:(id)coder;
- (CHSExtensionIdentity)initWithCoder:(id)coder;
- (CHSExtensionIdentity)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier deviceIdentifier:(id)deviceIdentifier;
- (CHSExtensionIdentity)initWithXPCDictionary:(id)dictionary;
- (NSString)containerBundleIdentifier;
- (NSString)description;
- (NSString)deviceIdentifier;
- (NSString)extensionBundleIdentifier;
- (NSString)tokenString;
- (int64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation CHSExtensionIdentity

- (BOOL)isRemote
{
  v2 = self + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier;
  swift_beginAccess();
  return *(v2 + 1) != 0;
}

- (NSString)tokenString
{
  selfCopy = self;
  CHSExtensionIdentity.token.getter(&v5);
  Token.rawValue.getter();

  v3 = sub_195FA0888();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CHSExtensionIdentity.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  CHSExtensionIdentity.token.getter(&v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
  sub_195FA0828();
  swift_bridgeObjectRelease_n();

  v3 = sub_195FA0888();

  return v3;
}

- (CHSExtensionIdentity)init
{
  v3 = (&self->super.isa + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  swift_beginAccess();
  *v3 = xmmword_195FADCD0;

  v5 = (&self->super.isa + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  *v5 = 0;
  v5[1] = 0;
  v7.receiver = self;
  v7.super_class = CHSExtensionIdentity;
  return [(CHSExtensionIdentity *)&v7 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CHSExtensionIdentity.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6 & 1;
}

- (NSString)extensionBundleIdentifier
{
  swift_beginAccess();

  v2 = sub_195FA0888();

  return v2;
}

- (NSString)containerBundleIdentifier
{
  v2 = self + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_195FA0888();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)deviceIdentifier
{
  v2 = self + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_195FA0888();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CHSExtensionIdentity)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier deviceIdentifier:(id)deviceIdentifier
{
  v7 = sub_195FA08B8();
  v9 = v8;
  if (!bundleIdentifier)
  {
    v11 = 0;
    if (deviceIdentifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v14 = 0;
    return sub_195EB7D40(v7, v9, bundleIdentifier, v11, v12, v14);
  }

  bundleIdentifier = sub_195FA08B8();
  v11 = v10;
  if (!deviceIdentifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_195FA08B8();
  v14 = v13;
  return sub_195EB7D40(v7, v9, bundleIdentifier, v11, v12, v14);
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  extensionBundleIdentifier = [(CHSExtensionIdentity *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  containerBundleIdentifier = [(CHSExtensionIdentity *)self containerBundleIdentifier];
  [coderCopy encodeObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];

  deviceIdentifier = [(CHSExtensionIdentity *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];
}

- (CHSExtensionIdentity)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    self = [(CHSExtensionIdentity *)self initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 deviceIdentifier:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  extensionBundleIdentifier = [(CHSExtensionIdentity *)self extensionBundleIdentifier];
  BSSerializeStringToXPCDictionaryWithKey();

  containerBundleIdentifier = [(CHSExtensionIdentity *)self containerBundleIdentifier];

  if (containerBundleIdentifier)
  {
    containerBundleIdentifier2 = [(CHSExtensionIdentity *)self containerBundleIdentifier];
    BSSerializeStringToXPCDictionaryWithKey();
  }

  deviceIdentifier = [(CHSExtensionIdentity *)self deviceIdentifier];

  if (deviceIdentifier)
  {
    deviceIdentifier2 = [(CHSExtensionIdentity *)self deviceIdentifier];
    BSSerializeStringToXPCDictionaryWithKey();
  }
}

- (CHSExtensionIdentity)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  if (v5)
  {
    v6 = BSDeserializeStringFromXPCDictionaryWithKey();
    v7 = BSDeserializeStringFromXPCDictionaryWithKey();
    self = [(CHSExtensionIdentity *)self initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 deviceIdentifier:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  extensionBundleIdentifier = [(CHSExtensionIdentity *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  containerBundleIdentifier = [(CHSExtensionIdentity *)self containerBundleIdentifier];
  [coderCopy encodeObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];

  deviceIdentifier = [(CHSExtensionIdentity *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];
}

- (CHSExtensionIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    self = [(CHSExtensionIdentity *)self initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v6 deviceIdentifier:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end