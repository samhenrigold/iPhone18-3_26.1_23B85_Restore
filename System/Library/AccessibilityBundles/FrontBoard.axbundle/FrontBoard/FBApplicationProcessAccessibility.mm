@interface FBApplicationProcessAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_setSceneLifecycleState:(unsigned __int8)state;
- (void)_bootstrapAndExec;
@end

@implementation FBApplicationProcessAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FBProcess" hasInstanceMethod:@"_bootstrapAndExec" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"FBProcess" hasInstanceMethod:@"_setSceneLifecycleState:" withFullSignature:{"B", "C", 0}];
}

- (void)_bootstrapAndExec
{
  v3.receiver = self;
  v3.super_class = FBApplicationProcessAccessibility;
  [(FBApplicationProcessAccessibility *)&v3 _bootstrapAndExec];
  [(FBApplicationProcessAccessibility *)self _accessibilitySetWasJustLaunched:1];
}

- (BOOL)_setSceneLifecycleState:(unsigned __int8)state
{
  stateCopy = state;
  v18[3] = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = FBApplicationProcessAccessibility;
  v5 = [(FBApplicationProcessAccessibility *)&v16 _setSceneLifecycleState:?];
  if (stateCopy == 2)
  {
    if (_AXSApplicationAccessibilityEnabled() && [(FBApplicationProcessAccessibility *)self _accessibilityWasJustLaunched])
    {
      selfCopy = self;
      if (UIAccessibilityIsVoiceOverRunning())
      {
        bundleIdentifier = [(FBApplicationProcessAccessibility *)selfCopy bundleIdentifier];
        AXApplicationNameLabelForBundleIdentifier();
      }

      else
      {
        bundleIdentifier = [(FBApplicationProcessAccessibility *)selfCopy handle];
        [bundleIdentifier name];
      }
      v8 = ;

      v9 = [(FBApplicationProcessAccessibility *)selfCopy pid];
      if (v8)
      {
        v10 = v9;
        bundleIdentifier2 = [(FBApplicationProcessAccessibility *)selfCopy bundleIdentifier];

        if (bundleIdentifier2)
        {
          v17[0] = @"bundleID";
          bundleIdentifier3 = [(FBApplicationProcessAccessibility *)selfCopy bundleIdentifier];
          v18[0] = bundleIdentifier3;
          v18[1] = v8;
          v17[1] = @"displayName";
          v17[2] = @"pid";
          v13 = [MEMORY[0x29EDBA070] numberWithInt:v10];
          v18[2] = v13;
          v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
          UIAccessibilityPostNotification(0x1388u, v14);
        }
      }
    }

    [(FBApplicationProcessAccessibility *)self _accessibilitySetWasJustLaunched:0];
  }

  return v5;
}

@end