@interface UIApplication(UIAccessibility)
- (double)_accessibilityMaximumAllowedOutOfBoundsPercent;
- (uint64_t)_accessibilityIsAppReadyToBeProbed;
- (void)_accessibilitySetIsDictationListeningOverride:()UIAccessibility;
- (void)setAccessibilityKeyboardKeyDispatchOverride:()UIAccessibility;
@end

@implementation UIApplication(UIAccessibility)

- (void)setAccessibilityKeyboardKeyDispatchOverride:()UIAccessibility
{
  v3 = _Block_copy(aBlock);
  __UIAccessibilitySetAssociatedObject();
}

- (double)_accessibilityMaximumAllowedOutOfBoundsPercent
{
  if (UIAccessibilityIsWidgetExtension_onceToken != -1)
  {
    UIAccessibilityIsWidgetExtension_cold_1();
  }

  result = 1.0;
  if (UIAccessibilityIsWidgetExtension_IsWidget)
  {
    return 0.5;
  }

  return result;
}

- (uint64_t)_accessibilityIsAppReadyToBeProbed
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  AXPerformSafeBlock();
  if (AXProcessIsSpringBoard())
  {
    _AXLogWithFacility(2, 0, 1, 0, 0, 0, 0, 0, 0.0, 1, @"SpringBoard not ready to be queried by its category hasn't installed.");
    v1 = 0;
  }

  else if (v8[3])
  {
    v1 = *(v4 + 24);
  }

  else
  {
    v1 = 1;
    if ((_accessibilityIsAppReadyToBeProbed_EmittedLogSpew & 1) == 0)
    {
      _AXLogWithFacility(0, 0, 1, 0, 0, 0, 0, 0, 0.0, 1, @"Couldn't determine if appDidFinishLaunching had already been called. Allowing AX queries to proceed anyway. This is a bug! This will only be logged once per process.");
      _accessibilityIsAppReadyToBeProbed_EmittedLogSpew = 1;
    }
  }

  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v7, 8);
  return v1 & 1;
}

- (void)_accessibilitySetIsDictationListeningOverride:()UIAccessibility
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_DEFAULT, "Set dictation override: %@", &v6, 0xCu);
  }

  [self _accessibilitySetRetainedValue:v4 forKey:@"_accessibilityIsDictationListeningOverride"];
}

@end