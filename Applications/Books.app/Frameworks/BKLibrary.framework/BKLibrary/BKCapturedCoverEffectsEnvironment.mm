@interface BKCapturedCoverEffectsEnvironment
+ (id)newCapturedEnvironment:(id)environment;
+ (id)newCapturedEnvironmentWithNightMode:(BOOL)mode rtlOverride:(id)override;
@end

@implementation BKCapturedCoverEffectsEnvironment

+ (id)newCapturedEnvironment:(id)environment
{
  if (!environment)
  {
    return 0;
  }

  environmentCopy = environment;
  v4 = objc_alloc_init(BKCapturedCoverEffectsEnvironment);
  -[BKCapturedCoverEffectsEnvironment setCoverEffectsContent:](v4, "setCoverEffectsContent:", [environmentCopy coverEffectsContent]);
  -[BKCapturedCoverEffectsEnvironment setCoverEffectsNightMode:](v4, "setCoverEffectsNightMode:", [environmentCopy coverEffectsNightMode]);
  coverEffectRTLOverride = [environmentCopy coverEffectRTLOverride];

  [(BKCapturedCoverEffectsEnvironment *)v4 setCoverEffectRTLOverride:coverEffectRTLOverride];
  return v4;
}

+ (id)newCapturedEnvironmentWithNightMode:(BOOL)mode rtlOverride:(id)override
{
  modeCopy = mode;
  overrideCopy = override;
  v6 = objc_alloc_init(BKCapturedCoverEffectsEnvironment);
  [(BKCapturedCoverEffectsEnvironment *)v6 setCoverEffectsNightMode:modeCopy];
  [(BKCapturedCoverEffectsEnvironment *)v6 setCoverEffectRTLOverride:overrideCopy];

  return v6;
}

@end