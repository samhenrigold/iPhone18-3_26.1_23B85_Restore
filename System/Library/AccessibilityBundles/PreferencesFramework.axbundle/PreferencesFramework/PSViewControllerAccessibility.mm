@interface PSViewControllerAccessibility
- (BOOL)_accessibilityHandleNavigationControllerDidEndTransition;
@end

@implementation PSViewControllerAccessibility

- (BOOL)_accessibilityHandleNavigationControllerDidEndTransition
{
  v26[2] = *MEMORY[0x29EDCA608];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [*MEMORY[0x29EDC8008] _accessibilityValueForKey:@"applicationDidBecomeActiveDate"];
    date = [MEMORY[0x29EDB8DB0] date];
    v5 = date;
    if (v3 && ([date timeIntervalSinceDate:v3], v6 <= 1.0))
    {
    }

    else
    {
      mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:@"com.apple.Bridge"];

      if ((v9 & 1) == 0)
      {
        NSClassFromString(&cfstr_Uisplitviewcon_1.isa);
        v10 = [(PSViewControllerAccessibility *)self safeValueForKey:@"view"];
        if (v10)
        {
          v11 = v10;
          while (1)
          {
            v12 = [v11 safeValueForKey:@"_viewDelegate"];
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            superview = [v11 superview];

            v11 = superview;
            if (!superview)
            {
              return superview;
            }
          }

          v15 = v12;
          if ([v15 isCollapsed])
          {
            LOBYTE(superview) = 0;
LABEL_19:

            return superview;
          }

          objc_opt_class();
          v16 = [(PSViewControllerAccessibility *)self safeValueForKey:@"parentViewController"];
          v17 = __UIAccessibilityCastAsClass();

          navigationBar = [v17 navigationBar];
          defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
          v20 = [navigationBar _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];
          firstObject = [v20 firstObject];

          if (firstObject || (-[PSViewControllerAccessibility safeStringForKey:](self, "safeStringForKey:", @"title"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 length], v24, !v25))
          {
            v22 = v11;
          }

          else
          {
            v22 = navigationBar;
            if (!v22)
            {
              LOBYTE(superview) = 0;
              goto LABEL_18;
            }
          }

          LODWORD(superview) = *MEMORY[0x29EDC7F10];
          v26[0] = *MEMORY[0x29EDBDB28];
          v26[1] = v22;
          v23 = [MEMORY[0x29EDB8D80] arrayWithObjects:v26 count:2];
          UIAccessibilityPostNotification(superview, v23);

          LOBYTE(superview) = 1;
LABEL_18:

          goto LABEL_19;
        }
      }
    }
  }

  LOBYTE(superview) = 0;
  return superview;
}

@end