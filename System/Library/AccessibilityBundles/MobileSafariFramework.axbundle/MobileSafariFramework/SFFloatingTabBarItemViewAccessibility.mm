@interface SFFloatingTabBarItemViewAccessibility
@end

@implementation SFFloatingTabBarItemViewAccessibility

uint64_t __84___SFFloatingTabBarItemViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"configuration"];

  if (v2)
  {
    if ([v2 safeSwiftBoolForKey:@"isRetitling"])
    {
      v3 = *MEMORY[0x29EDC7598];
    }

    else
    {
      v3 = *MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F70];
    }

    v4 = [v2 safeSwiftBoolForKey:@"isSelected"];
    v5 = *MEMORY[0x29EDC7FC0];
    if (!v4)
    {
      v5 = 0;
    }

    v6 = v5 | v3;
  }

  else
  {
    v6 = *MEMORY[0x29EDC7F70];
  }

  return v6;
}

@end