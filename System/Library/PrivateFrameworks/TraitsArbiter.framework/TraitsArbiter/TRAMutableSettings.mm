@interface TRAMutableSettings
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAmbientPresentationSettings:(id)settings;
- (void)setOrientationSettings:(id)settings;
- (void)setUserInterfaceStyleSettings:(id)settings;
- (void)setZOrderLevelSettings:(id)settings;
@end

@implementation TRAMutableSettings

- (void)setZOrderLevelSettings:(id)settings
{
  self->super._zOrderLevelSettings = [settings copy];

  MEMORY[0x2821F96F8]();
}

- (void)setOrientationSettings:(id)settings
{
  self->super._orientationSettings = [settings copy];

  MEMORY[0x2821F96F8]();
}

- (void)setAmbientPresentationSettings:(id)settings
{
  self->super._ambientPresentationSettings = [settings copy];

  MEMORY[0x2821F96F8]();
}

- (void)setUserInterfaceStyleSettings:(id)settings
{
  self->super._userInterfaceStyleSettings = [settings copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TRASettings allocWithZone:zone];

  return [(TRASettings *)v4 initWithSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithSettings:self];
}

@end