@interface APExtension
- (APExtension)initWithExtensionUUID:(id)d bundleIdentifier:(id)identifier;
- (BOOL)isFirstParty;
@end

@implementation APExtension

- (APExtension)initWithExtensionUUID:(id)d bundleIdentifier:(id)identifier
{
  v4 = sub_185B67AFC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  v7 = sub_185B67E4C();
  return sub_185B5B4F0(v6, v7, v8);
}

- (BOOL)isFirstParty
{
  selfCopy = self;
  v3 = _sSo11APExtensionC13AppProtectionE10firstPartySbvg_0();

  return v3 & 1;
}

@end