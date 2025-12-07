@interface AXAudioEffectConfiguration
- (BOOL)enabled;
- (NSString)effectName;
- (NSUUID)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)setEffectName:(id)name;
- (void)setEnabled:(BOOL)enabled;
- (void)setIdentifier:(id)identifier;
- (void)set_identifier:(id)set_identifier;
@end

@implementation AXAudioEffectConfiguration

- (void)set_identifier:(id)set_identifier
{
  v4 = *(self + OBJC_IVAR___AXAudioEffectConfiguration__identifier);
  *(self + OBJC_IVAR___AXAudioEffectConfiguration__identifier) = set_identifier;
  set_identifierCopy = set_identifier;
}

- (NSUUID)identifier
{
  v3 = sub_19166B1C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  _identifier = [(AXAudioEffectConfiguration *)selfCopy _identifier];
  sub_19166B1A8();

  v10 = sub_19166B188();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (void)setIdentifier:(id)identifier
{
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B1A8();
  selfCopy = self;
  v10 = sub_19166B188();
  [(AXAudioEffectConfiguration *)selfCopy set_identifier:v10];

  (*(v5 + 8))(v8, v4);
}

- (NSString)effectName
{
  swift_beginAccess();

  v2 = sub_19166B718();

  return v2;
}

- (void)setEffectName:(id)name
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = (self + OBJC_IVAR___AXAudioEffectConfiguration_effectName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)enabled
{
  v3 = OBJC_IVAR___AXAudioEffectConfiguration_enabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___AXAudioEffectConfiguration_enabled;
  swift_beginAccess();
  *(self + v5) = enabled;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AXAudioEffectConfiguration.encode(with:)(coderCopy);
}

@end