@interface PKInternalSettings
+ (id)sharedInstance;
- (void)forceShowImageWandOnboarding;
- (void)imageWandOnboardingDisabled;
- (void)showResetImageWandOnboardingInPalette;
@end

@implementation PKInternalSettings

+ (id)sharedInstance
{
  objc_opt_self();
  if (_MergedGlobals_173 != -1)
  {
    dispatch_once(&_MergedGlobals_173, &__block_literal_global_93);
  }

  v1 = qword_1ED6A5598;

  return v1;
}

void __36__PKInternalSettings_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = objc_alloc_init(PKInternalSettings);
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_1ED6A5598;
  qword_1ED6A5598 = v2;
}

- (void)showResetImageWandOnboardingInPalette
{
  if (result)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [standardUserDefaults BOOLForKey:@"internalSettings.drawing.showResetImageWandOnboardingInPalette"];

    return v2;
  }

  return result;
}

- (void)forceShowImageWandOnboarding
{
  if (result)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [standardUserDefaults BOOLForKey:@"PKForceShowImageWandOnboarding"];

    return v2;
  }

  return result;
}

- (void)imageWandOnboardingDisabled
{
  if (result)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [standardUserDefaults BOOLForKey:@"PKImageWandOnboardingDisabled"];

    return v2;
  }

  return result;
}

@end